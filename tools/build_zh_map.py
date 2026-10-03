#!/usr/bin/env python3
"""Merge manual translations > G2 typewriter chains > G3 regex rules > G1 glyph families
into translation/zh_map.json  {id: {en, zh, source}}.

Fails (exit 1) listing any catalog id left unresolved, and any en-text that would map
to two different zh strings.
"""
import glob
import json
import re
import sys
import unicodedata

ROOT = "translation"
CAT_PATH = f"{ROOT}/audit_catalog.json"
G1_PATH = f"{ROOT}/g1_families.json"
GLOSSARY_PATH = f"{ROOT}/zh/glossary.json"
G2_PATH = f"{ROOT}/zh/g2_chains.json"
G3_PATH = f"{ROOT}/zh/g3_rules.json"
OUT_PATH = f"{ROOT}/zh_map.json"
MISSING_PATH = f"{ROOT}/zh_missing.txt"

SEC_RE = re.compile(r"§[0-9a-fl-or]")
PUA_RE = re.compile(r"[\ue000-\uf8ff]")

# G1 family skeleton replacements, keyed by family index. Families whose members are
# fully covered by G3 rules map to {} (validated: every member claimed before G1).
G1_REPLACEMENTS = {
    0: {"§l§fRolling Trait...": "§l§f抽取特质..."},
    1: {"§l§fRolling technique...": "§l§f抽取术式..."},
    2: {"§l§fPress [Sneak] to Roll Technique - You have: ": "§l§f按 [潜行] 抽取术式 - 你拥有: "},
    3: {"§4Health": "§4生命值"},
    4: {"§l§b§o-Honored-": "§l§b§o-天选-"},
    5: {},
    6: {},
    7: {"§l§5-Exotic-": "§l§5-传说-"},
    8: {"§l§7-Common-": "§l§7-普通-", "§f-[ Nothing ]-": "§f-[ 一无所有 ]-"},
    9: {"§l§2-Uncommon-": "§l§2-优秀-"},
    10: {},
    11: {},
    12: {},
}


def strip_codes(s):
    return SEC_RE.sub("", s)


def is_cjk(ch):
    return "CJK" in unicodedata.name(ch, "")


def load_json(path):
    with open(path, encoding="utf-8") as fh:
        return json.load(fh)


def main():
    catalog = load_json(CAT_PATH)
    entries = {e["id"]: e["text"] for e in catalog["entries"]}
    glossary = load_json(GLOSSARY_PATH)
    g2 = load_json(G2_PATH)
    g3 = load_json(G3_PATH)
    g1 = load_json(G1_PATH)
    try:
        FRAGMENTS = load_json(f"{ROOT}/zh/fragments.json")["pairs"]
    except FileNotFoundError:
        FRAGMENTS = []

    zh = {}       # id -> zh string
    source = {}   # id -> provenance

    # ---------- pass 0: manual ----------
    manual_files = sorted(glob.glob(f"{ROOT}/zh/manual_*.json"))
    manual = {}
    for mf in manual_files:
        data = load_json(mf)
        for k, v in data.items():
            if k.startswith("_"):
                continue
            i = int(k)
            if i in manual and manual[i] != v:
                sys.exit(f"manual conflict for id {k} between files")
            manual[i] = v
    for i, v in manual.items():
        if i not in entries:
            sys.exit(f"manual id {i} not in catalog")
        if isinstance(v, dict):  # {"repl": [[old, new], ...]} applied to en text
            out = entries[i]
            for pair in v["repl"]:
                if len(pair) != 2:
                    sys.exit(f"manual id {i}: bad repl pair")
                a, b = pair
                if a not in out:
                    sys.exit(f"manual id {i}: repl segment not found: {a!r}")
                out = out.replace(a, b)
            zh[i] = out
            source[i] = "manual-repl"
        else:
            zh[i] = v
            source[i] = "manual"
        for a, b in FRAGMENTS:
            zh[i] = zh[i].replace(a, b)

    # ---------- pass 1: G2 chains ----------
    def round_half_up(x):
        import math
        return int(math.floor(x + 0.5))

    for chain in g2["chains"]:
        ids = chain["ids"]
        prefix = chain["prefix"]
        body_zh = chain["body_zh"]
        pad = chain.get("pad", False)
        final_text = entries[ids[-1]]
        if not final_text.startswith(prefix):
            sys.exit(f"G2 chain {chain['name']}: final id {ids[-1]} lacks prefix")
        final_body = final_text[len(prefix):]
        if pad:
            nl = len(final_body) - len(final_body.rstrip("\n"))
            final_field = final_body[: len(final_body) - nl]
            final_visible = final_field.rstrip(" ")
            N = len(final_visible)
        else:
            final_visible = final_body
            N = len(final_visible)
        for i in ids:
            if i in zh:
                continue
            t = entries[i]
            if not t.startswith(prefix):
                sys.exit(f"G2 chain {chain['name']}: id {i} lacks prefix")
            body = t[len(prefix):]
            if pad:
                nl = len(body) - len(body.rstrip("\n"))
                field = body[: len(body) - nl]
                tail_nl = body[len(body) - nl:]
                visible = field.rstrip(" ")
                n_en = len(visible)
                if not final_visible.startswith(visible):
                    sys.exit(
                        f"G2 chain {chain['name']}: id {i} visible {visible!r} "
                        f"not a prefix of {final_visible!r}"
                    )
                n_zh = len(body_zh) if n_en == N else max(
                    1, round_half_up(len(body_zh) * n_en / N)
                )
                n_zh = min(n_zh, len(body_zh))
                pad_spaces = max(0, len(field) - n_zh)
                zh[i] = prefix + body_zh[:n_zh] + " " * pad_spaces + tail_nl
            else:
                n_en = len(body)
                if not final_visible.startswith(body):
                    sys.exit(
                        f"G2 chain {chain['name']}: id {i} body {body!r} "
                        f"not a prefix of {final_visible!r}"
                    )
                n_zh = len(body_zh) if n_en == N else max(
                    1, round_half_up(len(body_zh) * n_en / N)
                )
                n_zh = min(n_zh, len(body_zh))
                zh[i] = prefix + body_zh[:n_zh]
            source[i] = f"g2:{chain['name']}"

    # ---------- pass 2: G3 rules ----------
    rules_by_name = {r["name"]: r for r in g3["rules"]}

    rule_names_by_len = sorted(rules_by_name, key=len, reverse=True)

    def lookup_table(rule, ref, value):
        if "." in ref:
            for rname in rule_names_by_len:
                if ref.startswith(rname + "."):
                    tname = ref[len(rname) + 1:]
                    table = rules_by_name[rname]["tables"][tname]
                    break
            else:
                raise KeyError(f"bad cross-rule table ref {ref}")
        else:
            table = rule["tables"][ref]
        if value not in table:
            raise KeyError(f"table {ref} missing {value!r}")
        return table[value]

    tmpl_re = re.compile(r"\{([gt])\|([^|]+)\|(\d+)\}")

    def apply_rule(entry_id, rule, m):
        out = rule["template"]
        # {g|section|N} and {t|table|N} first
        def sub_tag(mm):
            kind, ref, gnum = mm.group(1), mm.group(2), int(mm.group(3))
            raw = m.group(gnum)
            if raw is None:
                raw = ""
            if kind == "g":
                key = strip_codes(raw).strip()
                table = glossary.get(ref, {})
                if key not in table:
                    raise KeyError(f"glossary[{ref}] missing {key!r} (id {entry_id})")
                return table[key]
            return lookup_table(rule, ref, raw)

        try:
            out = tmpl_re.sub(sub_tag, out)
        except KeyError:
            return None

        # $N group references (and $$ escape, though unused)
        def sub_group(mm):
            gnum = int(mm.group(1))
            val = m.group(gnum)
            return val if val is not None else ""

        out = re.sub(r"\$(\d)", sub_group, out)
        return out

    for rule in g3["rules"]:
        rx = re.compile(rule["pattern"])
        for i, text in entries.items():
            if i in zh:
                continue
            m = rx.match(text)
            if not m:
                continue
            got = apply_rule(i, rule, m)
            if got is not None:
                zh[i] = got
                source[i] = f"g3:{rule['name']}"

    # ---------- pass 3: G1 families ----------
    for fi, fam in enumerate(g1):
        reps = G1_REPLACEMENTS.get(fi)
        if reps is None:
            sys.exit(f"no G1 replacement config for family {fi}")
        skel = fam["skeleton"]
        for i in fam["ids"]:
            if i in zh:
                continue
            if not reps:
                continue  # expected to have been claimed by G3; left to missing report
            t = entries[i]
            if PUA_RE.sub("", t) != skel:
                sys.exit(f"G1 family {fi}: id {i} does not reduce to skeleton")
            out = t
            for a, b in reps.items():
                if a not in out:
                    sys.exit(f"G1 family {fi}: id {i} missing expected segment {a!r}")
                out = out.replace(a, b)
            zh[i] = out
            source[i] = f"g1:family{fi}"

    # ---------- consistency: same en -> same zh ----------
    by_en = {}
    for i, text in entries.items():
        if i in zh:
            by_en.setdefault(text, {})[zh[i]] = by_en.get(text, {}).get(zh[i], []) + [i]
    conflicts = {e: m for e, m in by_en.items() if len(m) > 1}
    if conflicts:
        for e, m in list(conflicts.items())[:20]:
            print("CONFLICT en:", repr(e))
            for z, ids in m.items():
                print("   zh:", repr(z), "ids:", ids)
        sys.exit(f"{len(conflicts)} en-texts map to multiple zh values")

    # ---------- report ----------
    missing = sorted(set(entries) - set(zh))
    with open(MISSING_PATH, "w", encoding="utf-8") as fh:
        for i in missing:
            fh.write(f"[{i}] {entries[i]}\n")
    with open(OUT_PATH, "w", encoding="utf-8") as fh:
        json.dump(
            {str(i): {"en": entries[i], "zh": zh[i], "source": source[i]} for i in sorted(zh)},
            fh,
            ensure_ascii=False,
            indent=1,
        )
        fh.write("\n")
    print(f"resolved {len(zh)}/{len(entries)}; missing {len(missing)} -> {MISSING_PATH}")
    return 0 if not missing else 1


if __name__ == "__main__":
    sys.exit(main())

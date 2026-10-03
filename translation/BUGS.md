# Jujutsu Awakening Addon — 原版 Bug 报告（汉化过程中发现，未修复）

按用户要求：汉化**不**修改任何玩法、数值或 Bug，以下仅作记录。所有问题均存在于
`New-Jujutsu-Awakening-Addon-MCPE-Behavior-26.mcaddon` + `New-Jujutsu-Awakening-Addon-MCPE-Resource-26.mcaddon`
（Release `MC`，v26.32 对应包）原包中，汉化包逐字保留。

## A. 严格 JSON 解析失败（74 个文件，原版即如此）

Bedrock 的 JSON 解析器比标准宽松，部分文件也许仍能被游戏容忍加载，但按严格 JSON
（AGENTS.md 要求“无注释、无尾随逗号”）是非法的。完整清单见
`translation/audit_catalog.json` 的 `json_errors` 字段，按目录统计：

| 目录 | 数量 | 典型错误 |
| --- | --- | --- |
| `RP/attachables/` | 41 | 文件头非法内容（`Expecting value: line 1 column 1`，疑似 UTF-16/垃圾字节或非 JSON 头） |
| `BP/entities/` | 23 | 尾随逗号（`Expecting property name enclosed in double quotes`，如 shikigami 系列 wolf/ox/deer/serpent/toad/maxelephant/nue/totality 第 119–125 行）；`riko_amanai.json` 第 58 行多余引号/缺逗号；`villager.json` 第 639 行非法值；`wither_skull.json` 第 57 行尾随逗号 |
| `RP/entity/` | 4 | 同上类解析错误 |
| `BP/spawn_rules/` | 2 | `azureflames_curse.json` / `centipede_curse.json` 第 14 行缺逗号 |
| `BP/loot_tables/` | 1 | `ancient_city_ice_box.json` 第 17 行缺逗号 |
| `RP/animation_controllers/` | 1 | `agito.animations_controllers false.json` 第 1 行属性名非法（且文件名含空格 "false"） |
| `RP/render_controllers/` | 1 | 解析错误 |
| `RP/ui/` | 1 | 解析错误 |

> 影响评估：Bedrock 对实体/attachable 的 JSON 容忍度较高，但若某文件属于“整个 JSON
> 都非法”的类型（如 attachables 头部垃圾字节），对应外观/挂接可能静默失效。
> 未在真机逐项验证，仅报告。

## B. 玩家可见文本中的明显笔误/缺陷（原样保留）

1. **创造核心（Creation Core id 1874）**掉率 lore：`Relic 40% + Special 30% + Unique 10% + Sacred 5% + Omega 1% = 86%`，合计不足 100%，剩余 14% 未说明。
2. **究极死亡之镰（id 1896）** lore 结尾有一个游离的英文单引号 `'`。
3. **日下部的武士刀（id 1997）**技能名 `Evening Moon Sword Drawing: Judgement Cuts§` —— 结尾的 `§` 悬空（没有颜色码），游戏中会在该技能名后渲染一个裸 `§`。
4. **咒言卡片（id 1962）**：`§9- Forces the to be launched away...` 缺主语（应为 “Forces the target ...”）。
5. **空间踢卡片（id 1926）**：消耗行结尾多了一个 `]`：`§7100 Cursed Energy §g]]`。
6. **设置界面（id 2016）**：按钮文案残留开发占位符 `button10`。
7. 拼写错误（已在译文中按语义正常翻译）：`percieve`（1940）、`recieve`（1949）、`attatched`（1984）、`dispell`（1866–1869）、`civillian`（1887）、`Spacial`（应为 Spatial，1923/1924 等多处）、`infront`（1899）、`atleast`、`inbetween`（1962）、`Forcefully`（FTB 等）、`Jujutsu Jumping` 卡片 `Beyblade` 等大小写混杂（`focus strike`/`Focus Strike` 同卡片不一致，1833）。
8. **任务文本（1202/1203）**：`...eliminate it.!` 句点多了一个感叹号。
9. **受指者爆发咒力卡（1858）**：`Sneak + Click to Advance` 行没有标注其他卡片都有的 `[ Cost: 10 Invest Points ]`，与其他术式卡格式不一致（也可能是故意，免费推进，未核实）。
10. **0.2 秒领域（1928）**与真人卡片 1841 的 `0.2 Second Domain Expansion` 命名不一致（`Domain` vs `Domain Expansion`），属风格问题。
11. id **1856/1874 等**个别 lore 行尾部多余空格；多个卡片同段落中英文标点混用（不影响功能）。

## C. 结构/工程层面的注意事项

1. **BP 实体目录存在大量复制残件**：`black_wolf - Copy.json` 等 4 个 `*- Copy*.json` 重复实体文件（且都带尾随逗号错误），以及 `RP/animation_controllers/agito.animations_controllers false.json` 这种名字含 ` false` 的文件，疑似作者误提交，建议作者清理。
2. **2037「毁灭碎石」投射物**在游戏中显示为物品实体名称，无对应合成 —— 属正常设计，仅备注。
3. `2019` 特殊任务菜单只有一个可选项，其余 `Coming Soon`：功能未完，非本次范围。
4. **`2101–2104`** lang 行使用字面 `\n`（两个字符）作为换行，依赖 lang 渲染特性；
   这是 lang 文件合法的转义写法，但容易在二次编辑时被改成真换行从而失效，提请作者注意。
5. Release `MC` 当前只挂有 BP/RP 两个资产；此前仓库工作流引用的
   `Jujutsu-Awakening-Complete-26.mcaddon` 已不存在于该 Release（差异仅备注）。

## D. 汉化过程中确认的非问题

- 标题画面 PUA 字形（\ue000–\uf8ff）动画帧依赖 RP 自定义字体，保留原样，汉化不受影响。
- `§k???`（2222–2224）为乱码占位文本，是刻意的隐藏物品名。
- 彩蛋/真名（Heroic Productions、XeroSCOOF、Blue Lemon、Magroic、ButterJaffa、Frogdog、Soulking、GlitchyTurtle、Neymar、Dack、Snub、Miniroic、Nacker 等）按惯例保留拉丁原文。
- `button10` 未“臆造翻译”，原样保留并登记为 B-6。

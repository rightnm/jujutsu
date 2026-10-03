# AI 接手指南：Jujutsu 基岩版模组

> 本文件是本仓库后续 AI/开发者的长期工作说明。每次完成有意义的调查、设计或实现后，请更新本文，让知识逐步沉淀，而不是只留在对话里。

## 1. 项目基本信息

- 项目名：`jujutsu`
- 项目类型：Minecraft（我的世界）**基岩版**模组 / Add-On
- 用户目标平台：**基岩版 26.32，Android 设备**
- 当前状态：仓库处于初始化阶段，功能与目录结构尚待逐步建立。
- 首要目标：在目标版本和 Android 真机上稳定运行，其次才是增加复杂效果。

> 注意：不要擅自把本项目按 Java 版模组实现。不要引入 Forge、Fabric、NeoForge、Bukkit/Spigot API 或 Java 版命令格式。

## 2. 后续 AI 的工作原则

1. **先调查，再修改**：开始任务前阅读 `README.md`、本文、`manifest.json`（出现后）以及相关资源包/行为包文件。
2. **小步迭代**：一次只实现或优化一个可验证目标，避免在没有真机验证时进行大规模重构。
3. **兼容优先**：仅采用目标基岩版可用的组件、事件、命令、JSON schema 和 Script API。若版本号或 API 支持范围不明确，明确记录假设，不要伪造结论。
4. **Android 性能优先**：控制高频 tick 脚本、实体数量、粒子数量、动画复杂度、纹理尺寸和内存占用；避免每 tick 全世界扫描实体。
5. **优雅降级**：视觉效果和音效失败时不应破坏核心玩法；实验性 API 应隔离并注明。
6. **不破坏存档**：修改实体 identifier、组件结构、动态属性或记分板目标前，考虑旧世界迁移与兼容。
7. **可验证交付**：每项改动都应给出复现步骤、预期结果，并尽可能运行 JSON 校验、脚本检查或自动化测试。
8. **不要覆盖用户内容**：不确定资源用途时先保留并说明；禁止仅为了“整理”而删除可用资产。

## 3. 推荐的项目结构

项目开始实现后，优先采用清晰的基岩版 Add-On 结构（可按实际工具链调整）：

```text
jujutsu/
├─ behavior_pack/           # 行为包
│  ├─ manifest.json
│  ├─ entities/
│  ├─ items/
│  ├─ recipes/
│  ├─ functions/
│  └─ scripts/              # 仅在确有需要且版本支持时使用
├─ resource_pack/           # 资源包
│  ├─ manifest.json
│  ├─ textures/
│  ├─ models/
│  ├─ animations/
│  ├─ animation_controllers/
│  ├─ sounds/
│  └─ texts/
├─ docs/                    # 设计、兼容性、测试记录
├─ tools/                   # 校验或打包脚本
├─ AGENTS.md
└─ README.md
```

约定：

- 行为包和资源包使用不同 UUID；升级包版本时保持 UUID 稳定。
- 自定义 identifier 使用统一命名空间；正式确定后在本文记录，避免后期冲突。
- 文件名、identifier、事件名尽量使用小写英文和下划线。
- Android 路径可能区分大小写，资源引用的大小写必须与文件完全一致。
- 不提交临时导出物、缓存、重复压缩包或无来源的大体积素材。

## 4. 基岩版与 Android 特别检查项

每次新增功能时至少确认：

- [ ] 使用的是 Bedrock JSON/命令/API，而非 Java Edition 语法。
- [ ] `manifest.json` 的 `format_version`、模块、依赖和 UUID 合法。
- [ ] 行为包与资源包依赖关系正确，版本数组一致。
- [ ] JSON 为严格 JSON：无注释、无尾随逗号、编码为 UTF-8。
- [ ] 资源路径与文件名大小写完全一致。
- [ ] 触屏操作可完成核心交互，不依赖键盘快捷键或精准鼠标悬停。
- [ ] 中低端 Android 设备上不会因粒子、实体或循环脚本造成明显掉帧。
- [ ] 新建世界和已有测试世界均完成验证。
- [ ] 退出并重新进入世界后，状态仍然正确。
- [ ] 多人环境中的服务端/客户端职责已考虑（若该功能涉及多人）。

## 5. 优化优先级

后续优化按以下顺序处理：

1. 无法导入、加载报错、崩溃或存档损坏。
2. 核心玩法逻辑错误、物品/技能无法使用。
3. Android 卡顿、过热、耗电和内存问题。
4. 联机同步、重进世界后的状态持久化问题。
5. 操作手感、反馈、数值平衡。
6. 模型、纹理、动画、粒子和音效品质。
7. 代码与资源结构整理。

性能实现建议：

- 用事件驱动代替持续轮询；必须轮询时降低频率并缩小查询范围。
- 缓存可复用结果，不重复解析或遍历相同数据。
- 给技能粒子、召唤物和范围检测设置硬上限与冷却。
- 避免大量永久 ticking area、常驻实体和全局动画控制器。
- 纹理优先采用满足视觉需求的最小尺寸，并评估透明纹理的 overdraw。
- 优化前记录可复现的场景；优化后使用相同场景对比。

## 6. 测试与交付格式

后续 AI 完成任务后，应在回复和必要的文档中说明：

- 改了什么文件、解决了什么问题。
- 目标版本与测试环境；若未能在 Android 真机测试，必须明确写“未真机验证”。
- 导入/启用行为包和资源包的方法。
- 最短复现步骤与预期表现。
- 已知限制、兼容性风险和下一步建议。

建议逐步建立：

- `docs/TESTING.md`：导入、测试世界配置、测试用例和回归清单。
- `docs/COMPATIBILITY.md`：目标版本、实验性开关、API 依赖和已知设备问题。
- `docs/DESIGN.md`：术式、技能、物品、实体与数值设计。
- 自动化 JSON/schema 校验与可重复的 `.mcaddon` 打包脚本。

## 7. 待确认事项

后续 AI 不应自行臆测以下信息；获得用户确认后更新本文：

- “基岩版 26.32”的完整版本显示与平台渠道（正式版/预览版）。
- 模组具体主题、玩法范围与首个要实现的功能。
- 是否允许启用实验性玩法、Beta API 或 Script API。
- 目标 Android 设备性能档位及最低可接受帧率。
- 是否需要联机/服务器兼容。
- 项目命名空间、显示名称、作者信息和许可证。
- 用户已有的模型、贴图、音频、代码及其授权来源。

## 8. 项目知识与变更日志（请持续补充）

新增记录时写日期、结论、证据/测试方式和影响，不要只写模糊描述。

| 日期 | 类别 | 记录 |
|---|---|---|
| 2026-10-03 | 初始化 | 建立 AI 接手指南。已知目标为 Minecraft 基岩版 26.32、Android；仓库暂未包含实际模组文件。 |

### 已确认的技术决策

- 暂无。确定命名空间、包结构、Script API 策略后补充。

### 已知问题

- 版本号“26.32”尚未核实为游戏内显示的完整版本号。
- 尚无可导入的行为包或资源包，暂时不能进行游戏内测试。

### 下一步建议

1. 向用户确认第 7 节中与首个功能直接相关的信息。
2. 确定一个最小可玩功能（MVP），再创建行为包和资源包 manifest。
3. 建立最小测试世界/导入流程并在 Android 真机验证。
4. 每次新增功能后更新本节、测试记录和兼容性记录。

## 9. 汉化（zh_CN）管线——本仓库现状（2026-10-03 建立）

本仓库的**实际模组来源**：GitHub Release `MC`（`rightnm/jujutsu`），资产为
`New-Jujutsu-Awakening-Addon-MCPE-Behavior-26.mcaddon`（BP，已随仓库提交）与
`New-Jujutsu-Awakening-Addon-MCPE-Resource-26.mcaddon`（RP，约 131 MB，**不要提交到 git**；
`.gitignore` 已忽略 `resource.mcaddon` 及打包产物）。

### 9.1 原则

- 只翻译**玩家可见文本**（lang 值、物品 display_name、mcfunction 的 tellraw/title/say、
  脚本 `ActionFormData`/`sendMessage` 字面量、RP ui 文本、manifest 名称/描述）；
  不碰 identifier、命令、函数逻辑、tag、数值、UUID、包依赖和任何 Bug。
- 原版 Bug 只记录不修复 → 见 `translation/BUGS.md`。
- 统一术语以 `translation/zh/glossary.json` 为唯一事实来源（470+ 键，技能/特质/面板用语）；
  卡片内频繁出现的操作/消耗片段由 `translation/zh/fragments.json` 全局片段表兜底（**长的在前**）。

### 9.2 工具链（全部确定，可直接重跑）

```bash
# 1) 从合并包抽取文本树（原包 → extracted_src/{BP,RP} + inventory.json）
python3 tools/extract_pack_text.py combined.mcaddon extracted_src
# 2) 审计玩家可见文本 → translation/audit_catalog.json（2240 条；json_errors 是原版 bug）
python3 tools/audit_player_text.py extracted_src translation/audit_catalog.json
# 3) 构建 zh 映射（manual > G2 链 > G3 规则 > G1 字形族；同 en 多 zh 会构建失败）
python3 tools/build_zh_map.py            # 产出 translation/zh_map.json；漏译退出码 1
# 4) 应用翻译到完整解包树（含二进制的 build/full/{Jujutsu Awakening BP,Jujutsu Awakening RP}）
python3 tools/apply_zh_map.py build/full --report build/apply_report.json
# 5) 校验（严格 JSON 与原版基线比对、manifest 依赖、node 检查 .js、资源引用大小写、重审计漏译）
python3 tools/validate_addon.py build/full build/validation_report.json
# 6) 打包（安全成员名 + 完整性自测）
python3 tools/pack_tree.py build/full Jujutsu-Awakening-zh-CN-26.mcaddon
```

### 9.3 翻译来源分层（build_zh_map 顺序）

- `translation/zh/manual_part00.json`…`part08.json`：人工条目；既支持整串，
  也支持 `{"repl": [["en 片段","zh 片段"], ...]}` 在原文上顺序替换（片段必须命中，否则构建报错）。
- `translation/zh/extra_texts.json`：audit 目录外的文本（manifest 名称/描述）。
- `translation/zh/g2_chains.json`：打字机式逐帧文本链（按可见长度等比截取中文 + 补全空格）。
- `translation/zh/g3_rules.json`：正则模板规则（cooldown、任务、评级、抽奖滚动等 30+ 族）。
- `translation/g1_families.json` + 构建器 `G1_REPLACEMENTS`：PUA 字形帧族（标题屏动画，只替文本骨架）。
- G2/G3/G1 都不会“抢先”占用 manual 已覆盖的 id（manual 最先应用）。

### 9.4 关键约定

- 术语示例：「解」Dismantle、「捌」Cleave、肢解 Dissect、不可侵 Infinity、虚式「茈」Hollow Purple、
  无量空处 Unlimited Void、伏魔御厨子 Malevolent Shrine、神炎「竈」Divine Flames、
  十种影法术、玉§8犬（颜色码内嵌时保持码位）、天与咒缚、黑闪王子、灵魂御厨 Soul Shrine、
  驱咒傀儡 Curse Warder、评级：四级/三级/二级/一级/特级、特质地名 `-普通-/-优秀-/-稀有-/-传说-/-天选-/-恶名-`。
- 操作说明统一中文版：`§7(§e右键§7)`、`§7(§e按住潜行+右键§7)`、`消耗: [ §7N 咒力 §g]` 等。
- 沙盒网络限制：`release-assets.githubusercontent.com` 被断（TLS 重置），**RP 资产下载只能在
  GitHub Actions runner 上进行**；因此完整“下载→合并→翻译→校验→打包→上传”由
  `.github/workflows/build-zh-addon.yml` 在 runner 执行（`gh workflow run build-zh-addon.yml
  --ref arena/01a1011c-jujutsu`）。本地可跑 2/3/4/5/6 步做纯文本验证。
- 交付物：`Jujutsu-Awakening-zh-CN-26.mcaddon`（上传为 Release `MC` 新资产），
  校验/应用/审计报告作为 workflow artifact `zh-build-reports`。

### 9.5 当前状态（2026-10-03）

- 2240/2240 条玩家可见文本全部有中文映射；本地纯文本树 apply 后重审计漏译 = 0，
  新增 JSON 错误 = 0（74 个原版 JSON 错误逐字保留并已记录）。
- 真机（Android 26.32）未验证；标题屏中文动画帧排版可能与原版等宽假设有出入，
  真机若观察到标题屏错位，优先检查 `translation/zh/g2_chains.json` 的 `pad` 链。

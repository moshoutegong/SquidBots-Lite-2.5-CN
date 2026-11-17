# SquidBots Lite 2.5 中文汉化版

> [!NOTE]
> 本汉化版基于 Arden 启动器提供的最新版 SquidBots Lite（2.5），并针对飞升 Arden 客户端进行了中文本地化和问题修复。部分功能依赖服务端支持，能否使用以 Arden 服务端实际提供的功能为准。
>
> 较新版本的 SquidBots Lite 也可以在 Arden 客户端加载，但部分功能可能因服务端兼容性而无法使用。**如果你玩的是 Arden，建议下载本仓库提供的版本。**

本版保留机器人管理面板和按角色独立保存设置的功能。主界面及机器人管理面板均已汉化，可用 `/sbl lang zh` 切换为中文。攻击目标按钮采用两行显示，并修复了缺少职责数据时出现问号的问题。

新功能入口：/sbl bot、/sbl spec、/sbl alts；机器人图标菜单也保留官方功能。部分银行、坐骑、天赋和账号功能需要对应服务端支持。

安装：先备份游戏目录SquidBotsLite和WTF中的同名存档，将本文件夹放入Interface/AddOns，确认目录名为SquidBotsLite。避免同时启用两版。

## 游戏内实机截图

### 小地图图标

左键点击小地图图标可显示或隐藏机器人界面，按住左键拖动可调整图标位置。图标位置和指令栏显隐状态按角色保存。

![小地图上的 SquidBots Lite 图标及鼠标悬停提示](docs/images/squidbots-minimap.png)

### 机器人指令栏

点击图标后可使用跟随、停留、攻击目标、自动开怪、集合、小号和招募等功能。再次点击图标会收起指令栏及已打开的管理窗口。

![展开后的 SquidBots Lite 机器人指令栏](docs/images/squidbots-toolbar.png)

### 招募菜单

点击指令栏的「招募」，可按坦克、治疗或输出招募，也可进入小号和专精管理。

![机器人指令栏展开的招募菜单](docs/images/squidbots-recruit-menu.png)

### 主动模式提示

鼠标悬停在「主动」按钮上，可查看主动和被动模式的区别，以及切换预设、拖动和缩放的操作提示。

![主动模式按钮的悬停提示](docs/images/squidbots-active-tooltip.png)

### 招募回复与邀请

机器人回复招募后，指令栏上方会显示邀请提示，点击「邀请」即可发出组队邀请。招募频道和机器人的私聊回复也可在聊天窗口查看。

![指令栏上方的机器人招募回复和邀请按钮](docs/images/squidbots-recruit-offers.png)

![聊天窗口中的招募消息和机器人私聊回复](docs/images/squidbots-recruit-chat.png)

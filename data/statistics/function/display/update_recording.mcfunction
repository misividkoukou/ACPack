# 更新录屏模式计分板内容
# 为每个在线玩家在 stats.display_recording 上设置固定显示值

# 设置固定文本行（通过不同玩家的分数来显示多行，但这里用统一的值）
# 由于 Minecraft 计分板只能显示 "玩家名: 分数"，我们用虚拟玩家名来显示信息

scoreboard players set "§a计分板信息模式" stats.display_recording 5
scoreboard players set "§eAreoCraft" stats.display_recording 4
scoreboard players set "§7版本:1.21.11" stats.display_recording 3
scoreboard players set "§b感谢支持!" stats.display_recording 2
scoreboard players set "§8----------------" stats.display_recording 1

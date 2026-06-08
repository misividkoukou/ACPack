# 更新录屏模式计分板内容
# 为每个在线玩家在 stats.display_recording 上设置固定显示值

# 设置固定文本行（通过不同玩家的分数来显示多行，但这里用统一的值）
# 由于 Minecraft 计分板只能显示 "玩家名: 分数"，我们用虚拟玩家名来显示信息

scoreboard players set AreoCraft_8.2 stats.display_recording 4
scoreboard players set 纯公益原版生存服务器 stats.display_recording 3
scoreboard players set 版本：1.21.11 stats.display_recording 2
scoreboard players set 审核群：176629694 stats.display_recording 1
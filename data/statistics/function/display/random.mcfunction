# 更新全局轮播计数
execute if score #stats_display stats.display matches 7 run scoreboard players set #stats_display stats.display 0
scoreboard players add #stats_display stats.display 1

# 更新录屏模式计分板内容
function statistics:display/update_recording

# 刷新每个玩家的侧边栏显示
function statistics:display/random_player

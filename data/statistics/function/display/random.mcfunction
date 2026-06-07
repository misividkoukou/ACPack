# 更新全局轮播计数
execute if score #stats_display stats.display matches 6 run scoreboard players set #stats_display stats.display 0
scoreboard players add #stats_display stats.display 1

# 刷新每个玩家的侧边栏显示
function statistics:display/random_player

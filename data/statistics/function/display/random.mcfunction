scoreboard players add #stats_display stats.display 1
execute if score #stats_display stats.display matches 6.. run scoreboard players set #stats_display stats.display 1
function statistics:display/display_sidebar
## 这个function当前功能是轮播 不是随机显示 别管名字
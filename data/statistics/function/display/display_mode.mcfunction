# 根据玩家个人设置显示计分板
# 模式: 0=关闭, 1=普通轮播, 2=固定死亡量, 3=固定挖掘量, 4=固定锄头量, 5=固定容器打开次数, 6=固定村民交易次数, 7=固定游戏时长, 8=录屏模式

# 关闭
execute if score @s stats.display_mode matches 0 run scoreboard objectives setdisplay sidebar

# 普通轮播 (由全局 #stats_display 控制)
execute if score @s stats.display_mode matches 1 run function statistics:display/display_sidebar

# 固定显示某一项
execute if score @s stats.display_mode matches 2 run scoreboard objectives setdisplay sidebar stats.player_death

execute if score @s stats.display_mode matches 3 run scoreboard objectives setdisplay sidebar stats.player_mine

execute if score @s stats.display_mode matches 4 run scoreboard objectives setdisplay sidebar stats.player_hoe

execute if score @s stats.display_mode matches 5 run scoreboard objectives setdisplay sidebar stats.player_container_use

execute if score @s stats.display_mode matches 6 run scoreboard objectives setdisplay sidebar stats.player_traded_with_villager

execute if score @s stats.display_mode matches 7 run scoreboard objectives setdisplay sidebar stats.player_gametime

execute if score @s stats.display_mode matches 9 run scoreboard objectives setdisplay sidebar stats.total_join_time

# 录屏模式: 显示固定不变的服务器信息文本，不再显示计数数据
execute if score @s stats.display_mode matches 8 run scoreboard objectives setdisplay sidebar stats.display_recording



execute as @s run scoreboard players operation total stats.total_join_time += @s stats.join_time
execute as @s run scoreboard players operation @s stats.total_join_time += @s stats.join_time
scoreboard players reset @s stats.join_time
# 加载告知
tellraw @s {text:" "}
tellraw @s [{"text":"这是你第 ",color:"aqua"},{color:"gold","score":{"name":"@s","objective":"stats.total_join_time"}},{"text":" 次加入Areocraft服务器！"},{color:"aqua","text":" 你在服务器的总在线时间为 "},{color:"gold","score":{"name":"@s","objective":"stats.player_gametime"}},{color:"aqua","text":" 小时！"}]
execute as @s run function ac:info
tellraw @s {text:" "}

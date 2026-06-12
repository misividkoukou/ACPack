# 不知道这个地方是退出后增加还是再次加入时增加，如果是后者这样就可以解决
function ac:info
execute as @s run scoreboard players operation total stats.total_join_time += @s stats.join_time
execute as @s run scoreboard players operation @s stats.total_join_time += @s stats.join_time
scoreboard players reset @s stats.join_time
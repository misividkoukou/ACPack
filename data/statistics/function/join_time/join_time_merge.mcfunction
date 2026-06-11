# 不知道这个地方是退出后增加还是再次加入时增加，如果是后者这样就可以解决
function ac:info
scoreboard players add total stats.total_join_time 1
scoreboard players add @s stats.total_join_time 1
scoreboard players reset @s stats.join_time
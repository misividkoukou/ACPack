gamemode spectator @s[team=ops]

# 将坐标保存在玩家自身的 NBT 中 (路径为 data.last_pos.x 等)
execute store result entity @s data.last_pos.x double 0.01 run data get entity @s Pos[0] 100
execute store result entity @s data.last_pos.y double 0.01 run data get entity @s Pos[1] 100
execute store result entity @s data.last_pos.z double 0.01 run data get entity @s Pos[2] 100

scoreboard players reset @s trigger

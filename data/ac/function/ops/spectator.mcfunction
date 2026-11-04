scoreboard players set @s patrol 1
gamemode spectator @s[team=ops]

# 将坐标保存在玩家自身的 score 中
execute as @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @s store result score @s pos_z run data get entity @s Pos[2] 100

scoreboard players reset @s trigger

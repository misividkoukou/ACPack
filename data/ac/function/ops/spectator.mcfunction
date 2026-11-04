scoreboard players set @s patrol 1
gamemode spectator @s[team=ops]

# 将坐标保存在玩家自身的 score 中
execute as @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @s store result score @s pos_z run data get entity @s Pos[2] 100

execute as @s run trigger trigger.particle set 1000
tellraw @s {"text":"您已开始巡查,您的粒子效果已经自动关闭!",color:green}
scoreboard players reset @s trigger

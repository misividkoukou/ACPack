execute as @s store result storage ac:pos x double 0.01 run scoreboard players get @s pos_x
execute as @s store result storage ac:pos y double 0.01 run scoreboard players get @s pos_y
execute as @s store result storage ac:pos z double 0.01 run scoreboard players get @s pos_z

execute if score @s patrol matches 1 run function ac:ops/survival_tp with storage ac:pos
execute unless score @s patrol matches 1 run tellraw @s {text:"不在巡查你按我搞嘛呢",color:red}
scoreboard players reset @s trigger
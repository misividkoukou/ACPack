#### 总调用
# 允许使用
scoreboard players enable @s trigger
# 运行
#### 这里加范围是防止玩家滥用其他数字
#### 规范一下，11到30就都留给statistics了，保不准要多加几个
execute if score @s trigger matches ..-1 run function ac:display/bar
execute if score @s trigger matches 1 run function ac:display/bar
execute if score @s trigger matches 2 run function ac:tips/_on
execute if score @s trigger matches 3 run function ac:tips/_off
execute if score @s trigger matches 4 run function ac:sweeper/break
execute if score @s trigger matches 5 run function ac:sweeper/announce
execute if score @s trigger matches 6 run function ac:display/settings
execute if score @s trigger matches 7 run function ac:kill/kill
execute if score @s trigger matches 8 run function ac:particle/particle_bar
execute if score @s trigger matches 10..20 run function ac:display/set_mode
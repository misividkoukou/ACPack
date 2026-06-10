#### 总调用
# 允许使用
scoreboard players enable @s trigger
# 运行
#### 这里加范围是防止玩家滥用其他数字
execute if score @s trigger matches ..-1 run function ac:bar
execute if score @s trigger matches 1 run function ac:bar
execute if score @s trigger matches 2 run function ac:tips/_on
execute if score @s trigger matches 3 run function ac:tips/_off
execute if score @s trigger matches 4 run function ac:sweeper/break
execute if score @s trigger matches 5 run function ac:sweeper/announce
execute if score @s trigger matches 6.. run function ac:kill/kill
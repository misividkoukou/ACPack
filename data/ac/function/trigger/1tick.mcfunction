#### 总调用
# 允许使用
scoreboard players enable @s trigger
# 运行
#### 这里加范围是防止玩家滥用其他数字
#### 1-8 面板功能, 10-20 计分板显示模式(statistics), 21-26/29 游玩教程
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
#### 游玩教程 (21=第1页 ... 26=第6页, 29=关闭)
execute if score @s trigger matches 21 run function ac:help/page1
execute if score @s trigger matches 22 run function ac:help/page2
execute if score @s trigger matches 23 run function ac:help/page3
execute if score @s trigger matches 24 run function ac:help/page4
execute if score @s trigger matches 25 run function ac:help/page5
execute if score @s trigger matches 26 run function ac:help/page6
execute if score @s trigger matches 29 run function ac:help/close
#### 清掉本次 trigger 来值，避免残留脏值
scoreboard players reset @s trigger

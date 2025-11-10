#### 总调用
# 允许使用
scoreboard players enable @s trigger
#### 这里就是你最开始的“激活”函数，可以让所有玩家第一次进服就看到你的提示
#### 这样改了以后，trigger就不能选负数了
execute unless score @s trigger.int matches 1.. run scoreboard players set @s trigger 1
# 运行
#### 这里加范围是防止玩家滥用其他数字
execute if score @s trigger matches ..-1 run function ac:tips/bar
execute if score @s trigger matches 1 run function ac:tips/bar
execute if score @s trigger matches 2 run function ac:tips/_on
execute if score @s trigger matches 3.. run function ac:tips/_off
# 循环
schedule function ac:ticks/sec300 300s replace
# 生成随机数（因为是全局的，就不能放到玩家里运行）
execute if score #random int = #random last_random run execute store result score #random int run random value 1..10
execute store result score #random int run random value 1..10
execute store result score #random last_random run scoreboard players get #random int
# 这里要选中玩家，因为计时器均为服务器执行
execute as @a[scores={trigger.int=2}] run function ac:tips/random

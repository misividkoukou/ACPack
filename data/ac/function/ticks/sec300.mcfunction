### 每5分钟执行的函数（简化版本）
## 设置循环执行
schedule function ac:ticks/sec300 300s replace

### 随机数生成（简化版）
## 生成随机数（基础版本，移除了复杂的重复检查逻辑）
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 开始随机数生成",color:"white"}]

## 直接生成一个随机数
scoreboard players set #random int 0
execute store result score #random int run random value 1..11

## 保存本次随机数
scoreboard players operation #previous_random last_random = #random last_random
scoreboard players set #random last_random 0
execute store result score #random last_random run scoreboard players get #random int

## 日志: 随机数生成完成
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 当前随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"green"}]

### 玩家提示处理
## 这里要选中玩家，因为计时器均为服务器执行
execute as @a[scores={trigger.int=2}] run function ac:tips/random

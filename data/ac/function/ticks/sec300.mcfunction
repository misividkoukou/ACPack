### 每5分钟执行的函数
## 设置循环执行
schedule function ac:ticks/sec300 300s replace

### 随机数生成
## 生成随机数（因为是全局的，就不能放到玩家里运行）
## 日志: 开始随机数生成过程
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 开始随机数生成过程",color:"white"}]

## 先生成一个随机数
scoreboard players set #random int 0
execute store result score #random int run random value 1..11
## 日志: 生成了第一个随机数
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 生成的第一个随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"yellow"}]

## 如果新生成的随机数与上次相同，则重新生成
## 循环直到生成不同的随机数
## 日志: 检查是否与上次重复
if score #random int = #random last_random run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 检测到重复，重新生成随机数",color:"red"}]
execute if score #random int = #random last_random run scoreboard players set #random int 0
execute if score #random int = 0 run execute store result score #random int run random value 1..11

## 保存本次随机数，供下次比较使用
execute store result score #random last_random run scoreboard players get #random int
## 日志: 随机数生成完成
if score #random int matches 1.. run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"sec300.mcfunction - 最终随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"green"},{text:" 上次随机数:",color:"white"},{score:{name:"#random",objective:"last_random"},color:"green"}]

### 玩家提示处理
## 这里要选中玩家，因为计时器均为服务器执行
execute as @a[scores={trigger.int=2}] run function ac:tips/random

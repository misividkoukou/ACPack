### 测试简化版sec300随机数生成函数
## 欢迎信息
tellraw @s [{text:"测试简化版sec300随机数生成功能...",color:"gold"}]

## 立即执行简化版的随机数生成逻辑
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始手动触发简化版sec300随机数生成逻辑",color:"white"}]

## 复制简化后的随机数生成代码
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始随机数生成",color:"white"}]

## 直接生成一个随机数
scoreboard players set #random int 0
execute store result score #random int run random value 1..11

## 保存本次随机数
scoreboard players operation #previous_random last_random = #random last_random
scoreboard players set #random last_random 0
execute store result score #random last_random run scoreboard players get #random int

## 显示结果
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"当前随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"green"}]

## 手动触发玩家提示处理
execute as @s run function ac:tips/random

## 测试完成提示
tellraw @s [{text:"简化版sec300随机数生成测试完成。如果看到随机数输出，则说明功能正常。",color:"green"}]
tellraw @s [{text:"使用/team join debugger查看详细日志。",color:"gray"}]
tellraw @s [{text:"如果测试成功，系统将每5分钟自动执行一次随机数生成。",color:"green"}]
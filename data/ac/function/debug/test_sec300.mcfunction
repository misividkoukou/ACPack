### 测试sec300随机数生成函数
## 欢迎信息
tellraw @s [{text:"测试sec300随机数生成功能...",color:"gold"}]

## 立即执行sec300的随机数生成逻辑
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始手动触发sec300随机数生成逻辑",color:"white"}]

## 复制sec300中的随机数生成代码，但不重新调度执行
sCoreboard players set #random int 0
execute store result score #random int run random value 1..11
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"生成的第一个随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"yellow"}]

## 如果新生成的随机数与上次相同，则重新生成
execute if score #random int = #random last_random run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"检测到重复，重新生成随机数",color:"red"}]
execute if score #random int = #random last_random run scoreboard players set #random int 0
execute if score #random int = 0 run execute store result score #random int run random value 1..11

## 保存本次随机数
execute store result score #random last_random run scoreboard players get #random int
execute if score #random int matches 1.. run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"最终随机数:",color:"white"},{score:{name:"#random",objective:"int"},color:"green"},{text:" 上次随机数:",color:"white"},{score:{name:"#random",objective:"last_random"},color:"green"}]

## 测试完成提示
tellraw @s [{text:"sec300随机数生成测试完成。如果看到随机数输出，则说明功能正常。",color:"green"}]
tellraw @s [{text:"使用/team join debugger查看详细日志。",color:"gray"}]
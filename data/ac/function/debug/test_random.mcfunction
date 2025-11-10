### 测试随机数生成功能函数
## 设置说明
# 此函数用于测试随机数生成和避免连续重复的逻辑

## 日志: 开始测试随机数生成功能
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始测试随机数生成功能",color:"white"}]

## 显示当前随机数
## 日志: 显示当前随机数和上次随机数
execute store result score @s debug_temp run scoreboard players get #random int
execute store result score @s debug_last_temp run scoreboard players get #random last_random
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"当前随机数:",color:"white"},{score:{name:"@s",objective:"debug_temp"},color:"yellow"},{text:" 上次随机数:",color:"white"},{score:{name:"@s",objective:"debug_last_temp"},color:"yellow"}]

## 强制重新生成随机数并检查
## 日志: 强制重新生成随机数
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"正在触发随机数重新生成...",color:"white"}]

## 手动调用sec300函数中的随机数生成部分
# 先生成一个随机数
scoreboard players set #random int 0
execute store result score #random int run random value 1..11
## 检查并确保不重复
execute if score #random int = #random last_random run scoreboard players set #random int 0
execute if score #random int = 0 run execute store result score #random int run random value 1..11
## 保存本次随机数
execute store result score #random last_random run scoreboard players get #random int

## 日志: 显示重新生成后的随机数
execute store result score @s debug_temp run scoreboard players get #random int
execute store result score @s debug_last_temp run scoreboard players get #random last_random
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"重新生成后随机数:",color:"white"},{score:{name:"@s",objective:"debug_temp"},color:"green"},{text:" 保存的上次随机数:",color:"white"},{score:{name:"@s",objective:"debug_last_temp"},color:"green"}]

## 清理临时记分板
scoreboard players reset @s debug_temp
scoreboard players reset @s debug_last_temp

## 测试完成提示
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"随机数测试完成，请检查是否连续两次随机数不同",color:"white"}]
tellraw @s {text:"测试完成！请查看调试日志确认功能是否正常工作。",color:"green"}
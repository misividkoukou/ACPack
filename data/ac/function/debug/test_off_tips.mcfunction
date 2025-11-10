### 测试关闭Tips功能函数
## 设置说明
# 此函数用于测试关闭tips系统功能

## 日志: 开始测试关闭Tips功能
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始测试关闭Tips功能",color:"white"}]

## 测试关闭Tips
# 设置trigger值为3，关闭tips
scoreboard players set @s trigger 3
## 日志: 已设置trigger值为3
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"已设置trigger值为3，tips系统应已关闭",color:"white"}]

## 测试随机数生成功能
# 等待2秒后测试随机数生成
scoreboard players set @s trigger 2
schedule function ac:debug/test_random 2s
### 测试Tips功能函数
## 设置说明
# 此函数用于测试tips系统的开启和随机显示功能

## 日志: 开始测试Tips功能
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始测试Tips功能",color:"white"}]

## 测试开启Tips
# 设置trigger值为2，开启tips
scoreboard players set @s trigger 2
## 日志: 已设置trigger值为2
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"已设置trigger值为2，tips系统应已开启",color:"white"}]

## 测试关闭Tips
# 等待3秒后测试关闭功能
schedule function ac:debug/test_off_tips 3s
### 测试触发器功能函数
## 设置说明
# 此函数用于测试trigger触发系统是否正常工作

## 日志: 开始测试触发器功能
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始测试触发器功能",color:"white"}]

## 测试步骤
# 设置测试触发器值
scoreboard players set @s trigger 1
## 日志: 已设置trigger值为1
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"已设置trigger值为1，应显示控制面板",color:"white"}]

## 延时测试
# 等待2秒后测试其他功能
schedule function ac:debug/test_tips 2s
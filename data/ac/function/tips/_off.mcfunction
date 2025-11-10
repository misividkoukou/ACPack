### 关闭提示系统
## 日志: 开始关闭tips系统
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/_off.mcfunction - 开始关闭tips系统",color:"white"}]

## 指明完就去掉，避免反复使用
scoreboard players set @s trigger.int 3
scoreboard players reset @s trigger
## 日志: 已重置trigger分数
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/_off.mcfunction - 已设置trigger.int=3并重置trigger",color:"green"}]

## 发送关闭确认消息
## 日志: 发送确认消息
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/_off.mcfunction - 发送tips关闭确认消息",color:"white"}]
tellraw @s {text:"小提示现在已经关闭",color: "aqua"}

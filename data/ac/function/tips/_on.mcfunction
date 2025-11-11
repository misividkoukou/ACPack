### 打开提示系统
## 日志: 开始打开tips系统（重要事件，保留在debugger队伍）
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/_on.mcfunction - 开始打开tips系统",color:"white"}]

## 指明完就去掉，避免反复使用
scoreboard players set @s trigger.int 2
scoreboard players reset @s trigger
## 日志: 已重置trigger分数（移至high_freq_log队伍）
 tellraw @a[team=high_freq_log] [{text:"[ACPack_HIGH_FREQ] ",color:"blue"},{text:"tips/_on.mcfunction - 已设置trigger.int=2并重置trigger",color:"green"}]

## 发送打开确认消息
## 日志: 发送确认消息（重要事件，保留在debugger队伍）
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/_on.mcfunction - 发送tips开启确认消息",color:"white"}]
tellraw @s {text:"小提示现在已经打开",color: "aqua"}

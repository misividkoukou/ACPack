### 控制面板界面函数
## 状态设置
# 日志: 开始执行控制面板显示
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/bar.mcfunction - 开始显示控制面板",color:"white"}]

# 指明完就去掉，避免反复使用
scoreboard players set @s trigger.int 1
scoreboard players set @s trigger.int 2
# 重置trigger分数，防止无限循环显示控制面板
scoreboard players reset @s trigger
# 日志: 已重置trigger分数
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/bar.mcfunction - 已重置trigger分数，防止无限循环",color:"green"}]

# 新玩家首次进入后自动打开tips系统
scoreboard players set @s trigger 2
# 日志: 已设置trigger值为2，将自动打开tips
 tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/bar.mcfunction - 已设置trigger值为2，将自动打开tips系统",color:"white"}]

### 界面设计注释
## 设计思路
#### 都是一样的配色和纯文本，可以用 \ 来分割
#### jk的
#### tellraw @s [{text: "-----------------------------------------------------\n\
欢迎使用控制面板   你可以在这里更改很多东西\n\
下一次想要使用面板请使用: /trigger trigger set 1指令\n", color: red}, \
{text: "[打开tips]", "click_event": {action: "run_command", command: "trigger trigger set 2"}, color: green}, "   ", {text: "[关闭tips]", "click_event": {action: "run_command", command: "trigger trigger set 3"}, "color": green}, \
"-----------------------------------------------------"]

#### 最后一行颜色一致，可以继承初始格式

### 实际显示代码
## 我的实现
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"欢迎使用控制面板",color: "red"},{"text":"   "},{"text":"你可以在这里更改很多东西","color":red},{"text":"\n"},{"text":"下一次想要使用面板请使用:/trigger trigger set 1指令",color: red}]
tellraw @s [{text:"[打开tips]","click_event":{action:"run_command",command:"trigger trigger set 2"},color:green},{"text":"   "},{"text":"[关闭tips]","click_event":{action:"run_command",command:"trigger trigger set 3"},"color":green}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}


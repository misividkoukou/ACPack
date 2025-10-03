#### 指明完就去掉，避免反复使用
scoreboard players set @s trigger.int 1
scoreboard players set @s trigger.int 2

#### 都是一样的配色和纯文本，可以用 \ 来分割
#### jk的
#### tellraw @s [{text: "-----------------------------------------------------\n\
欢迎使用控制面板   你可以在这里更改很多东西\n\
下一次想要使用面板请使用: /trigger trigger set 1指令\n", color: red}, \
{text: "[打开tips]", "click_event": {action: "run_command", command: "trigger trigger set 2"}, color: green}, "   ", {text: "[关闭tips]", "click_event": {action: "run_command", command: "trigger trigger set 3"}, "color": green}, \
"-----------------------------------------------------"]

#### 最后一行颜色一致，可以继承初始格式

# 我的
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"欢迎使用控制面板",color: "red"},{"text":"   "},{"text":"你可以在这里更改很多东西","color":red},{"text":"\n"},{"text":"下一次想要使用面板请使用:/trigger trigger set 1指令",color: red}]
tellraw @s [{text:"[打开tips]","click_event":{action:"run_command",command:"trigger trigger set 2"},color:green},{text:"   "},{text:"[关闭tips]","click_event":{action:"run_command",command:"trigger trigger set 3"},"color":green}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}


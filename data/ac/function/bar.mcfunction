#### 指明完就去掉，避免反复使用
scoreboard players set @s trigger.int 1
scoreboard players reset @s trigger

#### 都是一样的配色和纯文本，可以用 \ 来分割
#### jk的
#### tellraw @s [{text: "-----------------------------------------------------\n\
欢迎使用控制面板   你可以在这里更改很多东西\n\
下一次想要使用面板请使用: /trigger trigger set 1指令\n", color: red}, \
{text: "[打开tips]", "click_event": {action: "run_command", command: "trigger trigger set 2"}, color: green}, "   ", {text: "[关闭tips]", "click_event": {action: "run_command", command: "trigger trigger set 3"}, "color": green}, \
"-----------------------------------------------------"]

#### 最后一行颜色一致，可以继承初始格式

#### 我的
tellraw @s {text:"------------ACPack Tips控制面板--------------",color:"red"}
tellraw @s [{text:"欢迎使用控制面板！",color: "yellow"},{"text":"你可以在这里操作一些数据包的功能。","color":red},{"text":"\n"},{"text":"下一次想要打开面板请使用指令: ",color: red},{"text":"/trigger trigger set 1",color:gold,"click_event":{"action":"copy_to_clipboard","value":"/trigger trigger set 1"},"hover_event":{"action":"show_text","value":"复制到剪贴板"}}]
tellraw @s [{text:"[打开Tips]",bold:true,"click_event":{action:"run_command",command:"trigger trigger set 2"},"hover_event":{"action":"show_text","value":"打开Tips"},"color":green},{"text":"   "},{text:"[关闭Tips]",bold:true,"hover_event":{"action":"show_text","value":"关闭Tips"},"click_event":{action:"run_command",command:"trigger trigger set 3"},"color":green}]
tellraw @s {text:"[清扫掉落物]",bold:true,color:green,click_event:{action:"run_command",command:"trigger trigger set 5"},hover_event:{action:"show_text",value:"启动扫地机"}}
tellraw @s {text:"-----------------------------------------------------",color:"red"}


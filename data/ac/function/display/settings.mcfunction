#### 计分板显示设置面板
#### trigger的10到35都预留给display设置用，其他功能请勿使用这些数字，以免冲突
scoreboard players set @s trigger.int 6
scoreboard players reset @s trigger

tellraw @s {text:"------------计分板显示设置--------------",color:"red"}
tellraw @s [{text:"当前模式: ",color:"yellow"},{"score":{"name":"@s","objective":"stats.display_mode"},"color":"gold"},{"text":" (0=关闭,1=轮播,2=死亡,3=挖掘,4=锄头,5=容器,6=交易,7=时长,8=录屏)",color:"gray"}]
tellraw @s [{text:"[普通轮播]",bold:true,color:green,click_event:{action:"run_command",command:"trigger trigger set 10"},hover_event:{action:"show_text",value:"普通轮播模式"}},{text:"   "},{text:"[关闭显示]",bold:true,color:red,click_event:{action:"run_command",command:"trigger trigger set 11"},hover_event:{action:"show_text",value:"关闭计分板显示"}}]
tellraw @s [{text:"[固定:死亡量]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 12"},hover_event:{action:"show_text",value:"固定显示死亡量"}},{text:"   "},{text:"[固定:挖掘量]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 13"},hover_event:{action:"show_text",value:"固定显示挖掘量"}}]
tellraw @s [{text:"[固定:锄头量]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 14"},hover_event:{action:"show_text",value:"固定显示锄头使用量"}},{text:"   "},{text:"[固定:容器]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 15"},hover_event:{action:"show_text",value:"固定显示容器打开次数"}}]
tellraw @s [{text:"[固定:交易]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 16"},hover_event:{action:"show_text",value:"固定显示村民交易次数"}},{text:"   "},{text:"[固定:时长]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 17"},hover_event:{action:"show_text",value:"固定显示游戏时长"}}]
tellraw @s [{text:"[固定:加入次数]",bold:true,color:aqua,click_event:{action:"run_command",command:"trigger trigger set 19"},hover_event:{action:"show_text",value:"固定显示加入次数"}}]
tellraw @s {text:"[录屏模式]",bold:true,color:light_purple,click_event:{action:"run_command",command:"trigger trigger set 18"},hover_event:{action:"show_text",value:"录屏模式:显示固定服务器信息"}}
tellraw @s {text:"-----------------------------------------------------",color:"red"}

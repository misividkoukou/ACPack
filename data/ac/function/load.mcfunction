#### 加载告知 ####
tellraw @a [{text:"ACPack 数据包已加载！",bold:true,color:"green"},{text:" "},{text:"ACPack v1.0.7.2 更新时间:2026/2/15",bold:false}]
tellraw @a [{text:"开发: ",color:"#FFAD33",bold:true},{text:"AreoCraft Developers",color:"#ffad33",underlined:true,hover_event:{action:"show_text",value:"点击访问源代码仓库"},click_event:{action:"open_url",url:"https://github.com/misividkoukou/ACPack"}},{text:"   "},{text:"[关于AreoCraft]",bold:true,color:"yellow",hover_event:{action:"show_text",value:"审核Q群：176629694"},click_event:{action:"open_url",url:"https://areocraft.zhangrx.top"}}]
tellraw @a {text:" "}
#### 计分板 ####
# sweeper
scoreboard objectives add sweeper_countdown dummy
scoreboard players set #sweeper sweeper_countdown -1
#first join(gametime判定)
scoreboard objectives add stats.gametime minecraft.custom:play_time
# random的菜
scoreboard objectives remove tips_random
scoreboard objectives add tips_random dummy
# 仅用于trigger
scoreboard objectives add trigger.int dummy

scoreboard objectives remove trigger
scoreboard objectives add trigger trigger

#### 计时器启用 ####
schedule function ac:ticks/300sec 1t replace
schedule function ac:ticks/1tick 1t replace

schedule function ac:ticks/1sec 1t replace

# 不知道这个地方是退出后增加还是再次加入时增加，如果是后者这样就可以解决
# 加载告知
tellraw @s {text:"欢迎回到Areocraft服务器",color:"#ddaefa"}
tellraw @s [{text:"服务器装载了ACPack数据包！",bold:true,color:"green"},{text:" "},{text:"ACPack v1.0.7.5 更新时间:2026.6.11",bold:false}]
tellraw @s [{text:"开发: ",color:"#ffad33",bold:true},{text:"misivid_koukou，Mudkeepz",color:"#ffad33",underlined:true,hover_event:{action:"show_text",value:"点击访问源代码仓库"},click_event:{action:"open_url",url:"https://github.com/misividkoukou/ACPack"}},{text:"   "},{text:"[关于AreoCraft]",bold:true,color:"yellow",hover_event:{action:"show_text",value:"审核Q群：176629694"},click_event:{action:"open_url",url:"https://areocraft.zhangrx.top"}}]
tellraw @s [{text:"[打开控制面板]","hover_event":{action:"show_text",value:"[打开控制面板]"},color:"aqua",bold:true,"click_event":{action:"run_command",command:"trigger trigger set 1"}}]
tellraw @s {text:" "}

execute as @s run scoreboard players operation total stats.total_join_time += @s stats.join_time
scoreboard players add @s stats.join_time 1
scoreboard players reset @s stats.join_time
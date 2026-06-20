#### 加载告知 ####
tellraw @s [{text:"ACPack 数据包已加载！",bold:true,color:"green"},{text:" "},{text:"ACPack v1.0.7.5 更新时间:2026.6.12",bold:false}]
tellraw @s [{text:"开发: ",color:"#FFAD33",bold:true},{text:"misivid_koukou，Mudkeepz",color:"#ffad33",underlined:true,hover_event:{action:"show_text",value:"点击访问源代码仓库"},click_event:{action:"open_url",url:"https://github.com/misividkoukou/ACPack"}},{text:"   "},{text:"[关于AreoCraft]",bold:true,color:"yellow",hover_event:{action:"show_text",value:"审核Q群：176629694"},click_event:{action:"open_url",url:"https://areocraft.zhangrx.top"}}]
tellraw @s [{text:"[打开控制面板]","hover_event":{action:"show_text",value:"[打开控制面板]"},color:"aqua",bold:true,"click_event":{action:"run_command",command:"trigger trigger set 1"}}]
tellraw @s {text:" "}
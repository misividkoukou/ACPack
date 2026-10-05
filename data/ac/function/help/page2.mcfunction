#### 游玩教程 · 第2页 / 共6页：首次进入与新人流程 ####
tellraw @s {text:"------------ACPack 游玩教程 (2/6)--------------",color:"red"}
tellraw @s [{text:"你可以好好的看一看服务器的Acpack（此数据包），它提供了很多便捷指令",color:"white"}]
tellraw @s [{text:"考核期,一般为15天左右",color:"gray"}]
tellraw @s [{text:"考核期与正式玩家没有区别",color:"gray"}]
tellraw @s [{text:"邀请入服有连坐制，正式玩家每月可以邀请一位玩家免试入群，其余需要申请",color:"red"}]
tellraw @s [{text:"更多问题可以询问管理，一般可以灵活处理",color:"gray"}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"[◀ 上一页]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 21"},hover_event:{action:"show_text",value:"回到 第1页 / 共6页"}},{text:"   "},{text:"[下一页 ▶]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 23"},hover_event:{action:"show_text",value:"进入 第3页 / 共6页"}},{text:"   "},{text:"[关闭]",color:"gray",click_event:{action:"run_command",command:"trigger trigger set 29"},hover_event:{action:"show_text",value:"关闭教程"}},{text:"   "},{text:"[返回主面板]",color:"gold",click_event:{action:"run_command",command:"trigger trigger set 1"},hover_event:{action:"show_text",value:"返回 ACPack 功能控制面板"}}]

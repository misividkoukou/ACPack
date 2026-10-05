#### 游玩教程 · 第3页 / 共6页：数据包功能一览 ####
tellraw @s {text:"------------ACPack 游玩教程 (3/6)--------------",color:"red"}
tellraw @s [{text:"数据包提供了很多功能",color:"white"}]
tellraw @s [{text:"种子查询",color:"gray"}]
tellraw @s [{text:"自杀",color:"gray"}]
tellraw @s [{text:"粒子效果",color:"gray"}]
tellraw @s [{text:"粒子效果",color:"gray"}]
tellraw @s [{text:"当然不止这么多",color:"yellow"}]
tellraw @s [{text:"[点击查看设置]",bold:true,color:"aqua",click_event:{action:"run_command",command:"trigger trigger set 6"},hover_event:{action:"show_text",value:"打开计分板显示设置面板"}}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"[◀ 上一页]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 22"},hover_event:{action:"show_text",value:"回到 第2页 / 共6页"}},{text:"   "},{text:"[下一页 ▶]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 24"},hover_event:{action:"show_text",value:"进入 第4页 / 共6页"}},{text:"   "},{text:"[关闭]",color:"gray",click_event:{action:"run_command",command:"trigger trigger set 29"},hover_event:{action:"show_text",value:"关闭教程"}},{text:"   "},{text:"[返回主面板]",color:"gold",click_event:{action:"run_command",command:"trigger trigger set 1"},hover_event:{action:"show_text",value:"返回 ACPack 功能控制面板"}}]

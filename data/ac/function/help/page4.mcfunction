#### 游玩教程 · 第4页 / 共6页：控制面板与常用指令 ####
tellraw @s {text:"------------ACPack 游玩教程 (4/6)--------------",color:"red"}
tellraw @s [{text:"控制面板是数据包的操作入口,点击下方按钮或使用指令打开。",color:"white"}]
tellraw @s [{text:"trigger set 7为自杀命令",color:"gray"}]
tellraw @s [{text:"打开面板是trigger 1",color:"gray"}]
tellraw @s [{text:"   /trigger trigger set 1",color:"gold",click_event:{action:"copy_to_clipboard",value:"/trigger trigger set 1"},hover_event:{action:"show_text",value:"点击复制到剪贴板"}},{text:"  → 打开控制面板",color:"gray"}]
tellraw @s [{text:"   /trigger trigger set 21",color:"gold",click_event:{action:"copy_to_clipboard",value:"/trigger trigger set 21"},hover_event:{action:"show_text",value:"点击复制到剪贴板"}},{text:"  → 重新打开本教程",color:"gray"}]
tellraw @s [{text:"[打开控制面板]",bold:true,color:"aqua",click_event:{action:"run_command",command:"trigger trigger set 1"},hover_event:{action:"show_text",value:"立即打开控制面板"}}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"[◀ 上一页]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 23"},hover_event:{action:"show_text",value:"回到 第3页 / 共6页"}},{text:"   "},{text:"[下一页 ▶]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 25"},hover_event:{action:"show_text",value:"进入 第5页 / 共6页"}},{text:"   "},{text:"[关闭]",color:"gray",click_event:{action:"run_command",command:"trigger trigger set 29"},hover_event:{action:"show_text",value:"关闭教程"}},{text:"   "},{text:"[返回主面板]",color:"gold",click_event:{action:"run_command",command:"trigger trigger set 1"},hover_event:{action:"show_text",value:"返回 ACPack 功能控制面板"}}]

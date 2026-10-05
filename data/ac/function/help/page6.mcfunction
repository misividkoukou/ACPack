#### 游玩教程 · 第6页 / 共6页：求助与反馈 ####
tellraw @s {text:"------------ACPack 游玩教程 (6/6)--------------",color:"red"}
tellraw @s [{text:"遇到问题找管理即可,群内提问也可以哈",color:"white"}]
tellraw @s [{text:"管理组,入服半年以上可申请",color:"gray"}]
tellraw @s [{text:"[官方文档库]",bold:true,color:"aqua",click_event:{action:"open_url",url:"https://docsareocraft.zhangrx.top/zh/help"},hover_event:{action:"show_text",value:"打开官方帮助文档"}},{text:"   "},{text:"[提交 Issue]",bold:true,color:"green",click_event:{action:"open_url",url:"https://github.com/misividkoukou/ACPack/issues"},hover_event:{action:"show_text",value:"前往 GitHub 反馈问题或投稿小贴士"}}]
tellraw @s [{text:"教程结束,祝你在 AreoCraft 玩得开心！",color:"light_purple"}]
tellraw @s {text:"-----------------------------------------------------",color:"red"}
tellraw @s [{text:"[◀ 上一页]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger trigger set 25"},hover_event:{action:"show_text",value:"回到 第5页 / 共6页"}},{text:"   "},{text:"[重新开始]",color:"yellow",click_event:{action:"run_command",command:"trigger trigger set 21"},hover_event:{action:"show_text",value:"回到 第1页 / 共6页"}},{text:"   "},{text:"[关闭]",color:"gray",click_event:{action:"run_command",command:"trigger trigger set 29"},hover_event:{action:"show_text",value:"关闭教程"}},{text:"   "},{text:"[返回主面板]",color:"gold",click_event:{action:"run_command",command:"trigger trigger set 1"},hover_event:{action:"show_text",value:"返回 ACPack 功能控制面板"}}]

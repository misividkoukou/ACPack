scoreboard players remove total stats.player_death 1
scoreboard players remove @s stats.player_death 1
tellraw @s {text:"由于玩家本次为自杀，不计入统计数据",color:"yellow",bold:true}
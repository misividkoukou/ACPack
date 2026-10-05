#### 仅当确实已计入过才回退,避免扣成负数污染总榜 ####
execute if score @s stats.player_death matches 1.. run scoreboard players remove @s stats.player_death 1
execute if score total stats.player_death matches 1.. run scoreboard players remove total stats.player_death 1
tellraw @s {text:"由于玩家本次为自杀，不计入统计数据",color:"yellow",bold:true}

#### 加载告知 ####
tellraw @a [{text:"ACPack 数据包已加载",color:"green"},{text:" "},{text:"ACPack v1.0.7-devbuild 更新时间:2026/2/14"}]
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

# 计分板显示模式: 0=关闭, 1=轮播, 2-7=固定项, 8=录屏
scoreboard objectives add stats.display_mode dummy

#### 计时器启用 ####
schedule function ac:ticks/300sec 1t replace
schedule function ac:ticks/1tick 1t replace
schedule function ac:ticks/1sec 1t replace
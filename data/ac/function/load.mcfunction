#### 加载告知 ####
function ac:info
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

# 计分板显示模式: 0=关闭, 1=轮播, 2-7,9-35=固定项, 8=录屏
scoreboard objectives add stats.display_mode dummy

#队伍设置
team add core "[CORE]"
team modify core color aqua
team add bots "[假人]"
team modify bots color gray
team add s.total "[total]"
team modify s.total color light_purple
team add ops "[ADMIN]"
team modify ops color red
team add special "[SPECIAL]"
team modify special color gold
team modify special prefix {text:"❤",color:"red"}
team modify special suffix {text:"❤",color:"red"}



#### 计时器启用 ####
schedule function ac:ticks/300sec 1t replace
schedule function ac:ticks/1tick 1t replace

schedule function ac:ticks/1sec 1t replace

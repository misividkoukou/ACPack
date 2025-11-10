# 加载提示
tellraw @a {text:"ACPack 数据包已加载",color:"green"}
# 计分板增添
# 用个通用的记分板吧
scoreboard objectives remove int
scoreboard objectives add int dummy
#scoreboard objectives remove tips_random
scoreboard objectives add last_random dummy
scoreboard players set #random last_random 0

# trigger没有了也是刷新
scoreboard objectives remove trigger
scoreboard objectives add trigger trigger
# 这里加个判定分数
scoreboard objectives add trigger.int dummy

# tag刷新 写复杂了，用不上
# 目前的函数不需要单独激活
# tick 有专门的标签，但我还是选择用计时器了，因为你的计时器挺多的
# 这里只启动了计时器，这里可以不要，或者直接function也能启动，即我后面写的
schedule function ac:ticks/tick1 1t replace
schedule function ac:ticks/sec300 2t replace
#function ac:ticks/tick1
#function ac:ticks/sec300

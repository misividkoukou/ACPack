#### 数据包初始化
## 加载提示
tellraw @a {text:"ACPack 数据包已加载",color:"green"}

### 调试系统设置
## 创建debugger队伍用于普通日志显示
team remove debugger
team add debugger
team modify debugger color dark_purple
team modify debugger seeFriendlyInvisibles false
team modify debugger collisionRule never

## 创建high_freq_log队伍用于高频日志显示
team remove high_freq_log
team add high_freq_log
team modify high_freq_log color blue
team modify high_freq_log seeFriendlyInvisibles false
team modify high_freq_log collisionRule never

## 日志: 数据包初始化完成
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"数据包初始化完成",color:"white"},{text:" | 使用"}, {text:"/team join debugger", color:"aqua"}, {text:"加入调试队伍，使用"}, {text:"/team join high_freq_log", color:"aqua"}, {text:"加入高频日志队伍"}]

### 记分板系统设置
#### 基础记分板
# 用个通用的记分板
scoreboard objectives remove int
scoreboard objectives add int dummy

#### 随机数记分板
#scoreboard objectives remove tips_random
scoreboard objectives add last_random dummy
scoreboard players set #random last_random 0

#### 触发器记分板
## trigger没有了也是刷新
scoreboard objectives remove trigger
scoreboard objectives add trigger trigger
# 这里加个判定分数
scoreboard objectives add trigger.int dummy

### 计时器设置
## tag刷新 写复杂了，用不上
# 目前的函数不需要单独激活
# tick 有专门的标签，但我还是选择用计时器了，因为你的计时器挺多的
# 这里只启动了计时器，这里可以不要，或者直接function也能启动，即我后面写的
schedule function ac:ticks/tick1 1t replace
schedule function ac:ticks/sec300 2t replace
#function ac:ticks/tick1
#function ac:ticks/sec300

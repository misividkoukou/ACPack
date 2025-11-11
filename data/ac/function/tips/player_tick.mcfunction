### 玩家提示系统控制函数
## 日志: player_tick函数开始执行（仅在high_freq_log队伍显示）
 tellraw @a[team=high_freq_log] [{text:"[ACPack_HIGH_FREQ] ",color:"blue"},{text:"tips/player_tick.mcfunction - 开始执行玩家每刻检测",color:"white"}]

#### 触发器启用
## 允许使用
scoreboard players enable @s trigger

#### 首次进入处理
## 这里就是你最开始的"激活"函数，可以让所有玩家第一次进服就看到你的提示
#### 这样改了以后，trigger就不能选负数了
## 日志: 检查是否首次进入（仅在high_freq_log队伍显示）
 tellraw @a[team=high_freq_log] [{text:"[ACPack_HIGH_FREQ] ",color:"blue"},{text:"tips/player_tick.mcfunction - 检查玩家trigger.int状态: ",color:"white"},{score:{name:"@s",objective:"trigger.int"},color:"yellow"}]
execute unless score @s trigger.int matches 1.. run scoreboard players set @s trigger 1
## 日志: 首次进入处理完成（仅在high_freq_log队伍显示）
 tellraw @a[team=high_freq_log] [{text:"[ACPack_HIGH_FREQ] ",color:"blue"},{text:"tips/player_tick.mcfunction - 首次进入处理完成",color:"green"}]

#### 触发器状态处理
## 运行
#### 这里加范围是防止玩家滥用其他数字
## 日志: 检查trigger触发值（仅在high_freq_log队伍显示）
 tellraw @a[team=high_freq_log] [{text:"[ACPack_HIGH_FREQ] ",color:"blue"},{text:"tips/player_tick.mcfunction - 当前trigger触发值: ",color:"white"},{score:{name:"@s",objective:"trigger"},color:"yellow"}]

## 仅当触发器状态改变时，在debugger队伍显示重要信息
## 根据不同的trigger值执行对应函数
execute if score @s trigger matches ..-1 run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/player_tick.mcfunction - 检测到负数trigger值，执行bar函数",color:"white"}]
execute if score @s trigger matches 1 run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/player_tick.mcfunction - 检测到trigger=1，执行bar函数",color:"white"}]
execute if score @s trigger matches 2 run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/player_tick.mcfunction - 检测到trigger=2，执行_on函数",color:"white"}]
execute if score @s trigger matches 3.. run tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"tips/player_tick.mcfunction - 检测到trigger>=3，执行_off函数",color:"white"}]

execute if score @s trigger matches ..-1 run function ac:tips/bar
execute if score @s trigger matches 1 run function ac:tips/bar
execute if score @s trigger matches 2 run function ac:tips/_on
execute if score @s trigger matches 3.. run function ac:tips/_off
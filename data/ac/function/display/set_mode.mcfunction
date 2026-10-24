# 设置玩家计分板显示模式
# 由 trigger 调用，根据 trigger 值设置对应模式
#### trigger的10到35都预留给display设置用，其他功能请勿使用这些数字，以免冲突

# 普通轮播
execute if score @s trigger matches 10 run scoreboard players set @s stats.display_mode 1
execute if score @s trigger matches 10 run scoreboard players set @s trigger.int 10
execute if score @s trigger matches 10 run tellraw @s {"text":"计分板显示已切换为: 普通轮播","color":"green"}

# 关闭
execute if score @s trigger matches 11 run scoreboard players set @s stats.display_mode 0
execute if score @s trigger matches 11 run scoreboard players set @s trigger.int 11
execute if score @s trigger matches 11 run tellraw @s {"text":"计分板显示已切换为: 隐藏","color":"red"}

# 固定: 死亡量
execute if score @s trigger matches 12 run scoreboard players set @s stats.display_mode 2
execute if score @s trigger matches 12 run scoreboard players set @s trigger.int 12
execute if score @s trigger matches 12 run tellraw @s {"text":"计分板显示已固定为: 死亡量","color":"aqua"}

# 固定: 挖掘量
execute if score @s trigger matches 13 run scoreboard players set @s stats.display_mode 3
execute if score @s trigger matches 13 run scoreboard players set @s trigger.int 13
execute if score @s trigger matches 13 run tellraw @s {"text":"计分板显示已固定为: 挖掘量","color":"aqua"}

# 固定: 锄头量
execute if score @s trigger matches 14 run scoreboard players set @s stats.display_mode 4
execute if score @s trigger matches 14 run scoreboard players set @s trigger.int 14
execute if score @s trigger matches 14 run tellraw @s {"text":"计分板显示已固定为: 锄头使用量","color":"aqua"}

# 固定: 容器
execute if score @s trigger matches 15 run scoreboard players set @s stats.display_mode 5
execute if score @s trigger matches 15 run scoreboard players set @s trigger.int 15
execute if score @s trigger matches 15 run tellraw @s {"text":"计分板显示已固定为: 容器打开次数","color":"aqua"}

# 固定: 交易
execute if score @s trigger matches 16 run scoreboard players set @s stats.display_mode 6
execute if score @s trigger matches 16 run scoreboard players set @s trigger.int 16
execute if score @s trigger matches 16 run tellraw @s {"text":"计分板显示已固定为: 村民交易次数","color":"aqua"}

# 固定: 时长
execute if score @s trigger matches 17 run scoreboard players set @s stats.display_mode 7
execute if score @s trigger matches 17 run scoreboard players set @s trigger.int 17
execute if score @s trigger matches 17 run tellraw @s {"text":"计分板显示已固定为: 游戏时长","color":"aqua"}

# 固定: 加入次数
execute if score @s trigger matches 19 run scoreboard players set @s stats.display_mode 9
execute if score @s trigger matches 19 run scoreboard players set @s trigger.int 19
execute if score @s trigger matches 19 run tellraw @s {"text":"计分板显示已固定为: 加入次数","color":"aqua"}

# 固定：放置次数
execute if score @s trigger matches 20 run scoreboard players set @s stats.display_mode 10
execute if score @s trigger matches 19 run scoreboard players set @s trigger.int 20
execute if score @s trigger matches 20 run tellraw @s {"text":"计分板显示已固定为: 放置次数","color":"aqua"}

# 录屏模式
execute if score @s trigger matches 18 run scoreboard players set @s stats.display_mode 8
execute if score @s trigger matches 18 run scoreboard players set @s trigger.int 18
execute if score @s trigger matches 18 run tellraw @s {"text":"计分板显示已切换为: 录屏模式","color":"light_purple"}

# 刷新侧边栏显示
execute as @s run function statistics:display/display_mode

# 重置并重新启用 trigger
##enable不是全局的吗，这里不需要
scoreboard players reset @s trigger

# 设置玩家计分板显示模式
# 由 trigger 调用，根据 trigger 值设置对应模式

# 普通轮播
execute if score @s trigger matches 10 run scoreboard players set @s stats.display_mode 1
execute if score @s trigger matches 10 run tellraw @s {"text":"计分板显示已切换为: 普通轮播","color":"green"}

# 关闭
execute if score @s trigger matches 11 run scoreboard players set @s stats.display_mode 0
execute if score @s trigger matches 11 run tellraw @s {"text":"计分板显示已切换为: 隐藏","color":"red"}

# 固定: 死亡量
execute if score @s trigger matches 12 run scoreboard players set @s stats.display_mode 2
execute if score @s trigger matches 12 run tellraw @s {"text":"计分板显示已固定为: 死亡量","color":"aqua"}

# 固定: 挖掘量
execute if score @s trigger matches 13 run scoreboard players set @s stats.display_mode 3
execute if score @s trigger matches 13 run tellraw @s {"text":"计分板显示已固定为: 挖掘量","color":"aqua"}

# 固定: 锄头量
execute if score @s trigger matches 14 run scoreboard players set @s stats.display_mode 4
execute if score @s trigger matches 14 run tellraw @s {"text":"计分板显示已固定为: 锄头使用量","color":"aqua"}

# 固定: 容器
execute if score @s trigger matches 15 run scoreboard players set @s stats.display_mode 5
execute if score @s trigger matches 15 run tellraw @s {"text":"计分板显示已固定为: 容器打开次数","color":"aqua"}

# 固定: 交易
execute if score @s trigger matches 16 run scoreboard players set @s stats.display_mode 6
execute if score @s trigger matches 16 run tellraw @s {"text":"计分板显示已固定为: 村民交易次数","color":"aqua"}

# 固定: 时长
execute if score @s trigger matches 17 run scoreboard players set @s stats.display_mode 7
execute if score @s trigger matches 17 run tellraw @s {"text":"计分板显示已固定为: 游戏时长","color":"aqua"}

# 录屏模式
execute if score @s trigger matches 18 run scoreboard players set @s stats.display_mode 8
execute if score @s trigger matches 18 run tellraw @s {"text":"计分板显示已切换为: 录屏模式","color":"light_purple"}

# 刷新侧边栏显示
execute as @s run function statistics:display/display_mode

# 重置并重新启用 trigger
scoreboard players reset @s trigger
scoreboard players enable @s trigger

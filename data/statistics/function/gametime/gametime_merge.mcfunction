# 将玩家的游戏时长(刻)转换为小时并累加到 stats.player_gametime
# stats.gametime 是 minecraft.custom:play_time，单位为刻 (1秒 = 20刻)
# 1小时 = 3600秒 = 72000刻

# 先将当前 play_time 刻数转换为秒 (除以 20)，再转换为小时 (除以 3600)
scoreboard players operation @s stats.gametime /= #CONSTANT_20 stats.gametime
scoreboard players operation @s stats.gametime /= #CONSTANT_hour stats.gametime

# 累加到玩家游戏时长计分板
scoreboard players operation @s stats.player_gametime += @s stats.gametime

# 重置 play_time 统计为基线(60刻=3秒,代表"已经过整小时"的余数起点),以便下次计算增量
scoreboard players set @s stats.gametime 60

# 上面的两次整数除法会向下取整,每次合并最多少计 1 刻;该误差不累积(下次合并会补回),
# 因此原有的 1201 补偿分支已移除。仅为兼容旧存档保留一次对齐,避免历史偏移留存:
execute if score @s stats.player_gametime matches 1201 run scoreboard players remove @s stats.player_gametime 1

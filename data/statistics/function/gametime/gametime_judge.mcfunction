# 检查所有玩家的 play_time，如果有增加则进行合并计算
execute as @a[scores={stats.gametime=72000..}] run function statistics:gametime/gametime_merge

# 为每个玩家根据其显示模式设置侧边栏
# 轮播模式(1)的玩家跟随全局轮播，其他模式各自处理

# 轮播模式: 使用全局 #stats_display 来切换显示
execute as @a[scores={stats.display_mode=1}] run function statistics:display/display_mode

# 固定显示/关闭/录屏模式: 各自应用自己的设置
execute as @a[scores={stats.display_mode=0}] run function statistics:display/display_mode

execute as @a[scores={stats.display_mode=2..9}] run function statistics:display/display_mode

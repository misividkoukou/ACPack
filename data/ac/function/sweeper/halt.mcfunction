## 将状态切换功能独立 延迟1t调用防止干扰判断流程
execute if score #sweeper sweeper_countdown matches 1.. run scoreboard players set #sweeper sweeper_countdown -1
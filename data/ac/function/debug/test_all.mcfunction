### 数据包功能测试主函数
## 使用说明
# 此函数用于一次性测试数据包的所有主要功能

## 欢迎信息
tellraw @s {text:"======= ACPack 数据包测试系统 =======",color:"gold"}
tellraw @s {text:"测试将自动执行一系列功能测试，请查看调试日志了解详情。",color:"gold"}

## 检查并加入debugger队伍
## 默认只加入普通调试队伍，避免过多滚动日志
team join debugger @s
## 日志: 已加入debugger队伍
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"已将测试者加入debugger队伍，可查看详细日志",color:"white"}]
tellraw @s [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"如需查看更详细的执行流程，请使用",color:"white"},{text:" /team join high_freq_log",color:"aqua"}]

## 初始化调试临时记分板
scoreboard objectives add debug_temp dummy
scoreboard objectives add debug_last_temp dummy

## 开始执行测试
tellraw @s {text:"开始执行测试...",color:"green"}
tellraw @a[team=debugger] [{text:"[ACPack_DEBUG] ",color:"dark_purple"},{text:"开始执行完整功能测试流程",color:"white"}]

## 启动测试序列
schedule function ac:debug/test_trigger 1s

## 测试完成后的清理提示
tellraw @s {text:"测试将在约10秒后完成，测试过程中请勿关闭游戏。",color:"yellow"}
tellraw @s {text:"====================================",color:"gold"}
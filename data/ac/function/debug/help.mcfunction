### 调试系统使用说明

## 欢迎信息
tellraw @s {text:"======= ACPack 调试系统使用说明 =======",color:"gold"}

## 调试功能介绍
### 调试日志系统
#### 如何查看调试日志
tellraw @s [{text:"1. 普通调试日志（重要事件和关键信息）：",color:"green"},{text:" /team join debugger @s",color:"aqua"}]
tellraw @s [{text:"2. 高频详细日志（包含每刻执行的详细信息）：",color:"green"},{text:" /team join high_freq_log @s",color:"aqua"}]
tellraw @s [{text:"3. 离开对应队伍停止查看日志：",color:"green"},{text:" /team leave @s",color:"aqua"}]

### 2. 测试功能使用
#### 运行完整测试流程
tellraw @s [{text:"运行完整测试：",color:"green"},{text:" /function ac:debug/test_all",color:"aqua"}]
tellraw @s {text:"这将测试触发器、tips开关和随机数生成等全部功能。",color:"gray"}

#### 单独测试功能
tellraw @s [{text:"单独测试触发器：",color:"green"},{text:" /function ac:debug/test_trigger",color:"aqua"}]
tellraw @s [{text:"单独测试tips功能：",color:"green"},{text:" /function ac:debug/test_tips",color:"aqua"}]
tellraw @s [{text:"关闭tips功能：",color:"green"},{text:" /function ac:debug/test_off_tips",color:"aqua"}]
tellraw @s [{text:"单独测试随机数：",color:"green"},{text:" /function ac:debug/test_random",color:"aqua"}]
tellraw @s [{text:"测试简化版sec300随机数生成：",color:"green"},{text:" /function ac:debug/test_sec300_simple",color:"aqua"}]
tellraw @s [{text:"（推荐使用，移除了导致问题的复杂逻辑）",color:"gray"}]

## 日志说明
### 日志颜色含义
tellraw @s {text:"日志颜色含义：",color:"gold"}
tellraw @s [{text:"- ",color:"white"},{text:"紫色前缀：",color:"dark_purple"},{text:"debugger队伍日志标识",color:"white"}]
tellraw @s [{text:"- ",color:"white"},{text:"蓝色前缀：",color:"blue"},{text:"high_freq_log队伍日志标识",color:"white"}]
tellraw @s [{text:"- ",color:"white"},{text:"绿色文本：",color:"green"},{text:"成功/完成信息",color:"white"}]
tellraw @s [{text:"- ",color:"white"},{text:"黄色文本：",color:"yellow"},{text:"数值/状态信息",color:"white"}]
tellraw @s [{text:"- ",color:"white"},{text:"红色文本：",color:"red"},{text:"警告/异常信息",color:"white"}]

## 测试注意事项
tellraw @s {text:"测试过程中请注意：",color:"yellow"}
tellraw @s {text:"- 测试不会影响正常游戏功能",color:"gray"}
tellraw @s {text:"- 测试完成后调试记分板会自动清理",color:"gray"}
tellraw @s {text:"- 查看详细执行流程请加入high_freq_log队伍",color:"gray"}
tellraw @s {text:"- 仅需了解重要事件请加入debugger队伍",color:"gray"}
tellraw @s {text:"- 如遇问题，请查看调试日志中的详细信息",color:"gray"}

tellraw @s {text:"======================================",color:"gold"}
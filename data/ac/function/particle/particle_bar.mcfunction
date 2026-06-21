scoreboard players set @s trigger.int 8
scoreboard players reset @s trigger
tellraw @s {text:"------------ACPack 粒子控制面板--------------",color:"red"}
tellraw @s [{text:"欢迎来到粒子模式设置菜单！",color: "aqua"},{"text":"你可以在这里选择一些粒子效果来装饰自己。","color":aqua},{"text":"\n"},{"text":"使用方法: ",color: red},{"text":"点击下方按钮选择你想要的粒子效果，","color":aqua}]
tellraw @s [{text:"[水流]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 1"},"hover_event":{"action":"show_text","value":"点击切换水流粒子效果"},"color":aqua},{"text":"   "},{text:"[火焰]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 2"},"hover_event":{"action":"show_text","value":"点击切换火焰粒子效果"},"color":red},{"text":"   "},{text:"[音符]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 3"},"hover_event":{"action":"show_text","value":"点击切换音符粒子效果"},"color":gold}]

# 特殊粒子
tellraw @s[name=misivid_koukou] [{text:"[樱花]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 100"},"hover_event":{"action":"show_text","value":"点击切换樱花粒子效果"},"color":green}]
tellraw @s[team=special] [{text:"[心形]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 101"},"hover_event":{"action":"show_text","value":"点击切换心形粒子效果"},"color":green}]
tellraw @s[team=ops] [{text:"[铜火]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 102"},"hover_event":{"action":"show_text","value":"点击切换铜火粒子效果"},"color":green}]
tellraw @s[name=misivid_koukou] [{text:"[心形]",bold:true,"click_event":{action:"run_command",command:"trigger trigger.particle set 103"},"hover_event":{"action":"show_text","value":"点击切换心形粒子效果"},"color":green}]
tellraw @s {text:"------------------------------------------",color:"red"}

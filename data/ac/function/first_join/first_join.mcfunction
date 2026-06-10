tag @s add tips_on
tellraw @s [{text:" "}]
tellraw @s [{text:"欢迎您来到Areocraft服务器,这个教程将会让你更加了解服务器,但可惜的是",color:green},{text:"\n"},{text:"koukou咕了 :(",color:"gold"}]
tellraw @s {text:" "}
tellraw @s [{text:"小提示已经自动开启,想要关闭请通过教程熟悉！",color:aqua},{text:"打开控制面板请用指令："},{"text":"/trigger trigger set 1",color:gold,"click_event":{"action":"copy_to_clipboard","value":"/trigger trigger set 1"},"hover_event":{"action":"show_text","value":"复制到剪贴板"}}]
tag @s remove first_join
scoreboard players set @s stats.gametime 61
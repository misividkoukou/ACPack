scoreboard players set @s trigger.int 5
scoreboard players reset @s trigger

schedule function ac:sweeper/start 1t replace
execute if score #sweeper sweeper_countdown matches -1 run tellraw @a [{text:"[扫地机] 扫地机即将在15s后出击,如要阻止请点击取消按钮！",color:red},{text:"   "},{text:"[取消]",bold:true,color:"yellow","click_event":{action:"run_command",command:"trigger trigger set 4"},hover_event:{action:"show_text",value:"阻止扫地机行动"}}]
execute if score #sweeper sweeper_countdown matches -1 run me 启动了扫地机。
execute if score #sweeper sweeper_countdown matches 1.. run tellraw @s {text:"[扫地机] 扫地机不在待机状态，无法启动！",color:red}

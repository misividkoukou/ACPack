scoreboard players set @a patrol 0
gamemode survival @s[team=ops]
$tp @s $(x) $(y) $(z)
tellraw @s [{text:"欢迎回来 :)",color:light_purple},{text:"  "},{text:"[粒子菜单]",color:"gold",hover_event:{action:show_text,value:{text:"使用我心爱的粒子效果~ ~",color:gold}}}]
data remove storage ac:pos x
data remove storage ac:pos y
data remove storage ac:pos z
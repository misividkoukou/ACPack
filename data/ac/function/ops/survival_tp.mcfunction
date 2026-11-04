scoreboard players set @a patrol 0
gamemode survival @s[team=ops]
$tp @s $(x) $(y) $(z)
tellraw @s {text:"欢迎回来 :)",color:light_purple}
data remove storage ac:pos x
data remove storage ac:pos y
data remove storage ac:pos z
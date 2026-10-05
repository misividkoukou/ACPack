#### 首次加入初始化 ####
scoreboard players set @s stats.gametime 60
scoreboard players set @s stats.player_gametime 0

tag @s add tips_on
# 新玩家默认使用普通轮播模式
scoreboard players set @s stats.display_mode 1
scoreboard players set @s stats.total_join_time 1

tellraw @s [{text:" "}]
tellraw @s [{text:"欢迎您来到Areocraft服务器！下面是为新玩家准备的游玩教程。",color:"green"}]
tellraw @s [{text:"小提示已经自动开启,可以在教程里了解如何关闭。",color:"aqua"}]
tellraw @s {text:" "}

scoreboard players set @s first_join 1

#### 自动弹出游玩教程(第1页) ####
#### 若不想首次加入自动弹出,注释掉下面这一行即可 ####
function ac:help/main

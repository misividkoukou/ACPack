scoreboard players operation @s stats.gametime /= #CONSTANT_hour stats.gametime
scoreboard players operation @s stats.player_gametime += @s stats.gametime

scoreboard players set @s stats.gametime 0
## 处理还有问题，这个模块暂时没有完善 
## 或许后面会换个实现方法
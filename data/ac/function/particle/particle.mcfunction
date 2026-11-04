# 大众化
execute as @s[tag=particle_water,scores={trigger.particle.int=1},gamemode=survival] at @s run particle falling_water ~ ~ ~ 0 0 0 0.001 3
execute as @s[tag=!particle_water,scores={trigger.particle.int=1},gamemode=survival] run function ac:particle/error
execute as @s[tag=particle_flame,scores={trigger.particle.int=2},gamemode=survival] at @s run particle small_flame ~ ~ ~ 0 0 0 0.001 2
execute as @s[tag=!particle_flame,scores={trigger.particle.int=2},gamemode=survival] run function ac:particle/error
execute as @s[tag=particle_note,scores={trigger.particle.int=3},gamemode=survival] at @s run particle note ~ ~ ~ 0 0 0 0.8 1
execute as @s[tag=!particle_note,scores={trigger.particle.int=3},gamemode=survival] run function ac:particle/error
# 特殊粒子
execute as @s[name=misivid_koukou,scores={trigger.particle.int=100},gamemode=survival] at @s run particle cherry_leaves ~ ~ ~ 0 0 0 1 1
execute as @s[scores={trigger.particle.int=100},name=!misivid_koukou,gamemode=survival] run function ac:particle/error

execute as @s[team=special,scores={trigger.particle.int=101},gamemode=survival] at @s run particle heart ~ ~ ~ 0 0 0 0.001 1
execute as @s[team=!special,scores={trigger.particle.int=101},gamemode=survival] run function ac:particle/error

execute as @s[team=ops,scores={trigger.particle.int=102},gamemode=survival] at @s run particle copper_fire_flame ~ ~ ~ 0 0 0 0.001 2
execute as @s[team=!ops,scores={trigger.particle.int=102},gamemode=survival] run function ac:particle/error

execute as @s[name=misivid_koukou,scores={trigger.particle.int=103},gamemode=survival] at @s run particle heart ~ ~ ~ 0 0 0 0.001 1
execute as @s[scores={trigger.particle.int=103},name=!misivid_koukou,gamemode=survival] run function ac:particle/error

execute as @s[scores={trigger.particle.int=1000}] run function ac:particle/close
#mix particle

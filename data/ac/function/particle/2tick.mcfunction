scoreboard players enable @s trigger.particle
execute if score @s trigger.particle matches 1.. run function ac:particle/merge
execute as @a run function ac:particle/particle

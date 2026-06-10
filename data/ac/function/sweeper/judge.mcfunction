execute if score #sweeper sweeper_countdown matches 0 run function ac:sweeper/clean
execute if score #sweeper sweeper_countdown matches 1 run tellraw @a [{text:"[扫地机] 将在1秒后出动!",color:"red"}]
execute if score #sweeper sweeper_countdown matches 2 run tellraw @a [{text:"[扫地机] 将在2秒后出动!",color:"red"}]
execute if score #sweeper sweeper_countdown matches 3 run tellraw @a [{text:"[扫地机] 将在3秒后出动!",color:"red"}]
execute if score #sweeper sweeper_countdown matches 4 run tellraw @a [{text:"[扫地机] 将在4秒后出动!",color:"red"}]
execute if score #sweeper sweeper_countdown matches 5 run tellraw @a [{text:"[扫地机] 将在5秒后出动!",color:"red"}]
execute if score #sweeper sweeper_countdown matches 10 run tellraw @a [{text:"[扫地机] 将在10秒后出动!",color:"red"}]

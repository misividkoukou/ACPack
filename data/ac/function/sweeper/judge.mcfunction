execute if score #sweeper sweeper_countdown matches 0 run function ac:sweeper/clean
execute if score #sweeper sweeper_countdown matches 1 run tellraw @a [{text:"[扫地机] 还有1秒出动",color:"red"}]
execute if score #sweeper sweeper_countdown matches 2 run tellraw @a [{text:"[扫地机] 还有2秒出动",color:"red"}]
execute if score #sweeper sweeper_countdown matches 3 run tellraw @a [{text:"[扫地机] 还有3秒出动",color:"red"}]
execute if score #sweeper sweeper_countdown matches 5 run tellraw @a [{text:"[扫地机] 还有5秒出动",color:"red"}]
execute if score #sweeper sweeper_countdown matches 10 run tellraw @a [{text:"[扫地机] 还有10秒出动",color:"red"}]

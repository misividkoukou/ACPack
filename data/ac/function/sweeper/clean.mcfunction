scoreboard players set #sweeper sweeper_countdown -1
playsound entity.villager.ambient
kill @e[type=item]
tellraw @a {text:"[扫地机] 扫地鸡已完成任务,打道回府啦 :）",color: "light_purple"}

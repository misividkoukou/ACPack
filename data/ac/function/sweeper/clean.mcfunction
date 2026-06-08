scoreboard players set #sweeper sweeper_countdown -1
playsound entity.villager.ambient
kill @e[type=item]
tellraw @a {text:"[扫地鸡] 已完成任务,打道回府啦 :）",color: "light_purple"}

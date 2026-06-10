# 计分板
scoreboard objectives remove stats.display
scoreboard objectives add stats.display dummy

scoreboard objectives add stats.death minecraft.custom:minecraft.deaths "死亡次数"
scoreboard objectives add stats.player_death dummy {"text":"死亡量","color":"red","bold":true}

scoreboard objectives add stats.netherite_shovel_used minecraft.used:netherite_shovel "下界合金铲使用"
scoreboard objectives add stats.netherite_pickaxe_used minecraft.used:netherite_pickaxe "下界合金镐使用"
scoreboard objectives add stats.netherite_axe_used minecraft.used:netherite_axe "下界合金斧使用"
scoreboard objectives add stats.diamond_shovel minecraft.used:diamond_shovel "钻石铲使用"
scoreboard objectives add stats.diamond_pickaxe_used minecraft.used:diamond_pickaxe "钻石镐使用"
scoreboard objectives add stats.diamond_axe_used minecraft.used:diamond_axe "钻石斧使用"
scoreboard objectives add stats.shears minecraft.used:shears "剪刀使用"
scoreboard objectives add stats.player_mine dummy {"text":"挖掘量","color":"yellow","bold":true}

scoreboard objectives add stats.netherite_hoe minecraft.used:netherite_hoe "下界合金锄使用"
scoreboard objectives add stats.diamond_hoe minecraft.used:diamond_hoe "钻石锄使用"
scoreboard objectives add stats.player_hoe dummy {"text":"锄头使用量","color":"green","bold":true}

scoreboard objectives add stats.open_barrel minecraft.custom:open_barrel "木桶打开次数"
scoreboard objectives add stats.open_shulker_box minecraft.custom:open_shulker_box "潜影盒打开次数"
scoreboard objectives add stats.open_enderchest minecraft.custom:open_enderchest "末影箱打开次数"
scoreboard objectives add stats.open_chest minecraft.custom:open_chest "箱子打开次数"
scoreboard objectives add stats.player_container_use dummy {"text":"容器打开次数","color":"#FFCC00","bold":true}

scoreboard objectives add stats.traded_with_villager minecraft.custom:traded_with_villager "村民交易次数"
scoreboard objectives add stats.player_traded_with_villager dummy {"text":"村民交易次数","color":"#33ffad","bold":true}

scoreboard players set #CONSTANT_hour stats.gametime 3600
scoreboard objectives add stats.player_gametime dummy {"text":"游戏时长","color":"gold","bold":true}
# 计时器
schedule function statistics:1tick 1t replace
schedule function statistics:10sec 1t replace
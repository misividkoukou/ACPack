#### 用于自杀:把原版 deaths 增量标记为"已消费",避免 death_judge 重复计数
scoreboard players set @s stats.death 0

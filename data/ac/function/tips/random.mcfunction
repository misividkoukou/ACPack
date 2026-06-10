#### 生成随机数（因为是全局的，就不能放到玩家里运行）
execute store result score #random tips_random run random value 1..20
#### 这里要选中玩家，因为计时器均为服务器执行
execute as @a[tag=tips_on] run function ac:tips/announce_tips
## To-do(低优先级): 调试:快速切换tips以检查随机数发生、选择器、显示是否正常【没有人会喜欢为了测试tips干等几个小时吧】
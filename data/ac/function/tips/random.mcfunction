#### 改了下选择器，因为可以在调用此函数前选择好
tellraw @s {"text":"小贴士( •̀ ω •́ )y",color:aqua}
execute if score #random int matches 1 run tellraw @s {"text":"你知道吗?服务器的名字areocraft其实为误写",color:aqua}
execute if score #random int matches 2 run tellraw @s {"text":"服务器可以使用skin指令设置皮肤,哪怕你是离线玩家",color:aqua}
execute if score #random int matches 3 run tellraw @s {"text":"你知道吗?服务器其实有两个服主",color:aqua}
execute if score #random int matches 4 run tellraw @s {"text":"服务器使用数据包对原版游戏进行了少量修改,具体请查看官网",color:aqua}
execute if score #random int matches 5 run tellraw @s [{"text":"服务器有专门的帮助文档,请点击这里查看:",color:aqua},{"text":"https://docsareocraft.zhangrx.top/zh/help",color:aqua,"hover_event":{action:"show_text",value:"点我打开"},"click_event":{action:"open_url",url:"https://docsareocraft.zhangrx.top/zh/help"}}]
execute if score #random int matches 6 run tellraw @s {"text":"你知道吗?我们服务器的周目数大概率是国内生电服最多的 qwq",color:aqua}
execute if score #random int matches 7 run tellraw @s {"text":"你可以使用/trigger trigger set 1,打开控制面板关闭此提示",color:aqua}
execute if score #random int matches 8 run tellraw @s {"text":"每次重启数据包都会自动打开小贴士,这是设定!!!",color:aqua}
execute if score #random int matches 9 run tellraw @s {"text":"小贴士每5分钟会显示一次",color:aqua}
execute if score #random int matches 10 run tellraw @s [{"text":"如果想要为该数据包提出意见(包括小贴士投稿,数据包内容增加),可以前往:",color:aqua},{"text":"https://github.com/misividkoukou/ACPack/issues",color:green,"click_event":{action:"open_url","url":"https://github.com/misividkoukou/ACPack/issues"}},{"text":"提交issue",color:aqua}]

#### 改了下选择器，因为可以在调用此函数前选择好
tellraw @s {"text":"小贴士( •̀ ω •́ )y",color:aqua}
execute if score #random tips_random matches 1 run tellraw @s {"text":"你知道吗?服务器的名字areocraft其实为拼写错误！",color:aqua}
execute if score #random tips_random matches 2 run tellraw @s {"text":"服务器可以使用skin指令设置皮肤,哪怕你是离线玩家！",color:aqua}
execute if score #random tips_random matches 3 run tellraw @s {"text":"你知道吗?服务器其实有两个服主！",color:aqua}
execute if score #random tips_random matches 4 run tellraw @s {"text":"服务器使用数据包对原版游戏进行了少量修改,具体请查看官网！",color:aqua}
execute if score #random tips_random matches 5 run tellraw @s [{"text":"服务器有专门的帮助文档,请点击这里查看:",color:aqua},{"text":"https://docsareocraft.zhangrx.top/zh/help",color:aqua,"hover_event":{"action":"show_text","value":"点我打开官方文档库"},"click_event":{"action":"open_url","url":"https://docsareocraft.zhangrx.top/zh/help"}}]
execute if score #random tips_random matches 6 run tellraw @s {"text":"你知道吗?我们服务器的周目数大概率是国内生电服最多的 qwq",color:aqua}
execute if score #random tips_random matches 7 run tellraw @s {"text":"你可以使用/trigger trigger set 1,打开控制面板关闭小贴士！",color:aqua}
execute if score #random tips_random matches 8 run tellraw @s {"text":"第一次使用数据包将会自动打开小贴士,这是设定！！！",color:aqua}
execute if score #random tips_random matches 9 run tellraw @s {"text":"小贴士每5分钟会显示一次！",color:aqua}
execute if score #random tips_random matches 10 run tellraw @s [{"text":"如果想要为该数据包提出意见(包括小贴士投稿,数据包内容增加),可以前往:",color:aqua},{"text":"https://github.com/misividkoukou/ACPack/issues",color:green,"click_event":{action:"open_url","url":"https://github.com/misividkoukou/ACPack/issues"}},{"text":"提交issue",color:aqua}]
execute if score #random tips_random matches 11 run tellraw @s {"text":"PCL的联机功能本质上与RADMIN一致。你下载RADMIN了吗？大家都用它联机!","color":aqua}
execute if score #random tips_random matches 12 run tellraw @s {"text":"再提醒亿次,服务器有特殊的配方和交易！！！","color":aqua}
execute if score #random tips_random matches 13 run tellraw @s {"text":"入服半年以上的玩家可以申请管理组！",color:aqua}
execute if score #random tips_random matches 14 run tellraw @s {"text":"服务器正式玩家可以直接邀请玩家入服,但是惩罚具有连坐机制...不要邀请不认识的人直接入服...","color":aqua}
execute if score #random tips_random matches 15 run tellraw @s [{"text":"服务器内群为邀请制。","color":aqua},{"text":"内群总有好处的,不是吗?","strikethrough":true}]
execute if score #random tips_random matches 16 run tellraw @s {"text":"考核期一般为15天左右,考核期通过后才会成为正式玩家...","color":aqua}
execute if score #random tips_random matches 17 run tellraw @s {"text":"迅捷潜行可以通过猪灵交易获得。别跑图了...","color":aqua}
execute if score #random tips_random matches 18 run tellraw @s {"text":"猪灵交易可以让你获得一些稀有物品...","color":aqua}
execute if score #random tips_random matches 19 run tellraw @s {"text":"尼达斯豆菜布盗着哩斜得势肾癦","color":aqua,"obfuscated":true}
execute if score #random tips_random matches 20 run tellraw @s {"text":"服务器虽然周目数很多，但不少周目都在存档毕业前就废弃了或者损坏了...",color:aqua}
execute if score #random tips_random matches 114514 run tellraw @s {"text":"这条消息永远不会显示在小贴士上！","color":aqua}
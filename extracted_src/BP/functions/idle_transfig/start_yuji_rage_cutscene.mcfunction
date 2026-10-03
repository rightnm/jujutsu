execute unless entity @s[family=todo] if entity @e[family=yuji,r=50,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0},tag=!enrage_end] run tag @e[tag=idle_transfig,r=50,c=1,tag=!spectator] add yuji_rage_cutscene_mahito
execute if entity @s[family=todo] if entity @e[family=yuji,r=50,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0,blackflash_amount=0},tag=!enrage_end] run tag @e[tag=idle_transfig,r=50,c=1,tag=!spectator] add yuji_rage_cutscene_mahito
execute if entity @a[hasitem={item=ds:yuji_fists},r=50,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0},tag=!enrage_end] run tag @e[tag=idle_transfig,r=50,c=1,tag=!spectator] add yuji_rage_cutscene_mahito
scoreboard players set @e[tag=yuji_rage_cutscene_mahito,r=50,c=1,tag=!spectator] cutscene 401


execute unless entity @s[family=todo] run tag @e[family=yuji,r=50,c=1,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0},tag=!enrage_end] add yuji_rage_cutscene_yuji
execute if entity @s[family=todo] run tag @e[family=yuji,r=50,c=1,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0,blackflash_amount=0},tag=!enrage_end] add yuji_rage_cutscene_yuji
execute unless entity @e[tag=yuji_rage_cutscene_yuji,r=50] run tag @p[hasitem={item=ds:yuji_fists},r=50,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=0},tag=!enrage_end] add yuji_rage_cutscene_yuji
scoreboard players set @e[tag=yuji_rage_cutscene_yuji,r=50,c=1,tag=!spectator] cutscene 401


execute as @e[type=ds:yuji_itadori,r=50,c=1,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=4..,blackflash_amount=0},tag=!enrage_end] facing entity @s feet positioned as @s unless entity @e[tag=yujis_friend,tag=!sukuna,tag=!curse,tag=!rogue_sorcerer,r=50] run tp @s ~~~ facing ^^^-100
execute as @e[type=ds:yuji_itadori,r=50,c=1,tag=!sukuna,tag=!idle_transfig,tag=!spectator,scores={enrage=4..,blackflash_amount=0},tag=!enrage_end] at @s unless entity @e[tag=yujis_friend,tag=!sukuna,tag=!curse,tag=!rogue_sorcerer,r=50] run function enrage_end
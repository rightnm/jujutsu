scoreboard players operation @s familiarID = @e[tag=owner,c=1] uniqueid
scoreboard players operation @s summonerID = @e[tag=owner,c=1] uniqueid
execute at @e[tag=owner,c=1] if entity @e[tag=owner,tag=!rogue_sorcerer,tag=!sukuna,r=0.25] run event entity @s[family=!transfigured_human] sorcerer_clan
execute at @e[tag=owner,c=1] unless entity @s[family=!transfigured_human] if entity @e[tag=owner,tag=!rogue_sorcerer,tag=!sukuna,r=0.25] run event entity @s curse_clan
execute at @e[tag=owner,c=1] if entity @e[tag=owner,tag=rogue_sorcerer,tag=!sukuna,r=0.25] run event entity @s rogue_clan
execute at @e[tag=owner,c=1] if entity @e[tag=owner,tag=sukuna,type=player,r=0.25] run event entity @s sukuna_clan
execute at @e[tag=owner,c=1] if entity @e[tag=owner,type=!player,r=0.25] run event entity @s ptrg
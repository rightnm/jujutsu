execute unless entity @e[type=ds:rounddeerboss,r=100] run kill @e[type=ds:rounddeerboss,c=1]
execute unless entity @e[type=ds:rounddeerboss,r=100] run function shikigami/shikigami/deer_tame
execute unless entity @e[type=ds:rounddeerboss,r=100] run tag @s remove deer_fight

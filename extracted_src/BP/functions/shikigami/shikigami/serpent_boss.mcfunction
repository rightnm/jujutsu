execute unless entity @e[type=ds:serpentboss,r=100] run kill @e[type=ds:serpentboss,c=1]
execute unless entity @e[type=ds:serpentboss,r=100] run function shikigami/shikigami/serpent_tame
execute unless entity @e[type=ds:serpentboss,r=100] run tag @s remove serpent_fight

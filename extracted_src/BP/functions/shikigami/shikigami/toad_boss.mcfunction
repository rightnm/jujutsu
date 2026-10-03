execute unless entity @e[type=ds:toad,r=100] run kill @e[type=ds:toad,c=1]
execute unless entity @e[type=ds:toad,r=100] run function shikigami/shikigami/toad_tame
execute unless entity @e[type=ds:toad,r=100] run tag @s remove toad_fight

execute as @e[scores={Deleter=1},type=ds:toad] run tag @p[tag=toad_fight] remove toad_fight

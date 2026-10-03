execute unless entity @e[type=ds:rabbitescapeboss,r=100] run kill @e[type=ds:rabbitescapeboss,c=30]
execute unless entity @e[type=ds:rabbitescapeboss,r=100] run function shikigami/shikigami/rabbit_tame
execute unless entity @e[type=ds:rabbitescapeboss,r=100] run tag @s remove rabbit_fight

execute as @e[scores={Deleter=1},type=ds:rabbitescapeboss,c=1] run tag @p[tag=rabbit_fight] remove rabbit_fight

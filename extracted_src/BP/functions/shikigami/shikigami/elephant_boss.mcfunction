execute unless entity @e[type=ds:maxelephantboss,r=100] run kill @e[type=ds:maxelephantboss,c=1]
execute unless entity @e[type=ds:maxelephantboss,r=100] run function shikigami/shikigami/elephant_tame
execute unless entity @e[type=ds:maxelephantboss,r=100] run tag @s remove elephant_fight

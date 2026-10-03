tp @s ~~~ facing @e[type=ds:dismantle,c=1]
scoreboard players add @s Mode 0
scoreboard players set @s[scores={Mode=0}] Deleter 6
scoreboard players set @s[scores={Mode=0}] Mode 1
playanimation @s[scores={Deleter=5..}] animation.dismantle.horizontal2
tp @s[scores={Deleter=1..3}] ~~-200~

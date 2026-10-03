playanimation @s[scores={move=20}] animation.nyoi_staff.swipe

tag @e[scores={move=1..2}] remove wep1

tag @s[scores={move=17..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=17..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..}] Hyper 4
scoreboard players set @s[scores={move=4..}] Move 4

execute as @s[scores={move=13}] at @s run function damages/blunt_damage

scoreboard players random @s[scores={move=18}] blackflashchance 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashchance 7


scoreboard players set @e[scores={move=13..14}] atk 2
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run scoreboard players operation @e[tag=!Frames,r=2.24] damagehalf += @s damageadd
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] knockdown 95
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] Stun 15
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Hit 2
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Evade 5
execute as @s[scores={move=13}] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24] 5 entity_attack entity @s
execute as @s[scores={move=15}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=15}] at @s positioned ^^^2.25 if entity @e[tag=Frames,r=2.24] run playsound random.explode @a ~~~ 1 2 1
execute as @s[scores={move=15}] at @s run playsound dig.grass @a[r=200] ~~~ 999999 1  999999
execute as @s[scores={move=13}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.15
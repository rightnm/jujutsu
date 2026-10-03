playanimation @s[scores={move=45..}] animation.playful_cloud.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=35..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=35..,Stun=1..}] move 0

scoreboard players set @s[scores={move=10..34}] Frames 4

execute as @s[scores={move=34}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.99] add cranialcrush
execute as @s[scores={move=34}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 34

execute as @s[scores={move=15..33}] at @s unless entity @e[tag=cranialcrush,r=5] run scoreboard players set @s move 2
tag @e[scores={Evasive=1..}] remove cranialcrush

scoreboard players set @a[tag=cranialcrush] Camera 4
scoreboard players set @s[scores={move=2..34}] Camera 4
scoreboard players set @a[tag=cranialcrush] Move 4
scoreboard players set @s[scores={move=2..34}] Move 4

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7


execute as @s[scores={move=31..33}] at @s run tp @s ~~0.33~
execute as @s[scores={move=3..33}] at @s run tp @s @s
execute as @s[scores={move=21..32}] at @s run tp @e[tag=cranialcrush,c=1,r=5] ^^-0.55^0.88 facing @s
execute as @s[scores={move=10..20}] at @s run tp @e[tag=cranialcrush,c=1,r=5] ^^-0.6^0.75 facing @s

execute as @s[scores={move=38..41}] at @s positioned ^^1^1.5 run playsound dig.chain @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=30..32}] at @s positioned ^^1^1.5 run playsound dig.chain @a[r=50] ~~~ 9999 0.78 9999
execute as @s[scores={move=36}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.756 999999

execute as @s[scores={move=15..26}] at @s run camerashake add @a[r=5] 0.085 0.08

execute as @s[scores={move=13..33}] at @s run camera @s set minecraft:free pos ^-1 ^1.85 ^2 facing ^^1^0.25
execute as @s[scores={move=3..12}] at @s run camera @s set minecraft:free pos ^ ^2.35 ^-1.5 facing ^^1^4
execute as @s[scores={move=1..2}] at @s run camera @s clear

scoreboard players set @e[scores={move=14..15}] atk 2
execute as @s[scores={move=14}] at @s run function damages/blunt_damage
playanimation @e[tag=cranialcrush] animation.stunned
execute as @s[scores={move=14}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players operation @e[tag=cranialcrush,c=1] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2 run effect @e[tag=cranialcrush,c=1] levitation 1 5 true
execute as @s[scores={move=6}] at @s positioned ^^^2 run effect @e[r=51] levitation 0 20 true
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players set @e[tag=cranialcrush,c=1] knockdown 88
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players add @e[tag=cranialcrush,c=1] Hit 5
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players add @e[tag=cranialcrush,c=1] Evade 15
execute as @s[scores={move=14}] at @s positioned ^^^2 run damage @e[tag=cranialcrush,c=1] 15 entity_attack entity @s
execute as @s[scores={move=14}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 4 0.2
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:heavy_impact4
execute as @s[scores={move=14}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=14}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999

execute as @s[scores={move=14}] at @s positioned ^^^2 if entity @e[tag=cranialcrush,c=1] run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999

execute as @s[scores={move=7..13}] at @s run tag @e[tag=cranialcrush] remove cranialcrush

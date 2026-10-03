execute as @s[scores={cutscene=11..}] at @s run playanimation @e[tag=deadlystrikeclash2,c=1] animation.deadly_strike_clash
playanimation @s[scores={cutscene=11..}] animation.deadly_strike_clash

execute as @s[scores={cutscene=50..}] run camera @p[tag=deadlystrikeclash2,c=1] fade time 0 0.2 0.15 color 0 0 0
camera @s[scores={cutscene=50..}] fade time 0 0.2 0.15 color 0 0 0

execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @e[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15

execute as @e[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.25 9999
execute as @e[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @e[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @e[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.5 9999


execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @s Camera 5
execute as @s[scores={cutscene=14..}] at @s run scoreboard players set @s Frames 5
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @s Move 5
execute as @s[scores={cutscene=11..}] at @s run camerashake add @a[r=7] 0.05 0.08

execute as @s[scores={cutscene=11..}] at @s run scoreboard players add @e[tag=deadlystrikeclash2,c=1] strength 0
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @e[tag=deadlystrikeclash2,c=1] Camera 5
execute as @s[scores={cutscene=14..}] at @s run scoreboard players set @s[tag=deadlystrikeclash2,c=1] Frames 5
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @s[tag=deadlystrikeclash2,c=1] Move 5

execute as @s[scores={cutscene=11..}] at @s run camera @s set minecraft:free pos ^4 ^1 ^1.5 rot ~ ~90
execute as @s[scores={cutscene=11..}] at @s run camera @p[tag=deadlystrikeclash2,c=1] set minecraft:free pos ^4 ^1 ^1.5 rot ~ ~90

execute as @s[scores={cutscene=11..}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={cutscene=11..}] at @s run title @p[tag=deadlystrikeclash2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=1..10}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={cutscene=1..10}] at @s run title @p[tag=deadlystrikeclash2,c=1,tag=!impactframesoff] title 

execute as @s[scores={cutscene=1..}] at @s run tp @s @s
execute as @s[scores={cutscene=11..}] at @s run tp @e[tag=deadlystrikeclash2,c=1] ^-0.15^^3 facing @s

execute as @s[scores={cutscene=1..3}] at @s run tag @e[tag=deadlystrikeclash2] remove deadlystrikeclash2
execute as @s[scores={cutscene=1..3}] at @s run tag @e[tag=deadlystrikeclashwinner] remove deadlystrikeclashwinner
execute as @s[scores={cutscene=1..3}] at @s run tag @e[tag=deadlystrikeclash] remove deadlystrikeclash



execute as @e[scores={cutscene=10},tag=deadlystrikeclash] at @s if score @s strength > @e[tag=deadlystrikeclash2,c=1] strength run tag @s add deadlystrikeclashwinner
execute as @e[scores={cutscene=10},tag=deadlystrikeclash] at @s if score @s strength < @e[tag=deadlystrikeclash2,c=1] strength run tag @e[tag=deadlystrikeclash2,c=1] add deadlystrikeclashwinner

execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run camera @s clear
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:ground_slam2 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:ground_slam3 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:heavy_impact1 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:heavy_impact2 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:heavy_impact3 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s run particle ds:heavy_impact5 ^^1^1.5


execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,tag=!deadlystrikeclash2] at @s run tag @e[tag=deadlystrikeclash2] remove deadlystrikeclash2

execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.2 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.3 9999
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^1.5 run tag @e[r=4] add hardknockback
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s anchored eyes positioned ^^^4.05 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run scoreboard players operation @e[r=4] damage += @s damageadd
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run damage @e[r=4] 15 override entity @s
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run effect @e[r=4] levitation 1 1 true
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run scoreboard players add @e[r=4] Evade 14
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run scoreboard players set @e[r=4] knockdown 95
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run scoreboard players set @e[r=4] Stun 40
execute as @e[scores={cutscene=8..9},tag=deadlystrikeclashwinner] at @s positioned ^^^4.05 run scoreboard players add @e[r=4] Hit 10
execute as @e[scores={cutscene=7},tag=deadlystrikeclashwinner,family=!boss] at @s run summon ds:red_reverse ~~~
execute as @e[scores={cutscene=5..7},tag=deadlystrikeclashwinner,family=boss] at @s run summon ds:boss_knockback1 ~~~
execute as @e[scores={cutscene=5},tag=deadlystrikeclashwinner] at @s run tag @e[tag=deadlystrikeclash] remove deadlystrikeclash
execute as @e[scores={cutscene=5},tag=deadlystrikeclashwinner] at @s run tag @e[tag=deadlystrikeclashwinner] remove deadlystrikeclashwinner
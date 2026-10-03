playanimation @s[scores={move=40}] animation.mahoraga.punch_barrage_win1
scoreboard players set @s chance 0
scoreboard players set @s clashnumber 0
scoreboard players set @s Disabled 55

execute as @s[type=!player] at @s run tp @s ~~~~ 0


execute as @s[scores={move=40}] at @s run execute as @a[tag=ClashBarrage,c=1] at @s run tp @s ~ ~ ~ facing @e[tag=ClashBarrage,c=1,rm=0.3]

execute as @s[scores={move=40}] at @s run scoreboard players set @e[tag=ClashBarrage,c=2] Stun 40
execute as @s[scores={move=40}] at @s run scoreboard players set @e[tag=ClashBarrage,c=2] cutscene 0
execute as @s[scores={move=40}] at @s run scoreboard players set @e[tag=ClashBarrage,c=2] clashnumber 0

execute as @s[scores={move=40}] at @s run camera @a[r=20] fade time 0.2 0.1 0.1 color 0 0 0
execute as @s[scores={move=40}] at @s run camera @a[r=20] set minecraft:free ease 0.2 in_sine pos ^4 ^2 ^6 rot ~-15 ~145
execute as @s[scores={move=36}] at @s run camera @a[r=20] set minecraft:free ease 0.3 in_circ pos ^0.5 ^2.5 ^2 rot ~ ~190
execute as @s[scores={move=30}] at @s run camera @a[r=20] set minecraft:free ease 0.45 in_out_circ pos ^3 ^4 ^-3 rot ~5 ~25

execute as @s[scores={move=5..40}] at @s run scoreboard players set @e[r=20] Camera 5
execute as @s[scores={move=5..40}] at @s run scoreboard players set @e[r=20] Move 5

execute as @s[scores={move=1..40}] at @s run tp @s ~~~ facing @e[tag=ClashBarrage,c=1,family=!mahoraga]
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames] Stun 50
execute as @s[scores={move=20}] at @s  unless entity @e[scores={Stun=0,knock=0},r=10] run summon ds:mahoraga_knockback1 ^^^0.1
execute as @s[scores={move=20}] at @s  unless entity @e[scores={Stun=0,knock=0},r=10] run summon ds:mahoraga_knockback1 ^^^0.1
execute as @s[scores={move=20}] at @s  unless entity @e[scores={Stun=0,knock=0},r=10] run summon ds:mahoraga_knockback1 ^^^0.1
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames] Evade 50
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames] Hit 15
execute as @s[scores={move=20}] at @s positioned ^^^7run damage @e[r=6.99,tag=!Frames] 25 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 2.85 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 2.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.shock1 @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.bass @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.bass @a[r=90] ~~~ 90 0.25 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=22}] at @s run title @a[tag=!impactframesoff,r=20,scores={Move=1..}] title 
execute as @s[scores={move=21}] at @s run title @a[tag=!impactframesoff,r=20,scores={Move=1..}] title 
execute as @s[scores={move=20}] at @s run title @a[tag=!impactframesoff,r=20,scores={Move=1..}] title 
execute as @s[scores={move=19}] at @s run title @a[tag=!impactframesoff,r=20,scores={Move=1..}] title 
execute as @s[scores={move=18}] at @s run title @a[r=30] title §l
execute as @s[scores={move=21}] at @s run particle ds:ground_slam2 ^^3^2
execute as @s[scores={move=21}] at @s run particle ds:ground_slam2 ^^3^2
execute as @s[scores={move=21}] at @s run particle ds:heavy_impact1 ^^3^2
execute as @s[scores={move=21}] at @s run particle ds:heavy_impact2 ^^3^2
execute as @s[scores={move=21}] at @s run particle ds:heavy_impact3 ^^3^2
execute as @s[scores={move=20..22}] at @s run particle ds:heavy_impact5 ^^3^2
execute as @s[scores={move=1..4}] at @s run tag @e remove ClashBarrage
execute as @s[scores={move=1..4}] at @s run tag @e remove makorabarragewin
playanimation @s[scores={move=30}] animation.sharpened_cloud.ab5

tag @s[scores={move=1..2}] remove wep5

tag @s[scores={move=11..,Stun=1..}] remove wep5
scoreboard players set @s[scores={move=11..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1}] AfterAnim 6

execute as @s[scores={move=1..3}] run tag @e[tag=intensity] remove intensity
execute as @s[scores={move=1..3}] run tag @e[tag=intensity2] remove intensity2

execute as @s[scores={move=26..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=5..10}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=10}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999 1.2 999
execute as @s[scores={move=5..10}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.99] add intensity2
execute as @s[scores={move=5..10}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run tag @s add intensity
execute as @s[scores={move=5..10}] at @s positioned ^^^2 if entity @e[tag=intensity2,c=1,r=5] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..1001}] animation.overwhelming_intensity
execute as @s[scores={move=1000..1001}] run playanimation @e[tag=intensity2,c=1] animation.overwhelming_intensity2

scoreboard players set @s[tag=intensity] Move 5
scoreboard players set @s[tag=intensity] Camera 5
scoreboard players set @s[tag=intensity] Frames 5
scoreboard players set @e[c=1,tag=intensity2] Move 5
scoreboard players set @e[c=1,tag=intensity2] Camera 5
scoreboard players set @e[c=1,tag=intensity2] Frames 5
scoreboard players set @e[c=1,tag=intensity2] Stun 15

execute as @s[scores={move=1000..1001}] at @s run tp @s @s
execute as @s[scores={move=1000..1001}] at @s run tp @e[tag=intensity2,c=1] ^^^1 facing @s

execute as @s[scores={move=1000}] at @s positioned ^^^0.7 run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=1000}] at @s positioned ^^^0.7 run playsound mob.sword @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=1000}] at @s positioned ^^^0.7 run particle ds:blood_splat ~~~

execute as @s[scores={move=994}] at @s positioned ^^^0.7 run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=994}] at @s positioned ^^^0.7 run playsound mob.sword @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=994}] at @s positioned ^^^0.7 run particle ds:blood_splat ~~~

execute as @s[scores={move=985}] at @s run damage @e[tag=intensity2,c=1] 1 
execute as @s[scores={move=984}] at @s run scoreboard players set @e[tag=intensity2,c=1] Hit 5

execute as @s[scores={move=31..984},type=!player] at @s run tp @s ~~~

execute as @s[scores={move=890..984},type=!player] at @s run tp @s ~~~ facing @e[tag=intensity2,c=1]

execute as @s[scores={move=984},type=player] at @s run tp @e[tag=intensity2,c=1] ^^^17 facing @s 
execute as @s[scores={move=984},type=!player] at @s run tp @e[tag=intensity2,c=1] ~~~17 facing @s 
execute as @s[scores={move=980..984},type=!player] at @s run tp @s ~~~ facing @e[tag=intensity2,c=1]
execute as @s[scores={move=984}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=984}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=984}] at @s run particle ds:heavy_impact1 ^^1^1
execute as @s[scores={move=984}] at @s run particle ds:heavy_impact2 ^^1^1
execute as @s[scores={move=984}] at @s run particle ds:heavy_impact3 ^^1^1

execute as @s[scores={move=720..}] at @s run title @a[tag=!impactframesoff,tag=intensity] title 
execute as @s[scores={move=720..}] at @s run title @a[tag=!impactframesoff,tag=intensity2] title 

execute as @s[scores={move=985}] at @s run camera @p[tag=intensity2,c=1] fade time 0 0 0.05 color 0 0 0
execute as @s[scores={move=985}] at @s run camera @s fade time 0 0 0.1 color 0 0 0
execute as @s[scores={move=983}] at @s run execute as @e[tag=intensity2,c=1] at @s run tp @s @s
execute as @s[scores={move=983}] at @s run execute as @e[tag=intensity2,c=1] at @s run camera @s set minecraft:free pos ^2 ^3.5 ^-5 facing @e[tag=intensity,c=1]
execute as @s[scores={move=983}] at @s run execute as @e[tag=intensity2,c=1] at @s run camera @p[tag=intensity,c=1] set minecraft:free pos ^2 ^3.5 ^-5 facing @e[tag=intensity,c=1]

execute as @s[scores={move=945}] at @s run execute as @e[tag=intensity2,c=1] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-0.15 ^0.66 facing ^^^20
execute as @s[scores={move=945}] at @s run execute as @e[tag=intensity2,c=1] at @s anchored eyes run camera @p[tag=intensity,c=1] set minecraft:free pos ^ ^-0.15 ^0.66 facing ^^^20

execute as @s[scores={move=890}] at @s run execute as @e[tag=intensity2,c=1] at @s run camera @s set minecraft:free pos ^2 ^0.4 ^ facing ^^1.25^0.5
execute as @s[scores={move=890}] at @s run execute as @e[tag=intensity2,c=1] at @s  run camera @p[tag=intensity,c=1] set minecraft:free pos ^2 ^0.4 ^ facing ^^1.25^0.5

execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^4
execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^7
execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^10
execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^13
execute as @s[scores={move=984}] at @s run particle ds:ground_slam2 ^^^16
execute as @s[scores={move=980}] at @s if entity @e[tag=griefable] run fill ^1 ^2 ^1 ^-1 ^ ^17 air
execute as @s[scores={move=984}] at @s if entity @e[tag=griefable] run playsound random.explode @a[r=50] ^^^10 9999 1 9999
execute as @s[scores={move=984}] at @s run tp @s ^^^-5


execute as @s[scores={move=940}] at @s run camera @a[tag=intensity2,c=1] fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=940}] at @s run camera @s fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=940}] at @s run playsound music.flashstep @a[r=35] ~~~ 9999 1 9999
execute as @s[scores={move=939}] at @s run tp @s ^^^7.5

execute as @s[scores={move=915}] at @s run camera @a[tag=intensity2,c=1] fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=915}] at @s run camera @s fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=915}] at @s run playsound music.flashstep @a[r=35] ~~~ 9999 0.975 9999
execute as @s[scores={move=914}] at @s run tp @s ^^^6.5

execute as @s[scores={move=890}] at @s run camera @a[tag=intensity2,c=1] fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=890}] at @s run camera @s fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={move=890}] at @s run playsound music.flashstep @a[r=35] ~~~ 9999 0.99 9999
execute as @s[scores={move=889}] at @s run execute as @e[tag=intensity2,c=1] at @s run tp @e[tag=intensity,c=1] ^^^1 facing @s

execute as @s[scores={move=872}] at @s run execute as @e[tag=intensity2,c=1] at @s run camera @s set minecraft:free pos ^5 ^1 ^ facing  @e[tag=intensity2,c=1]
execute as @s[scores={move=872}] at @s run execute as @e[tag=intensity2,c=1] at @s  run camera @p[tag=intensity,c=1] set minecraft:free pos ^5 ^1 ^ facing @e[tag=intensity2,c=1]

execute as @s[scores={move=865}] at @s run camera @a[r=14] fade time 0 0.1 0.1 color 0 0 0

execute as @s[scores={move=862}] at @s run camera @s set minecraft:free pos ^ ^1.25 ^2 facing ^^1.25^
execute as @s[scores={move=862}] at @s  run camera @p[tag=intensity,c=1] set minecraft:free pos ^ ^1.25 ^2 facing ^^1.25^

execute as @s[scores={move=875}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=875}] at @s run playsound random.explode @a[r=10] ^^1^1 9999 2 9999
execute as @s[scores={move=875}] at @s run particle ds:ground_slam2 ^^1^1
execute as @s[scores={move=875}] at @s run particle ds:heavy_impact1 ^^1^1
execute as @s[scores={move=875}] at @s run particle ds:heavy_impact2 ^^1^1
execute as @s[scores={move=875}] at @s run particle ds:heavy_impact3 ^^1^1
execute as @s[scores={move=875}] at @s run particle ds:heavy_impact5 ^^1^1
execute as @s[scores={move=875}] at @s run damage @e[tag=intensity2,c=1] 1 
execute as @s[scores={move=875}] at @s run scoreboard players add @e[tag=intensity2,c=1] Hit 5
execute as @s[scores={move=875}] at @s run tp @e[tag=intensity2,c=1] ^^12^5

execute as @s[scores={move=850..852}] at @s run camerashake add @a[r=20] 1 0.15
execute as @s[scores={move=850..852}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=850..852}] at @s run particle ds:flashstep1
execute as @s[scores={move=850..852}] at @s run particle ds:flashstep2
execute as @s[scores={move=850..852}] at @s run particle ds:evade2

execute as @s[scores={move=742..820}] at @s run scoreboard players set @e[tag=intensity2,c=1] Hit 4
execute as @s[scores={move=742..820}] at @s run camerashake add @a[r=10] 0.5 0.1
execute as @s[scores={move=742..820}] at @s run playsound mob.sword @a[r=50] ^^^0.5 99999 1.8 99999
execute as @s[scores={move=742..820}] at @s run playsound mob.witch.throw @a[r=50] ^^^0.5 99999 1.25 99999
execute as @s[scores={move=742..820}] at @s run  particle ds:intensity1 ^^0.1^

execute as @s[scores={move=730}] at @s run scoreboard players set @e[tag=intensity2,c=1] Hit 12
execute as @s[scores={move=730}] at @s run camerashake add @a[r=10] 0.5 0.1
execute as @s[scores={move=730}] at @s run playsound mob.sword @a[r=50] ^^^0.5 99999 0.5 99999
execute as @s[scores={move=730}] at @s run playsound mob.slice @a[r=50] ^^^0.5 99999 0.7 99999
execute as @s[scores={move=730}] at @s run scoreboard players set @e[tag=intensity2,c=1] Evade 40
execute as @s[scores={move=730}] at @s run scoreboard players set @e[tag=intensity2,c=1] Flourish 20
execute as @s[scores={move=730}] at @s run scoreboard players set @e[tag=intensity2,c=1] Stun 30
execute as @s[scores={move=730}] at @s run scoreboard players set @e[tag=intensity2,c=1] Frames 4
execute as @s[scores={move=730}] at @s run  particle ds:heavy_impact1 ^^^0.5
execute as @s[scores={move=730}] at @s run  particle ds:ground_slam2 ^^^0.5
execute as @s[scores={move=730}] at @s run  particle ds:heavy_impact2 ^^^0.5
execute as @s[scores={move=730}] at @s run  particle ds:heavy_impact3 ^^^0.5
execute as @s[scores={move=730}] at @s run  particle ds:heavy_impact5 ^^^0.5
execute as @s[scores={move=730}] at @s run tag @e[tag=intensity2,c=1] remove Frames
execute as @s[scores={move=730}] at @s run effect @e[tag=intensity2,c=1]  resistance 0 20 true
execute as @s[scores={move=730}] at @s run damage @e[tag=intensity2,c=1] 40 entity_attack entity @s



execute as @s[scores={move=729}] at @s run tp @s ^^^7
execute as @s[scores={move=720..729}] at @s run tp @s @s
execute as @s[scores={move=725..729}] at @s unless block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=725..729}] at @s unless block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=725..729}] at @s unless block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=725..729}] at @s unless block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=729..889}] at @s run execute as @e[c=1,tag=intensity2] at @s run tp @s @s
execute as @s[scores={move=729..850}] at @s run execute as @e[c=1,tag=intensity2] at @s run tp @e[c=1,tag=intensity] ^^0.25^0.15 facing @s
execute as @s[scores={move=841..850}] at @s run camera @s set minecraft:free pos ^-2 ^1 ^-2.5 facing @e[tag=intensity2,c=1]
execute as @s[scores={move=841..850}] at @s run camera @p[tag=intensity2,c=1] set minecraft:free pos ^-2 ^1 ^-2.5 facing @e[tag=intensity2,c=1]

execute as @s[scores={move=800}] at @s run camera @s set minecraft:free pos ^0.25 ^1 ^-2.5 facing @e[tag=intensity2,c=1]
execute as @s[scores={move=800}] at @s run camera @p[tag=intensity2,c=1] set minecraft:free pos ^0.25 ^1 ^-2.5 facing @e[tag=intensity2,c=1]

execute as @s[scores={move=750}] at @s run camera @s set minecraft:free pos ^1.25 ^0.5 ^-2 facing @e[tag=intensity2,c=1]
execute as @s[scores={move=750}] at @s run camera @p[tag=intensity2,c=1] set minecraft:free pos ^1.25 ^0.5 ^-2 facing @e[tag=intensity2,c=1]

execute as @s[scores={move=720..728}] at @s run camera @s set minecraft:free pos ^ ^1 ^3 facing ^^3^-7
execute as @s[scores={move=720..728}] at @s run camera @p[tag=intensity2,c=1] set minecraft:free pos ^ ^1 ^3 facing ^^3^-7

camera @s[scores={move=710}] fade time 0.4 0.25 0.25 color 0 0 0

execute as @s[scores={move=700..701}] at @s run title @a[r=10] title §l
execute as @s[scores={move=700..701}] at @s run tag @s remove intensity
scoreboard players set @s[scores={move=700..702}] move 3
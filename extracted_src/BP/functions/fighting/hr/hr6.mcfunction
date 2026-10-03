playanimation @s[scores={move=40}] animation.swift_kick
execute as @s[scores={move=1..28}] at @s run tp @s ~~~

tag @s[scores={move=1..2}] remove form6

tag @s[scores={move=25..,Stun=1..}] remove form6
scoreboard players set @s[scores={move=25..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..24}] Camera 4
scoreboard players set @s[scores={move=4..24}] Frames 4
scoreboard players set @s[scores={move=4..24}] Move 4

scoreboard players set @e[tag=SwiftkickTRG] Stun 25

execute as @s[scores={move=23}] at @s positioned ^^^40 run tag @e[tag=!Frames,c=1,r=39.99,type=!item,type=!armor_stand,type=!bat,type=!xp_orb,type=!arrow,type=!ds:projectile] add SwiftkickTRG

execute as @s[scores={move=26..28}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=26..28}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2
execute as @s[scores={move=26..28}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.75
execute as @s[scores={move=26..28}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2.25

execute as @s[scores={move=17..18}] at @s run particle ds:evade1 ^^1.25^-2
execute as @s[scores={move=17..18}] at @s run particle ds:flashstep1 ^^1.25^-2
execute as @s[scores={move=17..18}] at @s run particle ds:flashstep2 ^^1.25^-2
execute as @s[scores={move=17..18}] at @s run particle ds:evade2 ^^1.25^-2
execute as @s[scores={move=17..18}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2
execute as @s[scores={move=17..18}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.75
execute as @s[scores={move=17..18}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2.25

execute as @s[scores={move=21..22}] at @s positioned ^^^40 run execute as @e[c=1,tag=SwiftkickTRG] at @s run tp @s @s
execute as @s[scores={move=21..22}] at @s positioned ^^^40 run execute as @e[c=1,tag=SwiftkickTRG] at @s run tp @e[c=1,scores={move=20..22}] ^^^-1 facing @s
execute as @s[scores={move=11..20}] at @s run tp @s ~~~ facing @e[tag=SwiftkickTRG,c=1]
execute as @s[scores={move=11..20}] at @s run tp @e[tag=SwiftkickTRG,c=1] ^^^0.75

execute as @s[scores={move=11}] at @s run function damages/blunt_damage

execute as @s[scores={move=11..24}] at @s positioned ^^^2.25 run scoreboard players set @a[r=25] Camera 4
execute as @s[scores={move=11..24}] at @s anchored eyes run camera @a[r=5] set minecraft:free pos ^7 ^ ^1 rot ~ ~90



execute as @s[scores={move=11,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike1
execute as @s[scores={move=11,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike2
execute as @s[scores={move=11,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike3

execute as @s[scores={move=11,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike1b
execute as @s[scores={move=11,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike2b
execute as @s[scores={move=11,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike3b

execute as @s[scores={move=20..24},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:stars ~~1~
execute as @s[scores={move=20},type=ds:benedictus] at @s positioned ^^1^1.25 run playsound mob.blitz1 @a[r=25] ~~~ 99999 2 99999
execute as @s[scores={move=11},type=ds:benedictus] at @s positioned ^^1^1.25 run playsound portal.travel @a[r=25] ~~~ 99999 12 99999
execute as @s[scores={move=8,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run camera @a[r=25] fade time 0.1 0 0.25 color 155 205 255
execute as @s[scores={move=8,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run camera @a[r=25] fade time 0.1 0 0.25 color 255 255 255


execute as @s[scores={move=11..12}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.249,tag=!Frames] damage += @s damageadd
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames] 6
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames] Hit 10
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Evade 8
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames] knockdown 95
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run effect @e[r=2.249,tag=!Frames] levitation 1 1 true
execute as @s[scores={move=11}] at @s run summon ds:red_reverse
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.shock @a ~~~ 10000 1.2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.6 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.3 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.35 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.65 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run camerashake add @a[r=20] 4 1
execute as @s[scores={move=11}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_slam2 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_slam3 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_slam4 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact1 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact2 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact3 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact5 ^^^0.25

camera @s[scores={move=8}] fade time 0.15 0.45 0.25 color 0 0 0

execute as @s[scores={move=1..5}] at @s run tag @e[tag=SwiftkickTRG] remove SwiftkickTRG
playanimation @s[scores={move=30}] animation.duke.strongleft
execute as @s[scores={move=1..20}] at @s run tp @s ~~~

tag @e[scores={move=1..2}] remove wep1

tag @e[scores={move=25..,Stun=1..}] remove wep1
scoreboard players set @e[scores={move=25..,Stun=1..}] move 0

scoreboard players set @e[scores={move=4..24}] Camera 4
scoreboard players set @e[scores={move=4..24}] Frames 4
scoreboard players set @e[scores={move=4..24}] Move 4

scoreboard players set @e[tag=StrongleftTRG] Stun 25

execute as @s[scores={move=23..24}] at @s run tag @p[tag=!Frames,r=80] add StrongleftTRG

execute as @s[scores={move=24}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=24}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=24}] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=24}] at @s run particle ds:evade ~~~
execute as @s[scores={move=24}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2

execute as @s[scores={move=22}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=22}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=22}] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=22}] at @s run particle ds:evade ~~~
execute as @s[scores={move=22}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2

execute as @s[scores={move=21..22}] at @s positioned ^^^40 run execute as @e[tag=StrongleftTRG,c=1] at @s run tp @s @s
execute as @s[scores={move=21..22}] at @s positioned ^^^40 run execute as @e[tag=StrongleftTRG,c=1] at @s run tp @e[scores={move=20..22},c=1] ^^^-2 facing @s
execute as @s[scores={move=14..20}] at @s run tp @s ~~~ facing @e[tag=StrongleftTRG,c=1]
execute as @s[scores={move=14..20}] at @s run tp @e[tag=StrongleftTRG,c=1] ^^^2

execute as @s[scores={move=14,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike1
execute as @s[scores={move=14,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike2
execute as @s[scores={move=14,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike3

execute as @s[scores={move=14,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike1b
execute as @s[scores={move=14,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike2b
execute as @s[scores={move=14,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:lightstrike3b
execute as @s[scores={move=14},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:large_impact1
execute as @s[scores={move=14},type=ds:benedictus] at @s positioned ^^1^1.25 run particle ds:large_impact2

execute as @s[scores={move=14},type=ds:benedictus] at @s positioned ^^1^1.25 run playsound portal.travel @a[r=25] ~~~ 99999 16 99999
execute as @s[scores={move=7,detect_health=400..},type=ds:benedictus] at @s positioned ^^1^1.25 run camera @a[r=25] fade time 0.1 0 0.25 color 155 205 255
execute as @s[scores={move=7,detect_health=1..399},type=ds:benedictus] at @s positioned ^^1^1.25 run camera @a[r=25] fade time 0.1 0 0.25 color 255 255 255

execute as @s[scores={move=14}] at @s run function damages/blunt_damage
execute as @s[scores={move=14..15}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames] 8 entity_attack entity @s
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames] Hit 10
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Evade 8
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run particle ds:ground_slam2 ^^1^-1
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run particle ds:heavy_impact1 ^^1^-1
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run particle ds:heavy_impact2 ^^1^-1
execute as @s[scores={move=14}] at @s positioned ^^^2.25 run particle ds:heavy_impact3 ^^1^-1
execute as @s[scores={move=13..14}] at @s run summon ds:knockback
execute as @s[scores={move=5..13}] at @s run tag @e[tag=StrongleftTRG] remove StrongleftTRG
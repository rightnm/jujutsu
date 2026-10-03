playanimation @s[scores={move=30},tag=limitlessfists,tag=wep1] animation.infinity_backhand
execute as @s[scores={move=1..20},tag=limitlessfists,tag=wep1] at @s run tp @s ~~~

tag @e[scores={move=1..2},tag=wep1,tag=limitlessfists] remove wep1

tag @e[scores={move=25..,Stun=1..},tag=wep1,tag=limitlessfists] remove wep1
scoreboard players set @e[scores={move=25..,Stun=1..},tag=wep1,tag=limitlessfists] move 0

scoreboard players set @e[scores={move=4..24},tag=wep1,tag=limitlessfists] Camera 4
scoreboard players set @e[scores={move=4..24},tag=wep1,tag=limitlessfists] Frames 4
scoreboard players set @e[scores={move=4..24},tag=wep1,tag=limitlessfists] Move 4

scoreboard players set @e[tag=BackhandTRG] Stun 25

execute as @s[scores={move=23},tag=limitlessfists,tag=wep1] at @s positioned ^^^7 run function limitless/flashstep

execute as @s[scores={move=24},tag=limitlessfists,tag=wep1] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=24},tag=limitlessfists,tag=wep1] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=24},tag=limitlessfists,tag=wep1] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=24},tag=limitlessfists,tag=wep1] at @s run particle ds:evade ~~~
execute as @s[scores={move=24},tag=limitlessfists,tag=wep1] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2

execute as @s[scores={move=22},tag=limitlessfists,tag=wep1] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=22},tag=limitlessfists,tag=wep1] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=22},tag=limitlessfists,tag=wep1] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=22},tag=limitlessfists,tag=wep1] at @s run particle ds:evade ~~~
execute as @s[scores={move=22},tag=limitlessfists,tag=wep1] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2

execute as @s[scores={move=21..22},tag=limitlessfists,tag=wep1] at @s positioned ^^^40 run execute as @e[tag=BackhandTRG,c=1] at @s run tp @s @s
execute as @s[scores={move=21..22},tag=limitlessfists,tag=wep1] at @s positioned ^^^40 run execute as @e[tag=BackhandTRG,c=1] at @s run tp @p[scores={move=20..22},tag=limitlessfists,tag=wep1] ^^^-1 facing @s
execute as @s[scores={move=14..20},tag=limitlessfists,tag=wep1] at @s run tp @s ~~~ facing @e[tag=BackhandTRG,c=1]
execute as @s[scores={move=14..20},tag=limitlessfists,tag=wep1] at @s run tp @e[tag=BackhandTRG,c=1] ^^^1.25



scoreboard players random @s[scores={move=19},tag=limitlessfists,tag=wep1] blackflashchance 1 69
scoreboard players set @s[scores={move=19},tag=limitlessfists,tag=wep1,tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s run function damages/blunt_damage
execute as @s[scores={move=14..15},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.249,tag=!Frames] damage += @s damageadd
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames] 8 entity_attack entity @s
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames] Hit 10
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Evade 8
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run execute as @e[tag=BackhandTRG,c=1,r=3] at @s run function limitless/fury_hit
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.35 10000
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run playsound mob.shock1 @a ~~~ 10000 1.25 10000
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run particle ds:ground_slam2 ^^1^-1
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run particle ds:heavy_impact1 ^^1^-1
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run particle ds:heavy_impact2 ^^1^-1
execute as @s[scores={move=14},tag=limitlessfists,tag=wep1] at @s positioned ^^^2.25 run particle ds:heavy_impact3 ^^1^-1
execute as @s[scores={move=13..14},tag=limitlessfists,tag=wep1] at @s positioned ^^^1.05 run summon ds:knockback ~~~
execute as @s[scores={move=11..13},tag=limitlessfists,tag=wep1] at @s run tag @e[tag=BackhandTRG] remove BackhandTRG
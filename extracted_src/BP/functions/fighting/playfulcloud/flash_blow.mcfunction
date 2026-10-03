playanimation @s[scores={move=30}] animation.playful_cloud.ab3
execute as @s[scores={move=1..20}] at @s run tp @s ~~~

tag @e[scores={move=1..2}] remove wep3

tag @e[scores={move=25..,Stun=1..}] remove wep3
scoreboard players set @e[scores={move=25..,Stun=1..}] move 0

scoreboard players set @e[scores={move=4..24}] Camera 4
scoreboard players set @e[scores={move=4..24}] Frames 4
scoreboard players set @e[scores={move=4..24}] Move 4

scoreboard players set @e[tag=BlowTRG] Stun 25

execute as @s[scores={move=26}] at @s positioned ^^^40 run tag @e[tag=!Frames,c=1,r=39.99,type=!item,type=!armor_stand,type=!bat,type=!xp_orb,type=!arrow,type=!ds:projectile] add BlowTRG

execute as @s[scores={move=25..26}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=25..26}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=25..26}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=25..26}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=25..26}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 1 2

execute as @s[scores={move=23..24}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=23..24}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=23..24}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=23..24}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=23..24}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 1 2

execute as @s[scores={move=23..24}] at @s positioned ^^^40 run execute as @e[tag=BlowTRG,c=1] at @s run tp @s @s
execute as @s[scores={move=23..24}] at @s positioned ^^^40 run execute as @e[tag=BlowTRG,c=1] at @s run tp @e[scores={move=20..24},c=1] ^^^-1 facing @s
execute as @s[scores={move=17..22}] at @s run tp @s ~~~ facing @e[tag=BlowTRG,c=1]
execute as @s[scores={move=17..20}] at @s run tp @e[tag=BlowTRG,c=1] ^^0.15^1.25

execute as @s[scores={move=17}] at @s run function damages/blunt_damage
execute as @s[scores={move=17..18}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.249,tag=!Frames] damage += @s damageadd
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames] 6 entity_attack entity @s
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames] Flourish 11
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Evade 6
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run playsound random.explode @a[r=50] ~~~ 10000 2 10000
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a[r=50] ~~~ 10000 2 10000
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a[r=50] ~~~ 10000 0.5 10000
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run playsound mob.shock1 @a[r=50] ~~~ 10000 1.75 10000
execute as @s[scores={move=11..18}] at @s positioned ^^^2.25 run playsound dig.chain @a[r=50] ~~~ 10000 0.75 10000
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run playsound mob.metal1 @a[r=50] ~~~ 10000 1.75 10000
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:ground_slam2 ^^1^-1
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:ground_slam2 ^^1^-1
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:impact ^^1^-1
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:heavy_impact1 ^^1^-1
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:heavy_impact2 ^^1^-1
execute as @s[scores={move=17}] at @s positioned ^^^2.25 run particle ds:heavy_impact3 ^^1^-1
execute as @s[scores={move=11..16}] at @s run tag @e[tag=BlowTRG] remove BlowTRG
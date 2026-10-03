playanimation @s[scores={move=90}] animation.pointblank

tag @s[type=!item,scores={move=1..2}] remove wep4

scoreboard players set @s[type=!item,scores={move=1..70}] Camera 4
scoreboard players set @s[type=!item,scores={move=1..90}] Frames 4
scoreboard players set @e[tag=pointblank2] Camera 4
scoreboard players set @s[type=!item,scores={move=1..}] Move 4

execute as @s[scores={move=83}] at @s run particle ds:ground_slam2
execute as @s[scores={move=83}] at @s run particle ds:leap
execute as @s[scores={move=83}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.8
execute as @s[scores={move=80..83}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=79..83}] at @s run tag @e[tag=!Frames,r=2] add pointblank2
execute as @s[scores={move=79..83}] at @s if entity @e[tag=!Frames,r=2] run scoreboard players set @s move 71
execute as @s[scores={move=70..77}] at @s unless entity @e[tag=pointblank2] run scoreboard players set @s Stun 12
execute as @s[scores={move=70..77}] at @s unless entity @e[tag=pointblank2] run scoreboard players set @s move 2

scoreboard players set @e[type=!item,tag=pointblank2] Stun 25

execute as @s[scores={move=21..70}] at @s run tp @s @s
execute as @s[scores={move=51..70}] at @s positioned ^^^0.75 run tp @e[type=!item,tag=pointblank2,c=1] ~~~ facing @s
execute as @s[scores={move=21..50}] at @s positioned ^^^0.55 run tp @e[type=!item,tag=pointblank2,c=1] ~~~ facing @s


execute as @s[scores={move=21..70}] at @s  run camera @s set minecraft:free pos ^1.5 ^2.25 ^1 facing ~~1.4~

playanimation @s[scores={move=70}] animation.pointblank2 

execute as @s[scores={move=20}] at @s run camera @a[r=20] fade time 0 0 0.5 color 255 50 50
execute as @s[scores={move=46}] at @s run playsound mob.red3 @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=20}] at @s run playsound mob.red2 @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=20}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=20}] at @s run  particle ds:red_ex1 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:red_ex2 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:red_ex4 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:red_ex5 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:red_ex6 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:red_ex7 ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:impact ^^1^1
execute as @s[scores={move=20}] at @s run  particle ds:dirt0
execute as @s[scores={move=20}] at @s run camerashake add @a[r=40] 4 0.25
execute as @s[scores={move=20}] at @s run damage @e[tag=pointblank2,c=1] 50 override
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=pointblank2,c=1] knockdown 95
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=pointblank2,c=1] Hit 3
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=pointblank2,c=1] Stun 25
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=pointblank2,c=1] Evade 25
execute as @s[scores={move=19}] at @s run summon ds:red_reverse ^^^0.25

execute as @s[scores={move=4..16}] at @s run scoreboard players set @s move 2
execute as @s[scores={move=1..2}] at @s run tag @e[tag=pointblank2] remove pointblank2


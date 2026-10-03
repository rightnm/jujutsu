playanimation @s[scores={move=70..}] animation.takedown_charge
tag @s[scores={move=1..2}] remove wep5s

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..65}] Camera 6
scoreboard players set @s[scores={move=5..}] Frames 6

execute as @s[scores={move=65}] at @s anchored eyes positioned ^^^8 run function sukuna/attacks/basic_combat/takedown_trg

execute as @s[scores={move=1..3}] at @s run tag @e[tag=takedown] remove takedown

execute as @s[scores={move=62..64}] at @s unless entity @e[tag=takedown,r=100] run scoreboard players set @s move 2

execute as @s[scores={move=62..65}] at @s if entity @e[tag=takedown,r=100] run scoreboard players set @s move 61

playanimation @s[scores={move=60..61}] animation.takedown1

scoreboard players set @e[tag=takedown] Stun 25

tag @e[tag=Frames] remove takedown

execute as @s[scores={move=56..58}] at @s run playsound mob.bat.takeoff @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=56..58}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=56..58}] at @s run particle ds:flashstep1 ^^^-0.5
camera @s[scores={move=60..61}] fade time 0 0.1 0.25 color 0 0 0
execute as @s[scores={move=25..57}] at @s run execute as @e[tag=takedown,c=1] at @s run tp @s @s
execute as @s[scores={move=25..57}] at @s run execute as @e[tag=takedown,c=1] at @s run tp @e[scores={move=25..57},tag=sukuna,c=1] ^^^0.25 facing @s
execute as @s[scores={move=50}] at @s run playsound mob.youdiehere @a[r=100] ~~~ 99999 1.05 99999

execute as @s[scores={move=32..50}] at @s run scoreboard players set @e[tag=takedown,scores={knockdown=4..}] knockdown 3

execute as @s[scores={move=25..50}] at @s  run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cYou die here!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={move=33..57}] at @s run camera @s set minecraft:free pos ^-1.5^1.4^ facing ^^1.4^

execute as @s[scores={move=32}] at @s run damage @e[tag=takedown,c=1] 2 override
execute as @s[scores={move=32}] at @s run camerashake add @a[r=25] 4 0.25 rotational
execute as @s[scores={move=32}] at @s run particle ds:ground_slam2 ^^1^0.25
execute as @s[scores={move=32}] at @s run particle ds:large_impact1 ^^1^0.25
execute as @s[scores={move=32}] at @s run particle ds:large_impact2 ^^1^0.25
execute as @s[scores={move=32}] at @s run particle ds:heavy_impact1 ^^1^0.25
execute as @s[scores={move=32}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=32}] at @s run camera @s set minecraft:free pos ^1^0.5^1.5 facing ^^1^-0.15
execute as @s[scores={move=32}] at @s run playanimation @e[tag=takedown,c=1] animation.stunned i 1

execute as @s[scores={move=17}] at @s run tp @e[tag=takedown,c=1] ^^^1 
execute as @s[scores={move=17}] at @s run damage @e[tag=takedown,c=1] 15 override
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=takedown,c=1] Evade 5
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=takedown,c=1] Hit 6
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=takedown,c=1] knockdown 30
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=takedown,c=1] Stun 25
execute as @s[scores={move=17}] at @s run camerashake add @a[r=25] 4 0.5 rotational
execute as @s[scores={move=17}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=17}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=17}] at @s run particle ds:dirt2 ~~1~
execute as @s[scores={move=17}] at @s run particle ds:dirt4 ~~~
execute as @s[scores={move=17}] at @s run particle ds:ground_dust2 ~~~
execute as @s[scores={move=17}] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=17}] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=17}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=17}] at @s run particle ds:fissure1
execute as @s[scores={move=17}] at @s run particle ds:fissure2
execute as @s[scores={move=17}] at @s run particle ds:large_slam1
execute as @s[scores={move=17}] at @s run particle ds:large_slam2
execute as @s[scores={move=17}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=17}] at @s run camera @s set minecraft:free pos ~~8~ facing ~~~
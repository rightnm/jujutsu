tellraw @s[scores={hakarimode=0,move=24}] {"rawtext":[{"text":"§aThis attack requires you to be in Jackpot Mode..."}]}
scoreboard players set @s[scores={hakarimode=0,move=4..}] move 3

playanimation @s[scores={move=24}] animation.devastating_punch

tag @s[scores={move=1..2}] remove wep3

scoreboard players set @s[scores={move=1..}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Camera 4


scoreboard players set @a[scores={move=14..15}] atk 2

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=23..24}] at @s run summon ds:dash ^^^-0.25

execute as @s[scores={move=5..20}] at @s anchored eyes run camera @s set minecraft:third_person


scoreboard players set @s[scores={move=14..96}] atk 2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^4 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^4 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^4^^4 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^4^^4 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-4^^4 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-4^^4 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^8 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^8 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^8^^8 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^8^^8 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-8^^8 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-8^^8 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^4^^8 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^4^^8 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-4^^8 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^-4^^8 run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.5 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.3 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 2 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 1.65 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.75 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.4 99999
execute as @s[scores={move=14}] at @s run camerashake add @a[r=44] 4 1
execute as @s[scores={move=14}] at @s positioned ^^^5 run scoreboard players operation @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^5 run damage @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] 14 override entity @s
execute as @s[scores={move=14}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Evade 20
execute as @s[scores={move=14}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] knockdown 95
execute as @s[scores={move=14}] at @s positioned ^^^5 run scoreboard players set @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Stun 25
execute as @s[scores={move=14}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.99,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Hit 3
execute as @s[scores={move=14}] at @s positioned ^^^2 run summon ds:red_reversal

execute as @s[scores={move=1..14}] at @s run tp @s ~~~

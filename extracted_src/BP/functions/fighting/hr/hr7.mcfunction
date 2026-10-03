playanimation @s[scores={move=60}] animation.preys_peril1
tag @s[scores={move=1..2}] remove form7

tag @s[scores={move=49..,Stun=1..}] remove form7
scoreboard players set @s[scores={move=49..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..48}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..48}] Camera 4
scoreboard players set @a[tag=preysperil] Camera 4
scoreboard players set @e[tag=preysperil,c=1] Move 4
scoreboard players set @e[tag=preysperil,c=1] Stun 25

execute as @s[scores={move=47..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=47..}] at @s if block ~~-1~ air run tp @s ~~-1~


execute as @s[scores={move=8..48}] at @s run tp @e[tag=preysperil] ^^0.25^0.5 facing @s
execute as @s[scores={move=1..48}] at @s run tp @s @s
execute as @s[scores={move=5..46}] at @s unless entity @e[tag=preysperil,c=1] run playanimation @s animation.stunned
execute as @s[scores={move=5..46}] at @s unless entity @e[tag=preysperil,c=1] run scoreboard players set @s move 2

scoreboard players set @a[scores={move=47..48}] atk 2

execute as @s[scores={move=48}] at @s anchored eyes run camera @s set minecraft:free pos ^5 ^-0.25 ^0.75 rot ~ ~90
execute as @s[scores={move=48}] at @s anchored eyes run camera @p[tag=preysperil] set minecraft:free pos ^5 ^-0.25 ^0.75 rot ~ ~90


execute as @s[scores={move=49}] at @s positioned ^^^2.6 run function damages/blunt_damage
execute as @s[scores={move=19}] at @s positioned ^^^2.6 run function damages/blunt_damage

execute as @s[scores={move=49}] at @s positioned ^^^2.6 run tag @e[tag=!Frames,r=2.59,c=1] add preysperil
execute as @s[scores={move=48}] at @s positioned ^^^2.6 run playanimation @e[tag=!Frames,r=2.59,c=1] animation.preys_peril2
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=48}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=49}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=47}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 3 override
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 3
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3


scoreboard players set @a[scores={move=45}] atk 2
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=44}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=46}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=43}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=42}] atk 2
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=41}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=42}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=41}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3


scoreboard players set @a[scores={move=38}] atk 2
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=38}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=40}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=37}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=34}] atk 2
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=34}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=34}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=34}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=31}] atk 2
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=30}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=28}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=27}] atk 2
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=26}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=26}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=26}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=23}] atk 2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=22}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=23}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=17}] atk 2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=17}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=17}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=16}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 2 override
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 2
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 3

scoreboard players set @a[scores={move=6}] atk 2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam3
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam3
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact5
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:impact
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.65 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 4 0.20
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players operation @e[tag=preysperil,c=1] damage += @s damageadd
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,c=1] 5 override
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run tag @e[tag=preysperil,c=1] add hardknockback
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] knockdown 95
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Evade 5
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,c=1] Hit 11
execute as @s[scores={move=7}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=1..5}] at @s run tag @e[tag=preysperil] remove preysperil

tag @e[scores={Evasive=1..},type=!player] remove preysperil

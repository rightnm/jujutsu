playanimation @s[scores={move=20..}] animation.hiten.ab2

tag @s[scores={move=1..2}] remove wep2


scoreboard players set @s[scores={move=1..16}] Move 8
scoreboard players set @s[scores={move=1..16}] Camera 8
scoreboard players set @s[scores={move=1..18}] Frames 6
scoreboard players set @s[scores={move=15..16}] atk 2

execute as @s[scores={move=15..16}] at @s run tp @s @s
execute as @s[scores={move=15..17}] at @s unless entity @e[name=airpassage] run summon ds:projectile ^^1^1 facing ^^1^20 none airpassage
execute as @s[scores={move=15..17}] at @s run scoreboard players set @e[name=airpassage,c=1] Deleter 15
execute as @s[scores={move=15..17}] at @s run playanimation @e[name=airpassage,c=1] animation.hiten.ab2b

execute as @s[scores={move=17}] at @s run playsound firework.blast @a[r=125] ~~~ 99999 0.8 999999
execute as @s[scores={move=15..17}] at @s run camerashake add @a[r=10] 2 0.15 rotational
execute as @s[scores={move=16}] at @s run playsound mob.wind @a[r=25] ~~~ 99999 1.25 99999
execute as @s[scores={move=16}] at @s run playsound mob.slash @a[r=25] ~~~ 99999 2.5 99999
execute as @s[scores={move=17}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 99999 1.25 99999
execute as @s[scores={move=16}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 99999 0.5 99999
execute as @s[scores={move=15..17}] at @s run particle ds:ground_slam2 ^^1^
execute as @s[scores={move=15..17}] at @s run particle ds:ground_slam2 ^^1^-2
execute as @s[scores={move=15..17}] at @s run particle ds:ground_slam3 ^^1^-1
execute as @s[scores={move=14..17}] at @s run particle ds:hiten_stars ^^1^-1
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run scoreboard players set @e[tag=!Frames,r=3.5] Stun 30
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run scoreboard players add @e[tag=!Frames,r=3.5] Evade 15
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run scoreboard players set @e[tag=!Frames,r=3.5] Hit 5
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run damage @e[tag=!Frames,r=3.5] 20 override
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run scoreboard players operation @e[tag=!Frames,r=3.5] damage += @s damageadd
execute as @s[scores={move=14..17}] at @s if block ^^^1 air run execute as @e[tag=!Frames,r=3.5] at @s run playsound mob.sword @a[r=25] ~~~ 9999 0.85 9999
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1
execute as @s[scores={move=15..16}] at @s if block ^^^1 air run tp @s ^^^1


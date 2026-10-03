playanimation @s[scores={move=40}] animation.sharpened_cloud.ab4

tag @e[scores={move=1..2}] remove wep3

execute as @s[type=!player] at @s run tp @s ~~~

tag @s[scores={move=27..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=27..,Stun=1..}] move 0

scoreboard players set @s[scores={move=14..}] Move 4
scoreboard players set @s[scores={move=14..26}] Frames 5

execute as @s[scores={move=33..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=18..25}] at @s run tp @s @s
execute as @s[scores={move=18..25}] at @s if block ^^1^1 air run tp @s ^^^3.5

execute as @s[scores={move=34}] at @s run summon ds:projectile Vorpal
execute as @s[scores={move=25..34}] at @s run tp @e[name=Vorpal,c=1] ^^1.25^6 facing ^^^20
execute as @s[scores={move=24..26}] at @s run playanimation @e[name=Vorpal,c=1] animation.vorpal_strike
execute as @s[scores={move=24..}] at @s run scoreboard players set @e[name=Vorpal,c=1] Frames 5
execute as @s[scores={move=24..}] at @s run scoreboard players set @e[name=Vorpal,c=1] Deleter 10


scoreboard players set @e[scores={move=20..26}] atk 2
effect @s[scores={move=26}] speed 1 30 true
effect @s[scores={move=20}] speed 0 20 true
effect @s[scores={move=20}] speed 1 3 true
effect @s[scores={move=13}] speed 0 20 true
execute as @s[scores={move=18..25}] at @s run function damages/slash_damage
execute as @s[scores={move=24}] at @s run playsound mob.slash1 @a[r=200] ^^1^6 1.5 1.25
execute as @s[scores={move=24}] at @s run playsound mob.swordslash @a[r=200] ^^1^6 1.5 0.5
execute as @s[scores={move=18..25}] at @s run scoreboard players operation @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] damagehalf += @s damageadd
execute as @s[scores={move=18..25}] at @s run tag @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] add vorpal
execute as @s[scores={move=18..25}] at @s run scoreboard players set @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] Stun 35
execute as @s[scores={move=18..25}] at @s run scoreboard players add @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] Hit 2
execute as @s[scores={move=18..25}] at @s run scoreboard players add @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] Evade 15
execute as @s[scores={move=18..25}] at @s run damage @e[tag=!Vorpalfinisher2,tag=!Frames,r=3.5] 11 entity_attack entity @s
execute as @s[scores={move=18..25}] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={move=18..25}] at @s if entity @e[tag=!Frames,r=3.5] run  playsound mob.slice @a ~~~ 
execute as @s[scores={move=18..25}] at @s if entity @e[tag=!Frames,r=3.5] run playsound mob.sword @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=18..25}] at @s run particle ds:ground_slam2
execute as @s[scores={move=16..18}] at @s run tp @e[tag=vorpal,c=1] ^^^1 facing @s
execute as @s[scores={move=6..15}] at @s run tag @e[tag=vorpal] remove vorpal

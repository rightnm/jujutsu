playanimation @s[scores={move=35}] animation.spacial_kick

scoreboard players set @s[scores={move=15..}] Move 4

execute as @s[scores={move=11..}] at @s run tp @s ~~~

tag @s[scores={move=26..,Stun=1..}] remove form4c
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Frames 4

execute as @s[scores={move=25}] at @s run playsound beacon.deactivate @a ~~~ 9999 0.8 9999

execute as @s[scores={move=25}] at @s anchored eyes positioned ^^^3 run function limitless/warp
execute as @s[scores={move=15..25}] at @s run execute as @e[tag=warp,c=1] at @s run tp @s ~~~
execute as @s[scores={move=15..25}] at @s run execute as @e[tag=warp,c=1] at @s run tp @e[tag=limitless,c=1,scores={move=1..25},rm=0.5] ^0.3^0.4^-1 facing @s

execute as @s[scores={move=24}] at @s run playsound music.distort3 @a ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound beacon.deactivate @a ~~~ 9999 0.8 9999
execute as @s[scores={move=24}] at @s run playsound random.glass @a ~~~ 9999 0.65 9999

execute as @s[scores={move=21..25}] at @s unless entity @e[tag=warp,r=50] run scoreboard players set @s move 3

execute as @s[scores={move=24}] at @s run camerashake add @a[r=40] 0.25 0.1
execute as @s[scores={move=35}] at @s run particle ds:lapse_pull4 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:lapse_pull3 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:spatial_warp1 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:spatial_warp2 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:spatial_warp3 ~~1~

execute as @s[scores={move=15}] at @s run function damages/blunt_damage


execute as @s[scores={move=10..15}] at @s run tp @s ~~~
execute as @s[scores={move=15}] at @s run playsound mob.shock1 @a[r=25] ~~~ 9999 2 9999
execute as @s[scores={move=15}] at @s run execute as @e[tag=warp,c=1,tag=!Frames] at @s run tp @s ~~~ facing @p[scores={move=15}]
execute as @s[scores={move=15}] at @s run damage @e[tag=warp,c=1,tag=!Frames] 8 entity_attack entity @s
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=warp,c=1,tag=!Frames] Hit 3
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=warp,c=1,tag=!Frames] Stun 15
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=warp,c=1,tag=!Frames] Evade 8
execute as @s[scores={move=14..15}] at @s run summon ds:knockback ~~~

execute as @s[scores={move=10..14}] run tag @e[tag=warp] remove warp
tag @s[scores={move=1..2}] remove form4c
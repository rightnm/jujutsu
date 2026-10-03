execute unless entity @s[scores={Deleter=0..}] run tp @s ~~~~  0
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 31
playanimation @s[scores={Deleter=29..}] animation.body_repel

execute as @s[scores={Deleter=0..1}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
event entity @s[scores={Deleter=0..1}] ds:disappear

execute unless block ~~~ air run particle ds:rubble3
execute unless block ~~-1~ air run particle ds:ground_slam2
execute as @s[scores={Deleter=29..}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999

execute as @s[scores={Deleter=0..29}] at @s if entity @p[tag=griefable] run fill ~1~2~1 ~-1~~-1 air [] destroy
execute as @s[scores={Deleter=0..29}] at @s if entity @p[tag=griefable] run kill @e[type=item,r=7]
execute as @s[scores={Deleter=27..}] at @s run tp @s ^^^2.5
execute as @s[scores={Deleter=27..}] at @s run tp @s ^^^2.5
execute as @s[scores={Deleter=0..24}] at @s run tp @s ^^^1.5
camerashake add @a[r=20] 0.15 0.15



execute as @s[scores={Deleter=2..}] at @s run execute as @e[tag=!Frames,r=4,family=!projectile] at @s unless entity @s[tag=bodyrepeled] run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=2..}] at @s run execute as @e[tag=!Frames,r=4,family=!projectile] at @s unless entity @s[tag=bodyrepeled] run playsound mob.shock1 @a[r=40] ~~~ 9999 3 9999
execute as @s[scores={Deleter=2..}] at @s run execute as @e[tag=!Frames,r=4,family=!projectile] at @s unless entity @s[tag=bodyrepeled] run damage @s 20 override
execute as @s[scores={Deleter=2..}] at @s run execute as @e[tag=!Frames,r=4,family=!projectile] at @s run tag @s add bodyrepeled
damage @e[tag=!Frames,r=4,family=!projectile] 1 override
scoreboard players set @e[tag=!Frames,r=4,family=!projectile] Hit 6
scoreboard players add @e[tag=!Frames,r=4,family=!projectile] Evade 1
scoreboard players set @e[tag=!Frames,r=4,family=!projectile] Stun 33
playanimation @e[tag=!Frames,r=4,family=!projectile] animation.stunned

execute as @s[scores={Deleter=0..4}] at @s run function damages/blunt_damage

tp @e[tag=!Frames,r=20,family=!projectile,tag=bodyrepeled] ^^0.5^1

scoreboard players set @e[tag=idle_transfig,tag=bodyrepeled,tag=form10,r=10] Frames 25
playanimation @e[tag=idle_transfig,tag=bodyrepeled,tag=form10,r=10] animation.mahito.human_ab3_ride

execute as @s[scores={Deleter=6..}] run ride @e[tag=Frames,r=20,tag=bodyrepeled] start_riding @e[type=ds:body_repel,c=1] teleport_rider

execute as @s[scores={Deleter=0..4}] run tag @e remove bodyrepeled

execute as @s[scores={Deleter=5}] at @s run execute as @e[tag=idle_transfig,tag=Frames,r=10] at @s run playsound mob.mahito_blah @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={Deleter=3}] at @s run execute as @e[tag=idle_transfig,tag=Frames,r=10] at @s run damage @e[tag=!Frames,r=5] 10 override
execute as @s[scores={Deleter=3}] at @s run execute as @e[tag=idle_transfig,tag=Frames,r=10] at @s run scoreboard players set @e[tag=!Frames,r=5] Flourish 3
execute as @s[scores={Deleter=3}] at @s run execute as @e[tag=idle_transfig,tag=Frames,r=10] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={Deleter=3}] at @s run execute as @e[tag=idle_transfig,tag=Frames,r=10] at @s run playsound mob.punch1 @a[r=50] ~~~ 99999 1.75 99999

execute if block ~~-1~ air run tp @s ~~-1~
execute if block ~~-0.15~ air run tp @s ~~-0.15~
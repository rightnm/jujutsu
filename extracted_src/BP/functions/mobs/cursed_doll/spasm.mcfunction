playanimation @s[scores={move=75}] animation.cursed_doll.spasm
execute as @s[scores={move=16..}] run tp @s ~~~ facing @e[type=!ds:cursed_doll,c=1,r=20,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand]

execute as @s[scores={move=16..65}] run playsound mob.bat.takeoff @a ~~~ 0.1 3.8
execute as @s[scores={move=16..65}] run playsound mob.enderdragon.flap @a ~~~ 0.1 3.8
execute as @s[scores={move=16..65}] run camerashake add @a[r=20] 0.1 0.08 rotational

execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=15..16}] at @s positioned ^^^10 run tag @e[c=1,r=9.95,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand] add spasm
execute as @s[scores={move=15..16}] at @s positioned ^^^10 run execute as @e[c=1,r=9.95,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,tag=spasm] at @s run tp @s @s
execute as @s[scores={move=13..16}] at @s unless entity @e[r=3,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,tag=spasm,c=1] positioned ^^^10 run execute as @e[c=1,r=9.95,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,tag=spasm] at @s run tp @e[type=ds:cursed_doll,c=1,scores={move=13..16}] ^^^1 facing @s
execute as @s[scores={move=65}] at @s run playsound mob.cartoon1 @a[r=20] ~~~ 99999 1.5 99999
execute as @s[scores={move=16}] at @s run playsound mob.cartoon2 @a[r=20] ~~~ 99999 1 99999

execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Flourish 12
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Evade 24
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Stun 60
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Hit 3
execute as @s[scores={move=10}] at @s positioned ^^^3 run damage @e[r=2.95,tag=!Frames] 8 override
execute as @s[scores={move=12}] at @s positioned ^^^3 run playsound mob.punch @a[r=90] ~~~ 90 0.85 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1.25 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact1 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact2 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact3 ^^1^2

execute as @s[scores={move=1..2}] run tag @e[tag=spasm,r=40] remove spasm
scoreboard players set @s[scores={move=1..2}] chance 0
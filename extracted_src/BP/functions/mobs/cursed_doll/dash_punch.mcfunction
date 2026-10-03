playanimation @s[scores={move=30}] animation.cursed_doll.dash_punch
execute as @s[scores={move=16..}] run tp @s ~~~ facing @e[type=!ds:cursed_doll,c=1,r=14,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand]

execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=12..15}] run scriptevent ds:knockback 3
execute as @s[scores={move=1..11}] run tp @s ~~~ facing @e[type=!ds:cursed_doll,c=1,r=14,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand]
execute as @s[scores={move=14}] at @s run playsound mob.cartoon4 @a[r=20] ~~~ 99999 1.05 99999


execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Flourish 12
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Evade 24
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Stun 60
execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Hit 3
execute as @s[scores={move=10}] at @s positioned ^^^3 run damage @e[r=2.95,tag=!Frames] 5 override
execute as @s[scores={move=12}] at @s positioned ^^^3 run playsound mob.punch @a[r=90] ~~~ 90 0.85 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1.25 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1 90
execute as @s[scores={move=10}] at @s positioned ^^^3 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact1 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact2 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact3 ^^1^2

scoreboard players set @s[scores={move=1..2}] chance 0
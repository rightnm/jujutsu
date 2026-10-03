playanimation @s[scores={move=15}] animation.cursed_doll.uppercut
execute as @s[scores={move=8..}] run tp @s ~~~ facing @e[type=!ds:cursed_doll,c=1,r=4,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand]

execute as @s[scores={move=5}] at @s run function damages/blunt_damage

execute as @s[scores={move=5}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Flourish 12
execute as @s[scores={move=5}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Evade 12
execute as @s[scores={move=5}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,tag=!Frames] Hit 3
execute as @s[scores={move=5}] at @s positioned ^^^3 run scoreboard players add @e[r=2.95,tag=!Frames] Stun 40
execute as @s[scores={move=5}] at @s positioned ^^^3 run damage @e[r=2.95,tag=!Frames] 4 override
execute as @s[scores={move=5}] at @s positioned ^^^3 run effect @e[r=2.95,tag=!Frames] levitation 1 80 true
execute as @s[scores={move=1..2}] at @s positioned ^^^3 run effect @e[r=40] levitation 0 90 true
execute as @s[scores={move=7}] at @s positioned ^^^3 run playsound mob.punch @a[r=90] ~~~ 90 1.25 90
execute as @s[scores={move=5}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1.25 90
execute as @s[scores={move=5}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1 90
execute as @s[scores={move=5}] at @s positioned ^^^3 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=5}] at @s run particle ds:ground_slam2 ^^1^2

scoreboard players set @s[scores={move=1..2}] chance 0
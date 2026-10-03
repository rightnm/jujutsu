execute as @s[name=AirCannon,tag=!Stopped] at @s run tp @s ^^^4.25 facing @e[name=AirCannonTRG,c=1]


execute as @e[name=AirCannonTRG] at @s run tp @s ~~~

execute as @s[name=AirCannon,tag=!Stopped] at @s if entity @e[name=AirCannonTRG,r=2] run kill @e[family=projectile,r=2.5]

execute as @e[name=AirCannon] at @s run particle ds:air_cannon1
execute as @e[name=AirCannon] at @s run particle ds:air_cannon2
execute as @e[name=AirCannon] at @s run particle ds:air_cannon3
execute as @e[name=AirCannon] at @s run particle ds:air_cannon4

execute as @e[name=AirCannon] at @s run camerashake add @a[r=50] 2 0.15
execute as @e[name=AirCannon] at @s run playsound random.explode @a[r=90] 90 1 90
execute as @e[name=AirCannon] at @s run playsound elytra.loop @a[r=90] 90 3 90

execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run kill @e[type=item,r=35]
execute as @s[name=AirCannon,scores={Deleter=1..}] at @s run effect @e[r=100] resistance 1 2 true

execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run damage @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=5] 2 override
execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=5] Stun 7
execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=5] Evade 7
execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s if entity @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=4.9] at @s run summon ds:mahoraga_knockback1
execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run summon ds:lapse_explode "Air Cannon" ^^^-5 
execute as @s[name=AirCannon,scores={Deleter=1..20}] at @s run kill @e[type=item,r=15]
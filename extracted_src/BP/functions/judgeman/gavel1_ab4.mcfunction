playanimation @s[scores={move=105}] animation.gavel1.ab4

scoreboard players set @s[scores={move=96..,Stun=1..}] move 2

execute as @s[scores={move=1..4}] run scoreboard players set @a[r=20] Camera 5
execute as @s[scores={move=1..3}] run tag @e[tag=judgementstrike] remove judgementstrike
tag @s[scores={move=1..2},tag=wep4] remove wep4
execute as @s[scores={move=94}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.95

scoreboard players random @s[scores={move=51}] blackflashchance 1 269
scoreboard players set @s[scores={move=51},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=11..94}] Frames 5
scoreboard players set @s[scores={move=11..}] Move 5
scoreboard players set @s[scores={move=11..85}] Camera 5
scoreboard players set @s[scores={move=1..25}] AfterAnim 10

scoreboard players set @e[tag=judgementstrike,c=1,r=15] Stun 6
scoreboard players set @e[tag=judgementstrike,c=1,r=15] Camera 5

execute as @s[scores={move=86..93}] at @s unless entity @e[tag=!Frames,r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run scriptevent ds:knockback 3

execute as @s[scores={move=85}] at @s  run tag @e[tag=!Frames,r=2,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] add judgementstrike
execute as @s[scores={move=85}] at @s  run playanimation @e[tag=!Frames,r=2,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] animation.gavel1.ab4b
execute as @s[scores={move=72..80}] at @s unless entity @e[tag=judgementstrike,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run playanimation @s animation.gavel.idle
execute as @s[scores={move=72..80}] at @s unless entity @e[tag=judgementstrike,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run scoreboard players set @s move 2

execute as @s[scores={move=84}] at @s  run tp @e[tag=judgementstrike,c=1,r=15] ^^7^3 facing @s
execute as @s[scores={move=30..84}] at @s run tp @s @s
execute as @e[tag=judgementstrike,c=1,r=15] at @s run tp @s @s


execute as @s[scores={move=85}] at @s  run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact1 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact2 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact3 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact5 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:parry1 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:parry2 ^^1^1
execute as @s[scores={move=85}] at @s  run particle ds:ground_slam2 ^^1^1
execute as @s[scores={move=85}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=85}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.80 9999
execute as @s[scores={move=85}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=85}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.15 9999
execute as @s[scores={move=85}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.05 9999
execute as @s[scores={move=85}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.7 9999


title @s[scores={move=47..79},tag=!impactframesoff,type=player] title 
title @s[scores={move=46},tag=!impactframesoff,type=player] title 
title @s[scores={move=45},tag=!impactframesoff,type=player] title 
title @s[scores={move=44},tag=!impactframesoff,type=player] title 
title @s[scores={move=43},tag=!impactframesoff,type=player] title 
title @s[scores={move=25..42},tag=!impactframesoff,type=player] title 

execute as @s[scores={move=47..79}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=46}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=45}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=44}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=43}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=25..42}] at @s run execute as @e[tag=judgementstrike,r=15,c=1] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 


execute as @s[scores={move=85},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^2.5 facing ~~~
execute as @s[scores={move=72},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1 ^-1.5 ^2 facing ~~~
execute as @s[scores={move=65},type=player] at @s anchored eyes  run camera @s set minecraft:free pos ^2 ^3 ^-2 facing ~~~
execute as @s[scores={move=60},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-1.5 ^3 facing ~~~
execute as @s[scores={move=47},type=player] at @s anchored eyes positioned ^7 ^-5 ^5 run camera @s set minecraft:free pos ~~~ facing ^-7^1^

execute as @s[scores={move=28},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^-1^3 facing ~~-0.75~
execute as @s[scores={move=27},type=player] at @s anchored eyes run camera @s set minecraft:free ease 1.2 in_sine pos ^^-1^3 facing ~~~
execute as @s[scores={move=15},type=player] at @s anchored eyes run camera @s fade time 0.5 0.25 0.15 color 0 0 0

execute as @s[scores={move=85}] at @s anchored eyes run execute as @e[tag=judgementstrike,r=15,c=1] if entity @s[type=player] run camera @s set minecraft:free pos ^ ^ ^2.5 facing ~~~
execute as @s[scores={move=72}] at @s anchored eyes run execute as @e[tag=judgementstrike,r=15,c=1] if entity @s[type=player] run camera @s set minecraft:free pos ^1 ^-1.5 ^2 facing ~~~
execute as @s[scores={move=65},type=player] at @s anchored eyes  run camera @s set minecraft:free pos ^2 ^3 ^-2 facing ~~~
execute as @s[scores={move=60}] at @s anchored eyes run execute as @e[tag=judgementstrike,r=15,c=1] if entity @s[type=player] run camera @s set minecraft:free pos ^ ^-1.5 ^3 facing ~~~
execute as @s[scores={move=47}] at @s anchored eyes positioned ^7 ^-5 ^5 run execute as @e[tag=judgementstrike,r=15,c=1] if entity @s[type=player] run camera @s set minecraft:free pos ~~~ facing ^-7^1^

execute as @s[scores={move=64}] at @s run camerashake add @a[r=20] 4 0.15 rotational

execute as @s[scores={move=74}] at @s run camerashake add @a[r=10] 2 0.2
execute as @s[scores={move=74}] at @s run particle ds:flashstep1 
execute as @s[scores={move=74}] at @s run particle ds:flashstep2
execute as @s[scores={move=72}] at @s run particle ds:flashstep1 
execute as @s[scores={move=72}] at @s run particle ds:flashstep2
execute as @s[scores={move=73}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run tp @e[scores={move=73},c=1] ^^2^3.5 facing @s

execute as @e[tag=judgementstrike,r=15,c=1] at @s unless block ~~~ air run tp @s ~~0.33~
execute as @s[scores={move=1..44}] at @s unless block ~~~ air run tp @s ~~0.33~

execute as @s[scores={move=64}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run tp @e[scores={move=64},c=1] ^^^0.15 facing @s
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:heavy_impact5 ~~1~
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run particle ds:dirt0
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.80 9999
execute as @s[scores={move=63}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=62}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run tp @s ^^-0.5^-4

execute as @s[scores={move=61}] at @s run particle ds:judgement_strike ^^1^-0.5
execute as @s[scores={move=61}] at @s run  playsound beacon.power @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=61}] at @s run  playsound music.bass3 @a[r=50] ~~~ 9999 1.5 9999

execute as @s[scores={move=45}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run tp @s ^^-6.3^-3
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run tp @e[scores={move=44},c=1] ^^0.025^-4 facing ^^1^-20
execute as @s[scores={move=44}] at @s  run camerashake add @a[r=10] 4 0.15
execute as @s[scores={move=44}] at @s  run effect @a[r=50] night_vision 1 1 true
execute as @s[scores={move=42}] at @s  run effect @a[r=50] night_vision 0 20 true
execute as @s[scores={move=44}] at @s  run particle ds:heavy_impact1 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:heavy_impact2 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:heavy_impact3 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:heavy_impact5 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:parry1 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:parry2 ^^1^-2
execute as @s[scores={move=44}] at @s  run particle ds:ground_slam2 ^^1^-2
execute as @s[scores={move=44}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.44 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound item.trident.thunder @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.80 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.15 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.05 9999
execute as @s[scores={move=44}] at @s  run execute as @e[tag=judgementstrike,r=15,c=1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=43}] at @s  run damage @e[tag=judgementstrike,r=15,c=1] 16 override
execute as @s[scores={move=43}] at @s  run scoreboard players add @e[tag=judgementstrike,r=15,c=1] Evade 25
execute as @s[scores={move=43}] at @s  run scoreboard players add @e[tag=judgementstrike,r=15,c=1] knockdown 50
execute as @s[scores={move=43}] at @s  run scoreboard players add @e[tag=judgementstrike,r=15,c=1] Hit 5
execute as @s[scores={move=43}] at @s  run scoreboard players add @e[tag=judgementstrike,r=15,c=1] Stun 50
execute as @s[scores={move=42}] at @s  run scoreboard players operation @e[tag=judgementstrike,r=15,c=1] damage += @s damageadd
execute as @s[scores={move=31}] at @s run tag @e[tag=judgementstrike] remove judgementstrike


playanimation @s[scores={move=40}] animation.crimson_sun
tag @s[scores={move=1..2},tag=form6b] remove form6b

tag @s[scores={move=17..40,Stun=1..},tag=form6b] remove form6b
playanimation @s[scores={move=17..40,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=17..40,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..17}] Frames 4
scoreboard players set @s[scores={move=1..11}] Camera 4
scoreboard players set @s[scores={move=1..11}] atk 2

execute as @s[scores={move=38..41}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=12..16}] at @s unless entity @e[tag=!Frames,type=!ds:ember_insect,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scriptevent ds:knockback 5

execute as @s[scores={move=16..17}] at @s positioned ^^1^-0.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 1.25 99999
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_hit1
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_hit2
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_hit3
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_hit4
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_hit5
execute as @s[scores={move=17}] at @s positioned ^^1^-0.5 run particle ds:fire_downslam6

execute as @s[scores={move=10..11}] at @s run tp @s @s
scoreboard players set @e[tag=crimsonsun,c=1,r=40] Stun 25

execute as @s[scores={move=10}] at @s positioned ^^^2.25 run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.7 99999
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run playsound random.explode @a[r=100] ~~~ 99999 1.7 99999
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run playsound mob.shock1 @a[r=100] ~~~ 99999 1.7 99999
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:large_impact1
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:large_impact2
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:fire_hit1
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:fire_hit2
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:fire_hit3
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:fire_hit4
execute as @s[scores={move=10}] at @s positioned ^^^1.75 run tag @e[tag=!Frames,type=!ds:ember_insect,r=2.249,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add crimsonsun

execute as @s[scores={move=10}] at @s positioned ^^^1.75 if entity @e[tag=!Frames,r=2.249,c=1,tag=crimsonsun,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tp @e[tag=crimsonsun,r=2.249,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] ^^35^35 facing @s


execute as @s[scores={move=4..9}] at @s if entity @e[tag=crimsonsun,c=1,r=70] run scoreboard players set @s move 1141


execute as @e[tag=crimsonsun,c=1,r=40] at @s run tp @s @s 
execute as @s[scores={move=1075..}] at @s run playanimation @e[tag=crimsonsun,r=40,c=1] animation.crimson_sun_stun

title @s[scores={move=42..},tag=!impactframesoff,type=player] title 
title @a[tag=crimsonsun,tag=!impactframesoff,c=1,r=40] title  

playanimation @s[scores={move=1140}] animation.crimson_sun2
execute as @s[scores={move=1140}] at @s run tp @s @s
camera @s[scores={move=1139},type=player] set minecraft:free ease 0.3 in_sine pos ^^0.15^-4 facing ^^0.25^-0.5
camera @s[scores={move=1130},type=player] set minecraft:free ease 1.25 in_out_circ pos ^4^0.1^-1.5 facing @e[tag=crimsonsun,c=1,r=40]

execute as @s[scores={move=1119}] at @s run playsound music.bass3 @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=1119}] at @s run camerashake add @a[r=50] 1 0.17 rotational

execute as @s[scores={move=1126}] at @s run particle ds:ground_slam1
execute as @s[scores={move=1126}] at @s run particle ds:ground_slam2
execute as @s[scores={move=1126}] at @s run particle ds:ground_slam3
execute as @s[scores={move=1126}] at @s run particle ds:crater2
execute as @s[scores={move=1126}] at @s run particle ds:rubble3
execute as @s[scores={move=1126}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=1126}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.75 99999
execute as @s[scores={move=1126}] at @s run playsound random.explode @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=1126}] at @s run camerashake add @a[r=50] 4 0.15

camera @s[scores={move=1126},type=player] fade time 0.15 0.25 0.25 color 0 0 0

execute as @s[scores={move=1000..1125}] at @s run execute as @e[tag=crimsonsun,c=1,r=40] at @s run tp @e[scores={move=1000..1125},c=1,r=40] ^^^0.75 facing @s 
camera @s[scores={move=1112},type=player] set minecraft:free pos ^1^3^3 facing ^^-1^-1
camera @s[scores={move=1092},type=player] set minecraft:free pos ^4^1.25^0.75 facing ^^1.25^0.75

camera @s[scores={move=1082},type=player] set minecraft:free pos ^0.5^1.25^0.85 facing ^-0.15^1.25^
camera @s[scores={move=1184},type=player] fade time 0.05 0 0.05 color 0 0 0
execute as @s[scores={move=1173..1184}] at @s run camerashake add @a[r=20] 0.15 0.15 rotational

execute as @s[scores={move=1071}] at @s run playsound music.crimsonsun @s ~~~ 9999 1 9999
execute as @s[scores={move=1071}] at @s run playsound music.crimsonsun @p[tag=crimsonsun,c=1] ~~~ 9999 1 9999
execute as @s[scores={move=1071}] at @s run playsound mob.crimsonsun @a[rm=5,r=1000] ^^1^1 99999 1 99999

camera @s[scores={move=1070},type=player] set minecraft:free pos ^0.5^1.25^-0.85 facing ^-0.15^1.25^3
execute as @s[scores={move=1070}] at @s run camerashake add @a[r=40] 1 0.15 rotational

execute as @s[scores={move=1040..1060}] at @s run particle ds:flame_stars ^^1^1
execute as @s[scores={move=1035..1045}] at @s run camerashake add @a[r=40] 4 0.15

execute as @s[scores={move=1070}] at @s run particle ds:fire_hit1 ^^1^1 
execute as @s[scores={move=1070}] at @s run particle ds:fire_hit2 ^^1^1 
execute as @s[scores={move=1070}] at @s run particle ds:fire_hit3 ^^1^1 
execute as @s[scores={move=1070}] at @s run particle ds:fire_hit4 ^^1^1 
execute as @s[scores={move=1070}] at @s run particle ds:fire_hit5 ^^1^1 

execute as @s[scores={move=1040}] at @s run  camerashake add @a[r=40] 4 0.25 rotational
execute as @s[scores={move=1040}] at @s run particle ds:invert ^^1^1 
execute as @s[scores={move=1045}] at @s run particle ds:invert ^^1^1 

execute as @s[scores={move=1050}] at @s run camera @a[r=20] fade time 0.5 0.15 0.5 color 255 255 255

camera @s[scores={move=1040},type=player] set minecraft:free pos ^5.5^1.5^0.75 facing ^^1.5^0.75

execute as @s[scores={move=1030}] at @s run particle ds:invert ^1^1^1 

execute as @s[scores={move=1030}] at @s run effect @a[r=10] night_vision 1 1 true
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun6 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun7 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun8 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun9 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun10 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:ground_slam2 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun11 ^1^1.5^0.75
execute as @s[scores={move=1030}] at @s run particle ds:crimson_sun12 ^1^1.5^0.75
execute as @s[scores={move=1028..1030}] at @s run particle ds:flame_stars2 ^1^1.5^0.75

execute as @s[scores={move=1000}] at @s run particle ds:invert ^1^1^1
execute as @s[scores={move=996}] at @s run particle ds:invert ^1^1^1
execute as @s[scores={move=1000}] at @s run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=996}] at @s run camerashake add @a[r=200] 4 0.35 rotational
execute as @s[scores={move=1000}] at @s run camera @a[r=40] fade time 0 0 0.6 color 255 255 255
execute as @s[scores={move=1000}] at @s run particle ds:large_impact1 ^^1^0.75
execute as @s[scores={move=1000}] at @s run particle ds:large_impact2 ^^1^0.75
execute as @s[scores={move=1000}] at @s run particle ds:large_impact3 ^^1^0.75 
execute as @s[scores={move=1000}] at @s run playsound mob.shock1 @a[r=100] ~~~ 0.1 1.35
execute as @s[scores={move=1000}] at @s run damage @e[tag=crimsonsun,c=1,r=5] 125 override
execute as @s[scores={move=1000}] at @s run scoreboard players set @e[tag=crimsonsun,c=1,r=5] Hit 15
execute as @s[scores={move=1000}] at @s run scoreboard players add @e[tag=crimsonsun,c=1,r=5] Evade 25
execute as @s[scores={move=1000}] at @s run scoreboard players add @e[tag=crimsonsun,c=1,r=5] knockdown 90
execute as @s[scores={move=1000}] at @s run scoreboard players add @e[tag=crimsonsun,c=1,r=5] onfire 100
execute as @s[scores={move=998..1000}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=1000}] at @s run function damages/fire_damage
execute as @s[scores={move=1000}] at @s run function damages/explosion_damage
execute as @s[scores={move=1000}] at @s run tag @e[tag=crimsonsun,r=5,c=1] remove crimsonsun

execute as @s[scores={move=990..999}] at @s run tp @s @s
scoreboard players set @s[scores={move=988..991}] move 2

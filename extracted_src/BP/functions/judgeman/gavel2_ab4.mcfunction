playanimation @s[scores={move=100}] animation.gavel2.ab4

scoreboard players set @s[scores={move=96..,Stun=1..}] move 2

execute as @s[scores={move=1..4}] run scoreboard players set @a[r=20] Camera 5
execute as @s[scores={move=1..3}] run tag @e[tag=risingstrike] remove risingstrike
tag @s[scores={move=1..2},tag=wep4] remove wep4
execute as @s[scores={move=94}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.95

scoreboard players set @s[scores={move=11..75}] Frames 5
scoreboard players set @s[scores={move=11..}] Move 5
scoreboard players set @s[scores={move=11..63}] scene 3
scoreboard players set @s[scores={move=11..65}] Camera 5
scoreboard players set @s[scores={move=1..25}] AfterAnim 10

scoreboard players random @s[scores={move=34}] blackflashchance 1 269
scoreboard players set @s[scores={move=34},tag=blackflashrig] blackflashchance 7

scoreboard players set @e[tag=risingstrike,c=1] scene 3
scoreboard players set @e[tag=risingstrike,c=1] Move 5
scoreboard players set @e[tag=risingstrike,c=1] Stun 25
scoreboard players set @e[tag=risingstrike,c=1] Disabled 25
scoreboard players set @e[tag=risingstrike,c=1] Camera 5

execute as @s[scores={move=29..65}] at @s run tp @e[tag=risingstrike,type=!player,c=1,r=15] ^-0.13^^0.75 facing @s

execute as @s[scores={move=66..93}] at @s unless entity @e[tag=!Frames,r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run scriptevent ds:knockback 1.5
execute as @s[scores={move=66..93}] at @s if entity @e[tag=!Frames,r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run scriptevent ds:knockback 1

execute as @s[scores={move=65}] at @s  run tag @e[tag=!Frames,r=3,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] add risingstrike
execute as @s[scores={move=63..65}] at @s  run playanimation @e[tag=!Frames,r=3,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] animation.gavel2.ab4b
execute as @s[scores={move=63..65}] at @s if entity @e[tag=risingstrike,r=15] at @s run tp @s @s
execute as @s[scores={move=63..65}] at @s run tp @e[tag=risingstrike,r=15,c=1] ^-0.13^^0.75 facing @s
execute as @s[scores={move=55..60}] at @s unless entity @e[tag=risingstrike,r=15] run playanimation @s animation.gavel.idle
execute as @s[scores={move=55..60}] at @s unless entity @e[tag=risingstrike,r=15] run scoreboard players set @s move 2

execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact5 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:ground_slam3 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:ground_slam3 ~~1~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run camera @a[r=35] fade time 0 0 0.1 color 255 255 255
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run camerashake add @a[r=50] 4 0.15
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 1.7 9999
execute as @s[scores={move=64}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound random.explode @a[r=100] ~~~ 9999 2 9999

execute as @s[scores={move=61}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound music.bass3 @a[r=100] ~~~ 9999 1.2 9999

execute as @s[scores={move=62},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^0.5 ^1 ^1.5 facing ~~~
execute as @s[scores={move=61},type=player] at @s anchored eyes  run camera @s set minecraft:free ease 1 in_out_circ pos ^-1 ^-0.25 ^0.6 facing ~~~
execute as @s[scores={move=45},type=player] at @s anchored eyes  run camera @s set minecraft:free ease 0.42 in_expo pos ^-0.85 ^-0.5 ^-1.25 facing ^^^10

execute as @s[scores={move=33}] at @s run execute as @e[tag=risingstrike,c=1,r=15] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=32}] at @s run execute as @e[tag=risingstrike,c=1,r=15] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=31}] at @s run execute as @e[tag=risingstrike,c=1,r=15] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=30}] at @s run execute as @e[tag=risingstrike,c=1,r=15] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title 
execute as @s[scores={move=29}] at @s run execute as @e[tag=risingstrike,c=1,r=15] at @s if entity @s[tag=!impactframesoff,type=player] run title @s title §l

title @s[scores={move=33},tag=!impactframesoff,type=player] title 
title @s[scores={move=32},tag=!impactframesoff,type=player] title 
title @s[scores={move=31},tag=!impactframesoff,type=player] title 
title @s[scores={move=30},tag=!impactframesoff,type=player] title 
title @s[scores={move=29},tag=!impactframesoff,type=player] title §l

execute as @s[scores={move=37}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:rising_strike1 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:rising_strike2 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:large_impact1 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:large_impact2 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact1 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact2 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact3 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:heavy_impact5 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:ground_slam3 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run particle ds:ground_slam3 ^-0.15^1^0.5
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run camerashake add @a[r=50] 4 0.25
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=33}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 1.7 9999
execute as @s[scores={move=29}] at @s if entity @e[tag=risingstrike,r=15] at @s run playsound random.explode @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=1..32}] at @s if entity @e[tag=risingstrike,r=15] at @s run tp @s ~~~
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run damage @e[tag=risingstrike,c=1,r=15] 20 override
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run scoreboard players operation @e[tag=risingstrike,c=1,r=15] damage += @s damageadd
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run effect @e[tag=risingstrike,c=1,r=15] levitation 1 30 true
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run scoreboard players set @e[tag=risingstrike,c=1,r=15] Hit 10
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run scoreboard players set @e[tag=risingstrike,c=1,r=15] knockdown 120
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run summon ds:red_reverse ^-0.5^^
execute as @s[scores={move=28}] at @s if entity @e[tag=risingstrike,r=15] at @s run summon ds:red_reverse ^-0.5^^
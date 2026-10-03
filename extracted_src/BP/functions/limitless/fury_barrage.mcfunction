playanimation @s[scores={move=120}] animation.fury_barrage

execute as @s[scores={move=120}] at @s run tp @s @s

tag @s[type=!item,scores={move=1..2}] remove wep2

tag @s[type=!item,scores={move=115..,Stun=1..}] remove wep2
scoreboard players set @s[type=!item,scores={move=115..,Stun=1..}] move 0

scoreboard players set @e[type=!item,scores={move=1..114}] Camera 4
scoreboard players set @e[type=!item,scores={move=1..114}] Frames 4
scoreboard players set @e[type=!item,scores={move=1..114}] Move 4

scoreboard players set @e[type=!item,tag=FuryBarrage2] Stun 25

execute as @s[scores={move=1..111}] at @s run tp @s ~~~ facing @e[type=!item,tag=FuryBarrage2,c=1]
execute as @s[scores={move=1..111}] at @s positioned ^^^1.25 run tp @e[type=!item,tag=FuryBarrage2,c=1] ~~~ facing @s
execute as @s[scores={move=1..}] at @s run tp @s @s

execute as @s[scores={move=81..105}] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^1 ^1 ^1.25 rot ~38 ~110
execute as @s[scores={move=41..80}] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^-1.85 ^-0.33 ^0.35 rot ~-9 ~280
execute as @s[scores={move=12..41}] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^1.25 ^-0.35 ^0.75 rot ~-7 ~90
execute as @s[scores={move=1..11}] at @s anchored eyes run camera @a[r=200] clear

execute as @s[scores={move=111}] at @s positioned ^^^2.25 run tag @e[type=!item,r=2.249,tag=!Frames] add FuryBarrage2
execute as @s[scores={move=111}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 1 entity_attack entity @s
execute as @s[scores={move=111}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=111}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=111}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=111}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 1.5 10000
execute as @s[scores={move=111}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.45 10000

execute as @s[scores={move=106..107}] at @s positioned ^^^2.25 unless entity @e[type=!item,tag=FuryBarrage2,r=10] run playanimation @s animation.stunned
execute as @s[scores={move=106..107},tag=limitlessfists] at @s positioned ^^^2.25 unless entity @e[type=!item,tag=FuryBarrage2,r=10] run camera @a[r=10] clear
execute as @s[scores={move=106..107}] at @s positioned ^^^2.25 unless entity @e[type=!item,tag=FuryBarrage2,r=10] run tag @s remove wep2
execute as @s[scores={move=106..107},tag=limitlessfists] at @s positioned ^^^2.25 unless entity @e[type=!item,tag=FuryBarrage2,r=10] run scoreboard players set @s move 0

execute as @s[scores={move=41..70}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 1 override


execute as @s[scores={move=104}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 1 entity_attack entity @s
execute as @s[scores={move=104}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=104}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=104}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=104}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 1.35 10000

execute as @s[scores={move=99}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 1 entity_attack entity @s
execute as @s[scores={move=99}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=99}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=99}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=93}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=93}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=93}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=93}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 1.15 10000

execute as @s[scores={move=87}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=87}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=87}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=81}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=81}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=81}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=80}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=80}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=80}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=80}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=80}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=80}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=78}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=78}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=78}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=78}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=78}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=78}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=76}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=76}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=76}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=75}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=75}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=75}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=76}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=76}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=76}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=75}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=75}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=75}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=74}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=74}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=74}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=73}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=73}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=73}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=72}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=72}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=72}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=71}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=71}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=71}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=40..70}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=40..70}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=40..70}] at @s positioned ^^^1.25 run function limitless/fury_hit

execute as @s[scores={move=35}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=35}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=35}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=35}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 1.6 10000

execute as @s[scores={move=30}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 1 entity_attack entity @s
execute as @s[scores={move=30}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] Hit 3
execute as @s[scores={move=30}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 1
execute as @s[scores={move=30}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=30}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 1.3 10000


scoreboard players random @s[scores={move=24}] blackflashchance 1 69
scoreboard players set @s[scores={move=24},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=20..21}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run scoreboard players operation @e[type=!item,r=2.249,tag=!Frames] damage += @s damageadd
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run damage @e[type=!item,r=2.249,tag=!Frames] 25 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Hit 15
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run scoreboard players add @e[type=!item,r=2.249,tag=!Frames] Evade 7
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run scoreboard players set @e[type=!item,r=2.249,tag=!Frames] knockdown 95
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run effect @e[type=!item,r=2.249,tag=!Frames] levitation 1 13 true
execute as @s[scores={move=19..20}] at @s positioned ^^^1.5 run summon ds:knockback ^-1.5 ^ ^
execute as @s[scores={move=20}] at @s positioned ^^^1.25 run function limitless/fury_hit
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.5 10000
execute as @s[scores={move=20}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.75 10000
execute as @s[scores={move=1..20}] at @s positioned ^^^2.25 run tag @e[type=!item,r=2.249,tag=!Frames] remove FuryBarrage2

title @s[tag=!impactframesoff,scores={move=20}] title 
title @s[tag=!impactframesoff,scores={move=19}] title 
title @s[tag=!impactframesoff,scores={move=18}] title 
title @s[tag=!impactframesoff,scores={move=17}] title 
title @s[tag=!impactframesoff,scores={move=16}] title 
title @s[tag=!impactframesoff,scores={move=15}] title §l
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=21}] at @s positioned ^^^2.25 run execute as @e[type=!item,tag=FuryBarrage2,c=1,r=3] at @s run particle ds:ground_slam2 ~~1~

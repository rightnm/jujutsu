playanimation @s[scores={move=80}] animation.rising_thunder

execute as @s[scores={move=1..4}] at @s run tag @e[tag=risingthunder] remove risingthunder
tag @s[scores={move=1..2},tag=form4b] remove form4b

scoreboard players set @s[scores={move=1..}] Frames 5
scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @e[tag=risingthunder,c=1] Camera 5
scoreboard players set @e[tag=risingthunder,c=1] Move 5


execute as @s[scores={move=71..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=71..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=71..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=71..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=71..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=12..68}] at @s unless entity @e[tag=risingthunder] run playanimation @s animation.stunned
execute as @s[scores={move=12..68}] at @s unless entity @e[tag=risingthunder] run scoreboard players set @s move 2


execute as @s[scores={move=70}] at @s run function damages/electric_damage
execute as @s[scores={move=70}] at @s run function damages/blunt_damage

execute as @s[scores={move=70}] at @s run function damages/electric_damage
execute as @s[scores={move=70}] at @s run function damages/blunt_damage


execute as @s[scores={move=13}] at @s run playsound random.explode @a[r=50] ~~~ 99999 1.25 9999
execute as @s[scores={move=13}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.75 9999
execute as @s[scores={move=13}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 1.75 9999
execute as @s[scores={move=13}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.35 9999
execute as @s[scores={move=13}] at @s run playsound mob.electricity @a[r=50] ~~~ 99999 0.95 9999
execute as @s[scores={move=13}] at @s run playsound mob.shocked1 @a[r=50] ~~~ 99999 0.85 9999

scoreboard players set @e[tag=risingthunder,c=1] knockdown 100
scoreboard players set @e[tag=risingthunder,c=1] Stun 25

execute as @s[scores={move=70}] at @s positioned ^^^2.55 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run scoreboard players set @e[tag=!Frames,r=2.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run scoreboard players set @e[tag=!Frames,r=2.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 4
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run scoreboard players add @e[tag=!Frames,r=2.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 13
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run damage @e[tag=!Frames,r=2.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 5 override
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run tag @e[tag=!Frames,r=2.5,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] add risingthunder
execute as @s[scores={move=70}] at @s positioned ^^^2.55 run effect @e[tag=!Frames,r=2.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] levitation 1 30 true
execute as @s[scores={move=69}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=69}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=1..72}] at @s run tp @s @s
execute as @s[scores={move=65}] at @s anchored eyes run camera @a[tag=risingthunder,c=1] set minecraft:free pos ^ ^ ^2.5 rot ~ ~180
execute as @s[scores={move=65},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^2.5 rot ~ ~180

execute as @s[scores={move=59}] at @s anchored eyes run camera @a[tag=risingthunder,c=1] fade time 0.1 0.1 0.15 color 255 255 255
execute as @s[scores={move=59},type=player] at @s anchored eyes run camera @s fade time 0.1 0.1 0.15 color 255 255 255

execute as @s[scores={move=1..55}] at @s run execute as @e[type=!item,tag=risingthunder,c=1] at @s run tp @s @s
execute as @s[scores={move=11..55}] at @s run execute as @e[type=!item,tag=risingthunder,c=1] at @s run tp @e[scores={move=1..55},c=1] ^^0.2^0.25 facing @s

execute as @s[scores={move=54}] at @s run playsound music.bass3 @a[tag=risingthunder] ~~~ 999999 1 999999
execute as @s[scores={move=54}] at @s run playsound music.bass3 @s ~~~ 999999 1 999999
execute as @s[scores={move=16..54}] at @s run title @a[c=2,tag=!impactframesoff,r=30] title 
execute as @s[scores={move=14..54}] at @s run particle ds:cutscene_black1

execute as @s[scores={move=54}] at @s anchored eyes run camera @a[tag=risingthunder,c=1] set minecraft:free pos ^2.4 ^-0.75 ^0.35 rot ~-35 ~90
execute as @s[scores={move=54},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^2.4 ^-0.75 ^0.35 rot ~-35 ~90

execute as @s[scores={move=21..54}] at @s run title @a[c=2,tag=!impactframesoff,r=30] title 

execute as @s[scores={move=21}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=20}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=19}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=18}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=17}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=16}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=15}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=14}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=13}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title 
execute as @s[scores={move=9..12}] at @s run title @a[c=2,tag=!impactframesoff,r=10] title §l
execute as @s[scores={move=18}] at @s run playsound music.bassboost @a[r=100] ~~~ 999999 1 99999
execute as @s[scores={move=14}] at @s run camera @a[c=2,r=10] fade time 0 0.15 0.15 color 255 255 255

execute as @s[scores={move=10},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^12.4 ^-2 ^0.85 rot ~-45 ~90

execute as @s[scores={move=11}] at @s run playsound random.explode @a[r=400] ~~~ 99999 0.5 99999
execute as @s[scores={move=11}] at @s run playsound random.explode @a[r=400] ~~~ 99999 0.35 99999
execute as @s[scores={move=11}] at @s run playsound mob.shock1 @a[r=400] ~~~ 99999 0.35 99999
execute as @s[scores={move=11}] at @s run playsound mob.shock1 @a[r=400] ~~~ 99999 0.5 99999
execute as @s[scores={move=11}] at @s run playsound mob.wither.shoot @a[r=400] ~~~ 99999 0.75 99999
execute as @s[scores={move=11}] at @s run playsound mob.wither.shoot @a[r=400] ~~~ 99999 0.5 99999
execute as @s[scores={move=11}] at @s run playsound mob.shocked3 @a[r=400] ~~~ 99999 0.75 99999

execute as @s[scores={move=11}] at @s run damage @e[tag=risingthunder,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 30 entity_attack entity @s
execute as @s[scores={move=11}] at @s run scoreboard players set @e[tag=risingthunder,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 10
execute as @s[scores={move=11}] at @s run scoreboard players set @e[tag=risingthunder,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 40
execute as @s[scores={move=11}] at @s run scoreboard players operation @e[tag=risingthunder,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] damage += @s damageadd
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact1 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact2 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact3 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact5 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:ground_slam1 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:ground_slam2 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:ground_slam3 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:ground_slam4 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:electro_carve1a ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:electro_carve2a ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:electro_carve3a ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:dirt0 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:dirt4 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^0.3
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^7
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^14
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^21
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^28
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^35
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^42
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^49
execute as @s[scores={move=11}] at @s run particle ds:impact1 ^^^56
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^10
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^17
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^24
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^31
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^38
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^45
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^52
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^10
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^17
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^24
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^31
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^38
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^45
execute as @s[scores={move=12}] at @s run summon ds:red_reversal ^^^52
execute as @s[scores={move=1..12}] at @s run kill @e[type=item,r=80]

execute as @s[scores={move=9}] at @s run tp @e[tag=risingthunder,c=1] ^^^45
execute as @s[scores={move=1..9}] at @s run tag @e[tag=risingthunder] remove risingthunder


scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7


execute as @s[scores={move=67..70}] at @s run summon ds:lapse_explode ^^25^30
execute as @s[scores={move=60..62}] at @s run tp @e[tag=risingthunder,c=1] ^^25^30



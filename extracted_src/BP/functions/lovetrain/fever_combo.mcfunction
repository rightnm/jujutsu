tellraw @s[scores={hakarimode=0,move=109}] {"rawtext":[{"text":"§aThis attack requires you to be in Jackpot Mode..."}]}
scoreboard players set @s[scores={hakarimode=0,move=4..109}] move 3

playanimation @s[scores={move=109}] animation.fever_combo

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=97..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=97..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..94}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..94}] Camera 4


scoreboard players set @a[scores={move=94..95}] atk 2

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=1..12}] at @s run tag @e[tag=FeverCombod] remove FeverCombod

execute as @s[scores={move=1..},type=!player] at @s run tp @s ~~~

execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=94}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999

execute as @s[scores={move=94}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.5 99999
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.3 99999
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 2 99999
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 1.65 99999
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 1.75 99999
execute as @s[scores={move=94}] at @s run camerashake add @a[r=44] 3 0.25

scoreboard players set @s[scores={move=94..96}] atk 2
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] damage += @s damageadd
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] 4 override entity @s
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Evade 8
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Stun 95
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Hit 3
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,c=1,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] add FeverCombod 
execute as @s[scores={move=94}] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.49,c=1,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] levitation 3 12 true
execute as @s[scores={move=89}] at @s run summon ds:red_reverse ~~~

execute as @s[scores={move=92}] at @s run camera @s fade time 0.25 0.1 0.25 color 0 0 0
execute as @s[scores={move=92}] at @s run tp @s @s
execute as @s[scores={move=78}] at @s anchored eyes run camera @s set minecraft:free pos ^0.5 ^ ^2 rot ~-5 ~160
execute as @s[scores={move=77}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^1 ^-0.1 ^2.5 rot ~-6 ~155

execute as @s[scores={move=57}] at @s anchored eyes run camera @s set minecraft:free pos ^2 ^-0.45 ^0.5 rot ~-15 ~100
execute as @s[scores={move=56}] at @s anchored eyes run camera @s set minecraft:free ease 0.8 in_out_circ pos ^2.25 ^-0.45 ^0.35 rot ~10 ~95

execute as @s[scores={move=30}] at @s anchored eyes run camera @s set minecraft:free ease 0.25 in_out_circ pos ^2.25 ^-0.45 ^0.35 rot ~10 ~25

execute as @s[scores={move=30}] at @s run camera @s fade time 0.2 0.1 0.1 color 0 0 0
execute as @s[scores={move=23}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^1 ^-4.5 rot ~15 ~


execute as @s[scores={move=1..25}] at @s run execute as @e[type=!item,tag=FeverCombod,c=1] at @s run tp @e[scores={move=1..25}] ^^2^2 facing @s


execute as @s[scores={move=5}] at @s run camera @s fade time 0.4 0.5 0.2 color 0 0 0

title @s[scores={move=15..90},tag=!impactframesoff] title 

execute as @s[scores={move=1..25}] at @s run tp @s ~~~

scoreboard players set @s[scores={move=14..16}] atk 2
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] 12 override entity @s
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Evade 25
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] knockdown 95
execute as @s[scores={move=13..14}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Stun 25
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Hit 3
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,c=1,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] remove FeverCombod 

execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.wither.break_block @a[r=199] ~~~ 99999 0.7 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.45 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.25 99999

execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 1.25 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 1 99999
execute as @s[scores={move=14}] at @s run camerashake add @a[r=44] 4 0.55
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=93}] at @s unless entity @e[tag=FeverCombod,r=10] run playanimation @s animation.stunned
execute as @s[scores={move=93}] at @s unless entity @e[tag=FeverCombod,r=10] run scoreboard players set @s move 3


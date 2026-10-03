
tellraw @s[scores={hakarimode=0,move=80}] {"rawtext":[{"text":"§aThis attack requires you to be in Jackpot Mode..."}]}
scoreboard players set @s[scores={hakarimode=0,move=4..80}] move 3

playanimation @s[scores={move=80}] animation.brutal_barrage

execute as @s[scores={move=79..}] at @s run tp @s @s


tag @e[scores={move=1..2}] remove wep4

tag @s[scores={move=75..,Stun=1..}] remove wep4
scoreboard players set @s[scores={move=76..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..75}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Camera 4


execute as @s[scores={move=74}] at @s run camera @s fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=70}] at @s anchored eyes run camera @s set minecraft:free pos ^4 ^2 ^5 rot ~25 ~132
execute as @s[scores={move=70}] at @s anchored eyes run camera @s set minecraft:free ease 1.5 in_sine pos ^2 ^2 ^5 rot ~25 ~145
execute as @s[scores={move=25}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^ ^1 ^-4 rot ~15 ~


scoreboard players set @a[scores={move=31}] atk 2

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run playsound random.explode @a[r=199] ~~~ 99999 2.25 99999
execute as @s[scores={move=31..68}] at @s run camerashake add @a[r=44] 1 0.2

execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run damage @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] 1 override
execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run execute as @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] at @s run tp @s ~~~
execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run scoreboard players add @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Evade 2
execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Stun 25
execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Hit 2


scoreboard players set @s[scores={move=15..16}] atk 2
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run scoreboard players operation @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] damage += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run damage @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] 25 override
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run scoreboard players add @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Evade 2
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Stun 25
execute as @s[scores={move=15}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=15}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=15}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=1..15}] at @s run tp @s ~~~
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] knockdown 96
execute as @s[scores={move=15}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!ds:lapse_explode,family=!projectile,family=!damage,type=!item] Hit 2

execute as @s[scores={move=27}] at @s anchored eyes positioned ^^^-1 run playsound mob.magic2 @a ~~~ 1 0.25


title @s[scores={move=18},tag=!impactframesoff] title 
title @s[scores={move=17},tag=!impactframesoff] title 
title @s[scores={move=16},tag=!impactframesoff] title 
title @s[scores={move=15},tag=!impactframesoff] title 
title @s[scores={move=14},tag=!impactframesoff] title 
title @s[scores={move=13},tag=!impactframesoff] title 
title @s[scores={move=12},tag=!impactframesoff] title §l
camera @s[scores={move=16},tag=!impactframesoff] fade time 0 1 0.5 color 255 255 255

execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.5 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.3 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 2 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 1.65 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.75 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.4 99999
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run playsound mob.bullet @a[r=199] ~~~ 99999 1 99999



playanimation @s[scores={move=105}] animation.thunderclap

execute as @s[scores={move=1..4}] at @s run tag @e[tag=thunderclap] remove thunderclap
tag @s[scores={move=1..2},tag=form4c] remove form4c

scoreboard players set @s[scores={move=1..}] Frames 5
scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @e[tag=thunderclap,c=1] Camera 5
scoreboard players set @e[tag=thunderclap,c=1] Move 5
scoreboard players set @e[tag=thunderclap,c=1] Stun 5

execute as @s[scores={move=3..85}] at @s unless entity @e[tag=thunderclap,r=33] run playanimation @s animation.stunned
execute as @s[scores={move=3..85}] at @s unless entity @e[tag=thunderclap,r=33] run scoreboard players set @s move 2


execute as @s[scores={move=90..91}] at @s anchored eyes run tag @e[tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,type=!thrown_trident,c=1,r=33] add thunderclap

execute as @s[scores={move=105..}] at @s run tp @s @s

execute as @s[scores={move=90..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=90..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=90..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=90..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=104},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-0.25 ^3 rot ~ ~180
execute as @s[scores={move=103},type=player] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^ ^ ^2 rot ~-0.25 ~180

execute as @s[scores={move=91},type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.2 in_sine pos ^5 ^1 ^11 rot ~15 ~150
execute as @s[scores={move=91},type=player] at @s anchored eyes run camera @s fade time 0.1 0.25 0.1 color 255 255 255

execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run playsound mob.wither.shoot @a[r=100] ^^5^5 999999 2 999999
execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run camerashake add @a[r=70] 0.1 0.1 
execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run particle ds:thunderclap1 ~~1~
execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run particle ds:thunderclap2 ~~1~
execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run particle ds:thunderclap3 ~~1~
execute as @s[scores={move=30..85}] at @s run execute as @e[tag=thunderclap,c=1,r=33] at @s run particle ds:thunderclap4 ~~1~
effect @s[scores={move=25..85}] invisibility 1 1 true
effect @s[scores={move=21..24}] invisibility 0 10 true

execute as @s[scores={move=86..87}] at @s run execute as @e[c=1,tag=thunderclap,r=33] if entity @s[type=player] run camera @s set minecraft:free pos ^ ^25 ^6 rot ~90 ~
execute as @s[scores={move=85}] at @s run execute as @e[c=1,tag=thunderclap,r=33] if entity @s[type=player] run camera @s set minecraft:free ease 2.65 in_sine pos ^-0.8 ^1.25 ^0.55 rot ~5 ~175
execute as @s[scores={move=28}] at @s  run execute as @e[c=1,tag=thunderclap,r=33] if entity @s[type=player] run camera @s set minecraft:free ease 0.35 in_out_circ pos ^-0.8 ^1.25 ^1.25 rot ~5 ~225

execute as @s[scores={move=46}] at @s  run camera @a[r=33] fade time 0.5 0.25 0.1 color 0 0 0

execute as @s[scores={move=25..26}] at @s  run  particle ds:electric_dash1 ~~~
execute as @s[scores={move=25..26}] at @s  run  particle ds:lightning_cloak_dash1
execute as @s[scores={move=25..26}] at @s  run  particle ds:lightning_cloak_dash2
execute as @s[scores={move=25..26}] at @s  run  particle ds:lightning_cloak_dash3
execute as @s[scores={move=25..26}] at @s  run playsound mob.shocked3 @a ~~~ 1 1.6
execute as @s[scores={move=25..26}] at @s  run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=25..26}] at @s  run playsound mob.wither.shoot @a ~~~ 1 1.75

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=86..87},type=player] at @s anchored eyes run execute at @e[tag=thunderclap,c=1,r=33] run camera @s set minecraft:free pos ^ ^25 ^6 rot ~90 ~
execute as @s[scores={move=85},type=player] at @s anchored eyes run execute at @e[tag=thunderclap,c=1,r=33] run camera @s set minecraft:free ease 2.65 in_sine pos^-0.8 ^1.25 ^0.55 rot ~5 ~175

execute as @s[scores={move=17..26}] at @s anchored eyes run execute at @e[tag=thunderclap,c=1,r=33] run tp @s ^^^-1.5 facing @e[tag=thunderclap,c=1,r=33]

execute as @s[scores={move=24},type=player] at @s anchored eyes run execute at @e[tag=thunderclap,c=1,r=33] run camera @s set minecraft:free ease 0.35 in_out_circ pos ^-0.8 ^1.25 ^0.55 rot ~5 ~225

execute as @s[scores={move=87..88}] at @s anchored eyes run execute as @e[tag=thunderclap,c=1,r=33] at @s run tp @s @s


execute as @s[scores={move=10..15}] at @s positioned ^^^2 run particle ds:lightning_area1a
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:ground_slam2
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:electro_carve1
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:electro_carve2
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:electro_carve3
execute as @s[scores={move=15}] at @s positioned ^^^2 run camerashake add @a[r=200] 4 0.5
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.shock1 @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.shock1 @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.shocked3 @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.shocked2 @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound random.explode @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.electricity @a[r=200] ~~~ 99999 0.5 99999

execute as @s[scores={move=15}] at @s positioned ^^^2 run effect @e[tag=thunderclap,c=1,r=33] levitation 1 25 true
execute as @s[scores={move=15}] at @s positioned ^^^2 run  damage @e[tag=thunderclap,c=1,r=33] 25 override
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=thunderclap,c=1,r=33] Stun 25
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=thunderclap,c=1,r=33] Evade 25
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=thunderclap,c=1,r=33] Hit 7
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players set @e[tag=thunderclap,c=1,r=33] knockdown 95
execute as @s[scores={move=12..15}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=1..15}] at @s run tp @s ~~~

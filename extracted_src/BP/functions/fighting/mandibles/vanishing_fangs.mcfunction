playanimation @s[scores={move=20..21}] animation.beru_daggers.ab4

tag @s[scores={move=1..2}] remove wep4

scoreboard players set @s[scores={move=20..,Move=0..11}] Move 20
scoreboard players set @s[scores={move=20..,Camera=0..11}] Camera 20
scoreboard players set @s[scores={move=20..,Frames=0..11}] Frames 20

scoreboard players set @e[tag=vanishingfangs,c=1] Stun 25
scoreboard players set @e[tag=vanishingfangs,c=1] Camera 20

execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=18..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=18..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~


execute as @s[scores={move=19}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 99999 1.25 99999
execute as @s[scores={move=10..17}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=10..13}] at @s run tp @s ~~~~ 0





execute as @s[scores={move=10}] at @s positioned ^^^3 unless entity @e[tag=vanishingfangs,r=30] run tag @e[tag=!Frames,r=2.9] add vanishingfangs
execute as @s[scores={move=10}] at @s positioned ^^^6 unless entity @e[tag=vanishingfangs,r=30] run tag @e[tag=!Frames,r=2.9] add vanishingfangs
execute as @s[scores={move=10}] at @s positioned ^^^9 unless entity @e[tag=vanishingfangs,r=30] run tag @e[tag=!Frames,r=2.9] add vanishingfangs
execute as @s[scores={move=10}] at @s positioned ^^^12 unless entity @e[tag=vanishingfangs,r=30] run tag @e[tag=!Frames,r=2.9] add vanishingfangs
execute as @s[scores={move=10}] at @s positioned ^^^15 unless entity @e[tag=vanishingfangs,r=30] run tag @e[tag=!Frames,r=2.9] add vanishingfangs

execute as @s[scores={move=5..9}] at @s if entity @e[tag=vanishingfangs,r=30] run scoreboard players set @s move 1001
execute as @s[scores={move=5..8}] at @s unless entity @e[tag=vanishingfangs,r=30] run playanimation @s animation.cancel
execute as @s[scores={move=5..8}] at @s unless entity @e[tag=vanishingfangs,r=30] run scoreboard players set @s move 3


execute as @s[scores={move=1000}] at @s run playsound mob.witch.throw @a[r=100] ^^1^1 99999 1.25 99999
execute as @s[scores={move=1000}] at @s run playsound mob.wither.shoot @a[r=100] ^^1^1 99999 2.25 99999
execute as @s[scores={move=1000}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run playsound mob.slash @a[r=100] ~~1~ 99999 2.25 99999
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry1 ~~1~
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry2 ~~1~
execute as @s[scores={move=1000}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry3 ~~1~

execute as @s[scores={move=996}] at @s run playsound mob.witch.throw @a[r=100] ^^1^1 99999 1.25 99999
execute as @s[scores={move=996}] at @s run playsound mob.wither.shoot @a[r=100] ^^1^1 99999 2.25 99999
execute as @s[scores={move=996}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run playsound mob.slash @a[r=100] ~~1~ 99999 2.25 99999
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry1 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry2 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=vanishingfangs,c=1,r=30]  at @s run particle ds:parry3 ~~1~


execute as @s[scores={move=1000..}] at @s run tp @e[tag=vanishingfangs,c=1,r=30] ^^^12 facing @s
execute as @s[scores={move=1000..}] at @s run playanimation @e[tag=vanishingfangs,c=1,r=30] animation.beru_daggers.ab4b

execute as @s[scores={move=1000..}] at @s run camera @s set minecraft:free pos ^-1^1.25^-1.75 facing @e[tag=vanishingfangs,c=1]

execute as @e[tag=vanishingfangs,type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=985}] at @s run playsound music.bass3 @a[r=20] ~~~ 99999 1 99999
execute as @s[scores={move=976..977}] at @s run camera @s set minecraft:free ease 0.5 in_out_circ pos ^-2^1.25^0.35 facing ^^1.35^0.35

execute as @s[scores={move=945}] at @s run camera @s set minecraft:free pos ^2^3^ facing ^^5^
execute as @s[scores={move=944}] at @s run camera @s set minecraft:free ease 0.65 in_sine pos ^2^3^ facing ^^1^

execute as @s[scores={move=934}] at @s run camera @s set minecraft:free pos ^2^1.25^1.25 facing ^^1.35^

execute as @s[scores={move=920}] at @s run camera @s set minecraft:free pos ^^1.5^-4 facing ^^1.35^1

execute as @s[scores={move=978..982}] at @s run camerashake add @a[r=15] 0.15 0.15
execute as @s[scores={move=978..982}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 99999 2 99999
execute as @s[scores={move=978..982}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 99999 1.75 99999
execute as @s[scores={move=978..982}] at @s run particle ds:flashstep1
execute as @s[scores={move=978..982}] at @s run particle ds:turbo_intensity3 ~~0.7~
execute as @s[scores={move=978..982}] at @s run particle ds:turbo_intensity3a ~~0.7~
execute as @s[scores={move=978..982}] at @s run particle ds:turbo_intensity3b ~~0.7~
execute as @s[scores={move=978..982}] at @s run particle ds:turbo_intensity3c ~~0.7~
execute as @s[scores={move=978..982}] at @s run  execute as @e[tag=vanishingfangs,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={move=978..980}] at @s run  execute as @e[tag=vanishingfangs,c=1] at @s run tp @e[scores={move=978..980},c=1] ^^^1 facing @s

execute as @s[scores={move=966}] at @s run particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=966}] at @s run particle ds:heavy_impact2 ^^1.3^0.7
execute as @s[scores={move=966}] at @s run particle ds:heavy_impact3 ^^1.3^0.7
execute as @s[scores={move=966}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=966}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=966}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=962}] at @s run particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=962}] at @s run particle ds:heavy_impact2 ^^1.3^0.7
execute as @s[scores={move=962}] at @s run particle ds:heavy_impact3 ^^1.3^0.7
execute as @s[scores={move=962}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.65 99999
execute as @s[scores={move=962}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.65 99999
execute as @s[scores={move=962}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=957}] at @s run particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=957}] at @s run particle ds:heavy_impact2 ^^1.3^0.7
execute as @s[scores={move=957}] at @s run particle ds:heavy_impact3 ^^1.3^0.7
execute as @s[scores={move=957}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=957}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=957}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=957}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=957}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=952}] at @s run particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=952}] at @s run particle ds:heavy_impact2 ^^1.3^0.7
execute as @s[scores={move=952}] at @s run particle ds:heavy_impact3 ^^1.3^0.7
execute as @s[scores={move=952}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=952}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=952}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=952}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=952}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15


execute as @s[scores={move=948}] at @s run particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=948}] at @s run particle ds:heavy_impact2 ^^1.3^0.7
execute as @s[scores={move=948}] at @s run particle ds:heavy_impact3 ^^1.3^0.7
execute as @s[scores={move=948}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=948}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=948}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=948}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=948}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15


execute as @s[scores={move=945}] at @s run  particle ds:large_impact1 ^^1.3^0.7
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound random.explode @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=945}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run  camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=925}] at @s run  playsound mob.slash1 @a[r=100] ~~~ 99999 1.33 99999
execute as @s[scores={move=925}] at @s run  playsound mob.slash1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=924}] at @s run  playsound mob.slice4 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=924}] at @s run  playsound mob.slice4 @a[r=100] ~~~ 99999 1.25 99999

execute as @s[scores={move=920..921}] at @s run tp @e[tag=vanishingfangs,c=1] ^^^3 facing @s

execute as @s[scores={move=921}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.blitz2 @a[r=33] ~~-10~ 99999 1.5 99999
execute as @s[scores={move=925}] at @s run playsound music.bass3 @a[r=20] ~~~ 99999 1.5 99999
execute as @s[scores={move=911}] at @s run particle ds:invert ^^1^4
execute as @s[scores={move=910}] at @s run particle ds:blue_tint ^^1^4
execute as @s[scores={move=909}] at @s run particle ds:red_tint ^^1^4
execute as @s[scores={move=908}] at @s run particle ds:invert ^^1^4
execute as @s[scores={move=911}] at @s run summon gg:impact_frame
execute as @s[scores={move=885..911}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=885..911}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run particle ds:mandible_intensity1 ~~1~
execute as @s[scores={move=885..911}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run camerashake add @a[r=20] 0.5 0.15 
execute as @s[scores={move=885..891}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.blood1 @a[r=33] ~~-10~ 99999 1.75 99999
execute as @s[scores={move=885..911}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.punch @a[r=33] ~~-10~ 99999 1.25 99999
execute as @s[scores={move=885}] at @s run execute as @e[tag=vanishingfangs,c=1] at @s run playsound mob.shock1 @a[r=33] ~~-10~ 99999 1.25 99999

execute as @s[scores={move=890}] at @s run  playsound mob.turbulence @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=887}] at @s run particle ds:demons_descent4 ^^1^1 
execute as @s[scores={move=887}] at @s run particle ds:ground_impact2_small ^^1^1 
execute as @s[scores={move=887..921}] at @s run damage @e[tag=vanishingfangs,c=1] 0 override
execute as @s[scores={move=885}] at @s run damage @e[tag=vanishingfangs,c=1] 50 override
execute as @s[scores={move=885..921}] at @s run scoreboard players set @e[tag=vanishingfangs,c=1] Hit 2
execute as @s[scores={move=885}] at @s run scoreboard players set @e[tag=vanishingfangs,c=1] Flourish 10
execute as @s[scores={move=885}] at @s run scoreboard players set @e[tag=vanishingfangs,c=1] Stun 30
execute as @s[scores={move=885}] at @s run scoreboard players add @e[tag=vanishingfangs,c=1] Evade 33
execute as @s[scores={move=885}] at @s run effect @e[tag=vanishingfangs,c=1] wither 15 2 true
execute as @s[scores={move=885}] at @s run scoreboard players operation @e[tag=vanishingfangs,c=1] damage += @s damageadd
execute as @s[scores={move=885}] at @s run playsound mob.blood2 @a[r=100] ^^1^3 99999 0.8 99999
execute as @s[scores={move=885}] at @s run playsound mob.shock1 @a[r=100] ^^1^3 99999 1 99999
execute as @s[scores={move=885}] at @s run execute as @e[tag=vanishingfangs,c=1,scores={detect_health=0..1},type=!ds:knockback_dummy,type=!ds:no_knockback_dummy] at @s run particle ds:blood_mist ~~1~

execute as @s[scores={move=885}] at @s run camerashake add @a[r=10] 4 0.15
execute as @s[scores={move=885}] at @s run particle ds:invert ^^1^4
execute as @s[scores={move=885}] at @s run summon gg:impact_frame
execute as @s[scores={move=800..880}] at @s run tag @e remove vanishingfangs
execute as @s[scores={move=800..880}] at @s run scoreboard players set @s Camera 4
execute as @s[scores={move=800..880}] at @s run scoreboard players set @s Move 4
execute as @s[scores={move=800..880}] at @s run scoreboard players set @s move 3


playanimation @s[scores={move=70..72}] animation.slaughter_demon.ab5

tag @s[scores={move=1..2}] remove wep5


scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..62}] Camera 6
scoreboard players set @s[scores={move=1..62}] Frames 6
scoreboard players set @s[scores={move=73..}] Camera 6
scoreboard players set @s[scores={move=73..}] Frames 6

scoreboard players set @e[tag=deadlypiercing2] Disabled 15
scoreboard players set @e[tag=deadlypiercing2] Stun 15

execute as @s[scores={move=61}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=61}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,c=1] add deadlypiercing2
execute as @s[scores={move=61}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,c=1] run tag @s add deadlypiercing
execute as @s[scores={move=61}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,c=1] Hit 3
execute as @s[scores={move=61}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,c=1] run playsound mob.slash1 @a[r=100] ~~~ 9999 2.2 9999
execute as @s[scores={move=61}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,c=1] run playsound mob.sword @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=61}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,c=1] run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=59..60}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,c=1] run playanimation @e[tag=deadlypiercing2,c=1] animation.slaughter_demon.ab5_hit

execute as @s[scores={move=59..60}] at @s unless entity @e[tag=deadlypiercing2] run scoreboard players set @s move 2

execute as @s[scores={move=59..60}] at @s run tp @s @s
execute as @s[scores={move=58..59}] at @s run tp @e[tag=deadlypiercing2,c=1] ^^^1 facing @s

scoreboard players set @s[scores={move=72..}] cutscene 7
execute as @s[scores={move=72..}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] cutscene 7

execute as @s[scores={move=56}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 99999 1.25 9999

execute as @s[scores={move=40}] at @s run playsound random.explode @a[r=20] ~~~ 99999 1.25 99999
execute as @s[scores={move=40}] at @s run camerashake add @a[r=10] 3 0.17
execute as @s[scores={move=40}] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact1 ^^1^1 
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact2 ^^1^1 
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact3 ^^1^1 
execute as @s[scores={move=40}] at @s run particle ds:sprint ^^^1
execute as @s[scores={move=40}] at @s run particle ds:sprint ^^^1.25
execute as @s[scores={move=40}] at @s run particle ds:sprint ^^^1.5
execute as @s[scores={move=40}] at @s run tp @e[tag=deadlypiercing2,c=1] ^^^2



playanimation @s[scores={move=19..20}] animation.slaughter_demon.ab5_end
execute as @s[scores={move=19..20}] at @s run playanimation @e[tag=deadlypiercing2,c=1] animation.slaughter_demon.ab5_hit2

execute as @s[scores={move=25}] at @s run tp @s ^^^7 facing ~~~

execute as @s[scores={move=31}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run playsound mob.sword @a[r=25] ~~~ 9999 0.9 9999
execute as @s[scores={move=31}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=31}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] Hit 3
execute as @s[scores={move=31}] at @s positioned ^^1^-2 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=30}] at @s positioned ^^1^-1 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=29}] at @s positioned ^^1^ run function fighting/slaughter_demon/slashes
execute as @s[scores={move=28}] at @s positioned ^^1^1 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=27}] at @s positioned ^^1^2 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=25}] at @s positioned ^^1^-3 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=24}] at @s positioned ^^1^-2 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=23}] at @s positioned ^^1^-1 run function fighting/slaughter_demon/slashes
execute as @s[scores={move=22}] at @s positioned ^^1^ run function fighting/slaughter_demon/slashes

execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run function fighting/slaughter_demon/slashes
execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run damage @s 2 override
execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run scoreboard players set @s Hit 5
execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run scoreboard players set @s Stun 20
execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run playsound mob.sword @a[r=20] ~~~ 99999 0.95 99999
execute as @s[scores={move=3..18}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run particle ds:heavy_impact3

execute as @s[scores={move=7}] at @s run effect @e[tag=deadlypiercing2,c=1] levitation 1 25 true
execute as @s[scores={move=6}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] knockdown 95
execute as @s[scores={move=5}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s  run summon ds:red_reverse ^^^2
 
execute as @s[scores={move=1..8}] at @s run tp @s ~~~

title @a[tag=!impactframesoff,tag=deadlypiercing,c=1] title 
title @a[tag=!impactframesoff,tag=deadlypiercing2,c=1] title 


execute as @s[scores={move=3}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run scoreboard players operation @s damage += @e[tag=deadlypiercing,c=1] damage

execute as @s[scores={move=20..21}] at @s if entity @e[tag=deadlypiercing2,c=1,scores={detect_health=0..35}] run scoreboard players set @s move 1002

playanimation @s[scores={move=1000..}] animation.slaughter_demon.ab5_finisher
execute as @s[scores={move=1000}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run summon ds:projectile ~~1~ facing @e[tag=deadlypiercing,c=1] none deadlypiercings  
execute as @s[scores={move=998..1000}] at @s run playanimation @e[name=deadlypiercings,c=1] animation.slaughter_demon.ab5_finisher
execute as @s[scores={move=72..1000}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[name=deadlypiercings,c=1] ~~1~
execute as @s[scores={move=72..1000}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run scoreboard players set @e[name=deadlypiercings,c=1] Deleter 5
execute as @s[scores={move=72..}] at @s run tp @s ~~~
execute as @s[scores={move=72..}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s @s

execute as @s[scores={move=41..60}] at @s run camera @s set minecraft:free pos ^-1.5^0.75^-2.5 facing ^^0.5^1
execute as @s[scores={move=8..30}] at @s run camera @s set minecraft:free pos ^7^0.75^1 facing @e[tag=deadlypiercing2,c=1]
execute as @s[scores={move=931..1000}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run camera @a[tag=deadlypiercing,c=1] set minecraft:free pos ^9^1^1 facing @e[tag=deadlypiercing,c=1]
execute as @s[scores={move=900..930}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run camera @a[tag=deadlypiercing,c=1] set minecraft:free pos ^3^12^5 facing @e[tag=deadlypiercing,c=1]

execute as @s[scores={move=995}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^2 facing ~~1~
execute as @s[scores={move=995}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2

execute as @s[scores={move=980}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^-1.5 facing ~~1~
execute as @s[scores={move=980}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=980}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=976}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^1.5 facing ~~1~
execute as @s[scores={move=976}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=976}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=970}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^-1.5 facing ~~1~
execute as @s[scores={move=970}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=970}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~


execute as @s[scores={move=966}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^1.5 facing ~~1~
execute as @s[scores={move=966}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=966}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=960}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^-1.5 facing ~~1~
execute as @s[scores={move=960}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=960}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=957}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^1.5 facing ~~1~
execute as @s[scores={move=957}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=957}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=955}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^-1.5 facing ~~1~
execute as @s[scores={move=955}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=955}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=952}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^1.5 facing ~~1~
execute as @s[scores={move=952}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=952}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=950}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^-1.5 facing ~~1~
execute as @s[scores={move=950}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=950}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=947}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^1^1.5 facing ~~1~
execute as @s[scores={move=947}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=947}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=945}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^5^6 facing ~~1~
execute as @s[scores={move=945}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=945}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @s ~~1~

execute as @s[scores={move=930}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run tp @e[tag=deadlypiercing,c=1] ^^-8^-12
execute as @s[scores={move=930}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run playsound mob.sword @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=930}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run playsound mob.slash @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=930}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run playsound mob.slice @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=935}] at @s run execute as @a[r=35] at @s run playsound music.bass3 @s ~~~ 99999 1.25 99999

execute as @s[scores={move=930}] at @s run camera @a[r=40] fade time 0 0 0.25 color 255 255 255

execute as @s[scores={move=900..920}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes2
execute as @s[scores={move=900..910}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run function fighting/slaughter_demon/slashes
execute as @s[scores={move=900..930}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=900..930}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=900..930}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=900..930}] at @s if block ~~-0.24~ air run tp @s ~~-0.23~
execute as @s[scores={move=900..930}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~


execute as @s[scores={move=900..920}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run damage @e[tag=deadlypiercing2,c=1] 1 override
execute as @s[scores={move=900..920}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run scoreboard players add @e[tag=deadlypiercing2,c=1] Hit 3
execute as @s[scores={move=900..920}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run scoreboard players add @e[tag=deadlypiercing2,c=1] Evade 1

execute as @s[scores={move=900}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s run playsound mob.slice @a[r=100] ~~~ 9999 0.85 9999

execute as @s[scores={move=900}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run function fighting/slaughter_demon/slashes
execute as @s[scores={move=891}] at @s run kill @e[type=!ds:no_knockback_dummy,type=!ds:knockback_dummy,tag=deadlypiercing2,c=1]
execute as @s[scores={move=900}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] Hit 5
execute as @s[scores={move=900}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] Stun 20
execute as @s[scores={move=900}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run playsound mob.sword @a[r=20] ~~~ 99999 0.5 99999
execute as @s[scores={move=900}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s positioned ~~1~ run particle ds:heavy_impact3

execute as @s[scores={move=900}] at @s run effect @e[tag=deadlypiercing2,c=1] levitation 1 5 true
execute as @s[scores={move=900}] at @s run scoreboard players set @e[tag=deadlypiercing2,c=1] knockdown 95
execute as @s[scores={move=900}] at @s run execute as @e[tag=deadlypiercing2,c=1] at @s  run summon ds:red_reverse ^^^2

execute as @s[scores={move=900..930}] at @s unless block ~~~ air run tp @s ~~1~
execute as @s[scores={move=900..930}] at @s unless block ~~~ air run tp @s ~~1~
execute as @s[scores={move=900..930}] at @s unless block ~~~ air run tp @s ~~0.3~
execute as @s[scores={move=900..930}] at @s unless block ~~~ air run tp @s ~~0.23~
execute as @s[scores={move=900..930}] at @s unless block ~~~ air run tp @s ~~0.1~

camera @s[scores={move=905}] fade time 0.5 1.5 0.5 color 0 0 0


execute as @s[scores={move=890}] at @s run scoreboard players set @s move 2
tag @s[scores={move=1..2},tag=deadlypiercing] remove deadlypiercing
execute as @s[scores={move=1..2}] at @s run tag @e[tag=deadlypiercing2] remove deadlypiercing2


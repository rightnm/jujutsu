playanimation @s[scores={move=20}] animation.demonic_blitz_dash

tag @s[scores={move=1..3}] remove wep6s
tag @s[scores={move=1..3}] remove demonicblitz2

execute as @s[scores={move=20}] at @s run tp @s @s

scoreboard players set @s[scores={move=4..}] Move 7
scoreboard players set @s[scores={move=4..}] Camera 7
scoreboard players set @a[scores={move=4..}] Frames 7

scoreboard players set @s[scores={move=269..878}] move 3

execute as @s[scores={move=10}] at @s run particle ds:leap
execute as @s[scores={move=10}] at @s run particle ds:rubble3
execute as @s[scores={move=10}] at @s run particle ds:dirt2
execute as @s[scores={move=10}] at @s run particle ds:bounce
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2
execute as @s[scores={move=10}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 2.26 9999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.76 9999
execute as @s[scores={move=10}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 1.36 9999
execute as @s[scores={move=10}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.76 9999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=50] 1.2 0.15 rotational

execute as @s[scores={move=15..20}] at @s if block ~~-1~ air run scriptevent ds:downfall

scoreboard players set @e[tag=demonicblitz] Stun 25

execute as @s[scores={move=1..4}] at @s run tag @e[tag=demonicblitz] remove demonicblitz

execute as @s[scores={move=5..10}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=1..4}] at @s run tp @s ~~~
execute as @s[scores={move=5..10}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=3.5,c=1] add demonicblitz


execute as @s[scores={move=4..10}] at @s if entity @e[tag=demonicblitz,r=7] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..1001}] animation.demonic_blitz1
execute as @s[scores={move=1000..1001}] at @s run playanimation @e[tag=demonicblitz,c=1] animation.demonic_blitz2


execute as @s[scores={move=991}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:bounce ~~~
execute as @s[scores={move=991}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.2 9999
execute as @s[scores={move=991}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound random.explode @a[r=25] ~~~ 9999 2.2 9999

execute as @s[scores={move=981}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:bounce ~~~
execute as @s[scores={move=981}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.7 9999
execute as @s[scores={move=981}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound random.explode @a[r=25] ~~~ 9999 2.5 9999

execute as @s[scores={move=971}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:bounce ~~~
execute as @s[scores={move=971}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.8 9999
execute as @s[scores={move=971}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound random.explode @a[r=25] ~~~ 9999 1.8 9999



execute as @s[scores={move=999}] at @s positioned ^^^2 run playsound mob.shock1 @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=999}] at @s positioned ^^^2 run playsound mob.blood1 @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=999}] at @s positioned ^^^2 run particle ds:large_impact1 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^2 run particle ds:large_impact2 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^2 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^2 run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^2 run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^2 run camerashake add @a[r=20] 3 0.25

execute as @s[scores={move=984}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run playsound mob.punch1 @a[r=100] ~~~ 9999 1.15 9999
execute as @s[scores={move=984}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:heavy_impact2 ^^^1.5
execute as @s[scores={move=984}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:heavy_impact3 ^^^1.5
execute as @s[scores={move=984}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run camerashake add @a[r=20] 1 0.25 rotational

execute as @s[scores={move=965..998}] at @s run particle ds:sprint
execute as @s[scores={move=965..998}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=955..998}] at @s if entity @e[tag=griefable] run fill ~2~2~2~-2~~-2 air [] destroy
execute as @s[scores={move=955..998}] at @s if entity @e[tag=griefable] run kill @e[type=item,r=12]

scoreboard players set @e[tag=demonicblitz] Stun 45
scoreboard players set @e[tag=demonicblitz] Disabled 45

execute as @s[scores={move=968..998}] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^6^1.3^6 facing ^^1.3^6
execute as @s[scores={move=939..966}] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^7.5^1.3^ facing ^^1.3^

execute as @s[scores={move=907..936}] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^4^1.5^2 facing ^^^

execute as @s[scores={move=985..998}] at @s run tp @e[tag=demonicblitz,c=1,type=!player] ^^^10 facing @s
execute as @s[scores={move=982..984}] at @s run tp @e[tag=demonicblitz,c=1,type=!player] ^^^6.5 facing @s
execute as @s[scores={move=970..981}] at @s run tp @e[tag=demonicblitz,c=1,type=!player] ^^^10 facing @s

execute as @s[scores={move=970..998}] at @s run tp @e[tag=demonicblitz,c=1,type=player] ^^^4 facing @s
execute as @s[scores={move=961..967}] at @s run tp @e[tag=demonicblitz,c=1] ^^^1 facing @s
execute as @s[scores={move=961..965}] at @s run tp @s ~~~

execute as @s[scores={move=960}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=960}] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=960}] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=960}] at @s run camerashake add @a[r=20] 1.5 0.15 rotational
execute as @s[scores={move=960}] at @s run tp @s @s
execute as @s[scores={move=960}] at @s run tp @e[tag=demonicblitz,c=1] ^^41^17
execute as @s[scores={move=960}] at @s run effect @e[tag=demonicblitz,c=1] levitation 1 15 true
execute as @s[scores={move=960}] at @s run effect @e[tag=demonicblitz,c=1] slow_falling 3 1 true

execute as @s[scores={move=940}] at @s run particle ds:leap ~~~
execute as @s[scores={move=940}] at @s run particle ds:rubble3
execute as @s[scores={move=940}] at @s run particle ds:dirt2
execute as @s[scores={move=940}] at @s run particle ds:bounce
execute as @s[scores={move=940}] at @s run particle ds:ground_slam2
execute as @s[scores={move=943}] at @s run playsound mob.blast @a[r=50] ~~~ 9999 1.15 9999
execute as @s[scores={move=940}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=940}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=940}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 1.36 9999
execute as @s[scores={move=940}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.76 9999
execute as @s[scores={move=940}] at @s run camerashake add @a[r=50] 2 0.1 rotational

execute as @s[scores={move=940}] at @s unless entity @e[tag=demonicblitz,c=1] at @s run tp @s ^^40^10

execute as @s[scores={move=960}] at @s if entity @e[tag=griefable] positioned ^^^3 run fill ~2~~2 ~-2 ~40~-2 air


execute as @s[scores={move=907..940}] at @s unless entity @e[tag=demonicblitz,c=1] at @s run tp @s @s


execute as @s[scores={move=906..940}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run tp @s @s
execute as @s[scores={move=906..940}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run tp @e[scores={move=800..940},tag=sukuna,c=1] ^^^1.2 facing ~~~


titleraw @s[scores={move=912..933},tag=!demonicblitz] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}
title @s[scores={move=909..911}] title §l
tag @s[scores={move=912..933,punch=1}] add demonicblitz2
scoreboard players set @s[scores={move=912..933,punch=1}] move 2001

playanimation @s[scores={move=1500..1990}] animation.demonic_blitz1c2
execute as @s[scores={move=1500..1990}] at @s run playanimation @e[tag=demonicblitz,c=1] animation.knockback
execute as @s[scores={move=1500..1990}] at @s run camera @s set minecraft:free pos ~2~20~1 facing ~~~


playanimation @s[scores={move=2000..2001}] animation.demonic_blitz1c
execute as @s[scores={move=1500..1991}] at @s run tp @s @s
execute as @s[scores={move=1500..}] at @s run tp @e[tag=demonicblitz,c=1,type=!player] ^-0.15^-1.5^0.15
execute as @s[scores={move=1500..}] at @s run tp @e[tag=demonicblitz,c=1,type=player] ^-0.15^9.5^0.15

execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run particle ds:falling1
execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run particle ds:falling2
execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run particle ds:falling3
execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run camerashake add @a[r=20] 0.12 0.08
execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run playsound mob.enderdragon.flap @a[r=20] ~~~ 0.25 0.25

execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=1500..1990}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=1500..1990}] at @s run tp @s ~~-0.2~

effect @s[scores={move=1500..1990}] resistance 1 10 true
execute as @s[scores={move=1500..1990}] at @s if block ~~-2~  air unless block ~~-1~ air run function sukuna/attacks/basic_combat/blitz_floor


execute as @s[scores={move=1500..1990}] at @s unless block ~~-1~  air unless block ~~-2~ air unless block ~~-3~ air unless entity @e[tag=demonicblitz,scores={detect_health=0..40}] run function sukuna/attacks/basic_combat/blitz_land

execute as @s[scores={move=1500..1990}] at @s unless block ~~-1~  air unless block ~~-2~ air unless block ~~-3~ air if entity @e[tag=demonicblitz,scores={detect_health=0..40}] run tag @s remove demonicblitz2
execute as @s[scores={move=1500..1990}] at @s unless block ~~-1~  air unless block ~~-2~ air unless block ~~-3~ air if entity @e[tag=demonicblitz,scores={detect_health=0..40}] run function sukuna/attacks/basic_combat/blitz_land2
execute as @s[scores={move=1500..1990}] at @s unless block ~~-1~  air unless block ~~-2~ air unless block ~~-3~ air if entity @e[tag=demonicblitz,scores={detect_health=0..40}] run camera @s fade time 0 0.7 1 color 0 0 0
execute as @s[scores={move=1500..1990}] at @s unless block ~~-1~  air unless block ~~-2~ air unless block ~~-3~ air if entity @e[tag=demonicblitz,scores={detect_health=0..40}] run scoreboard players set @s move 1401

playanimation @s[scores={move=1400..1401}] animation.demonic_blitz_finisher
execute as @s[scores={move=1400..1401}] at @s run tp @s @s

execute as @s[scores={move=1335..1401}] at @s run playanimation @e[tag=demonicblitz,c=1] animation.demonic_blitz_finisher2

execute as @s[scores={move=1200..1401}] at @s run scoreboard players set @a[r=7] Camera 8
execute as @s[scores={move=1400..1401}] at @s run camera @a[r=7] set minecraft:free pos ^^1^7 facing ~~1.5~
execute as @s[scores={move=1400..1401}] at @s run tp @e[tag=demonicblitz,c=1] ^^^0.75 facing ^^^10
execute as @s[scores={move=1398..1399}] at @s run camera @a[r=7] set minecraft:free ease 2.5 in_sine pos ^3^1^3 facing ~~1.5~

execute as @s[scores={move=1390}] at @s run playsound mob.gambaregambare1 @a[r=100] ~~~ 99999 1 99999

execute as @s[scores={move=1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run playsound mob.blood3 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run playsound mob.blood3 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run playsound mob.blood4 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=1320..1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~~ run particle ds:blood
execute as @s[scores={move=1320..1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run particle ds:blood_2
execute as @s[scores={move=1320..1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run particle ds:blood_2
execute as @s[scores={move=1320..1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run particle ds:blood_splat
execute as @s[scores={move=1323..1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s positioned ~~1~ run particle ds:blood_splat2
execute as @s[scores={move=1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run camerashake add @a[r=40] 4 0.15
execute as @s[scores={move=1325}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:large_impact1 ~~1~

execute as @s[scores={move=1320}] at @s run camera @s fade time 1 0.5 0.75 color 0 0 0

execute as @s[scores={move=1325}] at @s run scoreboard players set @e[tag=demonicblitz,c=1] dying 100

execute as @s[scores={move=1298..1300}] at @s run scoreboard players set @s move 3



scoreboard players set @s[scores={move=1500..}] Camera 30
scoreboard players set @s[scores={move=1500..}] Move 30

scoreboard players set @s[scores={move=1500..1501}] move 3


scoreboard players set @s[scores={move=930..935}] move 921

playanimation @s[scores={move=915..916}] animation.demonic_blitz1b


execute as @s[scores={move=911}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=910}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=909}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=908}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=907}] at @s run title @s[tag=!impactframesoff] title §l
execute as @s[scores={move=904}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=903}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=902}] at @s run title @s[tag=!impactframesoff] title §l

execute as @s[scores={move=916}] at @s run playsound mob.heavy_swing @a[r=50] ~~~ 9999 0.7 9999

execute as @s[scores={move=905}] at @s run particle ds:leap ~~~
execute as @s[scores={move=905}] at @s run particle ds:rubble3
execute as @s[scores={move=905}] at @s run particle ds:dirt2
execute as @s[scores={move=905}] at @s run particle ds:bounce
execute as @s[scores={move=905}] at @s run particle ds:ground_slam2
execute as @s[scores={move=905}] at @s run playsound mob.shock1 @a[r=150] ~~~ 9999 0.75 9999
execute as @s[scores={move=910}] at @s run playsound mob.burst @a[r=150] ~~-2~ 9999 0.65 9999
execute as @s[scores={move=905}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=905}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=905}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=905}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=905}] at @s run camerashake add @a[r=50] 4 0.15 rotational
execute as @s[scores={move=905}] at @s run tp @e[tag=demonicblitz,c=1] ^^-44^10
execute as @s[scores={move=904}] at @s run scoreboard players set @e[tag=demonicblitz,c=1] knockdown 70
execute as @s[scores={move=904}] at @s run scoreboard players set @e[tag=demonicblitz,c=1] Hit 15
execute as @s[scores={move=904}] at @s run scoreboard players set @e[tag=demonicblitz,c=1] Stun 40
execute as @s[scores={move=904}] at @s run scoreboard players set @e[tag=demonicblitz,c=1] Evade 30


execute as @s[scores={move=905}] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^4^3^-1 facing ^^-53^10

execute as @s[scores={move=907}] at @s if entity @e[tag=griefable] positioned ^^-44^10 run summon ds:red_reversal
execute as @s[scores={move=907}] at @s if entity @e[tag=griefable] positioned ^^-44^10 run summon ds:red_reversal
execute as @s[scores={move=907}] at @s if entity @e[tag=griefable] positioned ^^-44^10 run summon ds:red_reversal
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s if block ~~-1~ air if block ~~-2~ air run tp @s ~~-2~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s unless block ~~~ air run tp @s ~~2~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute as @s[scores={move=890..903}] at @s run execute as @e[tag=demonicblitz,c=1] at @s unless block ~~~ air run tp @s ~~1~

execute as @s[scores={move=902}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:ground_dust20
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:ground_dust1 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:large_slam1 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:large_slam2 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:large_slam3 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:dirt2 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:dirt4 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:fissure2 
execute as @s[scores={move=901}] at @s run execute as @e[tag=demonicblitz,c=1] at @s run particle ds:crater3 
execute as @s[scores={move=899..900}] at @s run tag @e[tag=demonicblitz] remove demonicblitz

execute as @s[scores={move=901}] at @s run damage @e[tag=demonicblitz,c=1] 40 override
execute as @s[scores={move=901}] at @s run scoreboard players operation @e[tag=demonicblitz,c=1] damage += @s damageadd

effect @s[scores={move=905}] slow_falling 2 1 true



execute as @s[family=mahoraga,tag=ClashBarrage,scores={cutscene=1..},c=1] at @s run tp @s @s
execute as @s[family=mahoraga,tag=ClashBarrage,scores={cutscene=1..},c=1] at @s run tp @s ~~~ facing @e[family=!mahoraga,tag=ClashBarrage,c=1]
execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=1..},c=1] at @s run tp @s @s
scoreboard players set @e[tag=ClashBarrage,c=3,scores={cutscene=1..}] Frames 5
scoreboard players set @e[tag=ClashBarrage,c=3,scores={cutscene=1..}] Camera 5
scoreboard players set @e[tag=ClashBarrage,c=3,scores={cutscene=1..}] Move 5
scoreboard players set @e[tag=ClashBarrage,c=3,scores={cutscene=1..}] Stun 5

execute as @e[family=mahoraga,tag=ClashBarrage,scores={cutscene=139..},c=1] at @s run tp @s @s
execute as @e[family=mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] at @s run scoreboard players set @s chance 0
execute as @e[family=mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] at @s run scoreboard players set @s move 0

execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] at @s run scoreboard objectives add clashnumber dummy
execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] at @s run scoreboard players set @e[family=mahoraga,c=1,tag=ClashBarrage] clashnumber 10

scoreboard players add @e[scores={punch=1,cutscene=27..80},tag=ClashBarrage] clashnumber 2
scoreboard players add @e[scores={punch=1..2,cutscene=21..26},tag=ClashBarrage] clashnumber 1

execute as @s[family=mahoraga,tag=ClashBarrage,scores={cutscene=1..},c=1] at @s run tp @e[family=!mahoraga,tag=ClashBarrage,c=1] ^^^3 facing @s

titleraw @a[scores={cutscene=20..80,clashnumber=0},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=1},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=2},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=3},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=4},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=5},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=6},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=7},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=8},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=9},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=10},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
titleraw @a[scores={cutscene=20..80,clashnumber=11..},tag=ClashBarrage] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}

execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=135},c=1] at @s run camera @s set minecraft:free pos ^5 ^1.5 ^2 rot ~-10 ~90
execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=90},c=1] at @s run camera @s set minecraft:free pos ^-6 ^5.5 ^5 rot ~28 ~250
execute as @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=50},c=1] at @s run camera @s set minecraft:free pos ^ ^3 ^-3 rot ~6 ~

execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 1.75 99999
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 1.1 99999
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.6^2 run playsound mob.shock1 @a[r=90] ~~~ 99999 1.65 99999
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.6^2 run camerashake add @a[r=20] 2 0.25
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.6^2 run particle ds:ground_slam2 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact1 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact2 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=139},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact3 ~~~

execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 1.5 99999
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 1.75 99999
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.6^2 run playsound mob.shock1 @a[r=90] ~~~ 99999 1.5 99999
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.6^2 run camerashake add @a[r=20] 2 0.25
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.6^2 run particle ds:ground_slam2 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact1 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact2 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=125},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact3 ~~~

execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 1.5 99999
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.6^2 run playsound mob.shock1 @a[r=90] ~~~ 99999 1.7 99999
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.6^2 run playsound random.explode @a[r=90] ~~~ 99999 2 99999
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.6^2 run camerashake add @a[r=20] 0.2 0.25
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.6^2 run particle ds:ground_slam0 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact1 ~~~
execute as @e[tag=ClashBarrage,scores={cutscene=20..80},c=2] at @s positioned ^^1.65^1.5 run particle ds:heavy_impact3 ~~~


execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=!mahoraga] at @s if score @s clashnumber >= @e[family=mahoraga,tag=ClashBarrage,c=1] clashnumber run camera @a[r=20] fade time 0.2 0.2 0.1 color 0 0 0
execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=!mahoraga] at @s if score @s clashnumber >= @e[family=mahoraga,tag=ClashBarrage,c=1] clashnumber run tag @s add makorabarragewin
execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=!mahoraga] at @s if score @s clashnumber >= @e[family=mahoraga,tag=ClashBarrage,c=1] clashnumber run scoreboard players set @s move 41
execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=!mahoraga] at @s if score @s clashnumber >= @e[family=mahoraga,tag=ClashBarrage,c=1] clashnumber run scoreboard players set @e[c=2,scores={cutscene=1..}] cutscene 0

execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=mahoraga] at @s if score @s clashnumber >= @e[family=!mahoraga,tag=ClashBarrage,c=1] clashnumber run tag @s add makorabarragewin
execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=mahoraga] at @s if score @s clashnumber >= @e[family=!mahoraga,tag=ClashBarrage,c=1] clashnumber run scoreboard players set @s move 41
execute as @e[tag=ClashBarrage,scores={cutscene=16},c=1,family=mahoraga] at @s if score @s clashnumber >= @e[family=!mahoraga,tag=ClashBarrage,c=1] clashnumber run scoreboard players set @e[c=2,scores={cutscene=1..}] cutscene 0

playanimation @s[family=mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] animation.mahoraga.punch_barrage
playanimation @e[family=!mahoraga,tag=ClashBarrage,scores={cutscene=139},c=1] animation.mahoraga.punch_barrage_player

tag @e[scores={cutscene=1..2},tag=ClashBarrage] remove ClashBarrage
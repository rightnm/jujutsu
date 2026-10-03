playanimation @s[scores={move=90..91}] animation.plus_ultra.start


scoreboard players set @s[scores={Move=0..5}] Move 25
scoreboard players set @s[scores={move=40..41}] Camera 20



execute as @s[scores={move=40}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 9999 2 9999
execute as @s[scores={move=40}] at @s run camerashake add @s 0.2 0.25
execute as @s[scores={move=40}] at @s run particle ds:leap



execute as @s[scores={move=36..40}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=36..40}] at @s unless entity @e[tag=plusultra_victim,r=2.5] run tag @e[tag=!Frames,r=2.5,tag=!plusultra_victim,tag=!plusultra] add plusultra_victim
execute as @s[scores={move=36..40}] at @s if entity @e[tag=plusultra_victim,r=2.5] run scoreboard players set @s move 10001



scoreboard players set @s[scores={move=100..,Camera=0..5}] Camera 25
playanimation @s[scores={move=10000..10001}] animation.plus_ultra.start1
execute as @s[scores={move=10001}] at @s run summon gg:impact_frame
execute as @s[scores={move=10001}] at @s run camerashake add @a[r=10] 4 0.25 rotational

stopsound @s[scores={move=101..}] music.takada
execute as @s[scores={move=9995..10001}] at @s run tp @s ~~~ facing ~~~1
execute as @s[scores={move=9961..}] at @s run tp @e[tag=plusultra_victim,c=1] ^^^0.7 facing @s
execute as @s[scores={move=9998..9999}] at @s run scriptevent ds:knockback 2.5

execute as @s[scores={move=9956..}] at @s run playanimation @e[tag=plusultra_victim,c=1] animation.stunned 
execute as @s[scores={move=9954..9955}] at @s run playanimation @e[tag=plusultra_victim,c=1] animation.plus_ultra.hit

#hit start 1
execute as @s[scores={move=9999}] at @s run playsound music.bass3 @a[r=5] ~~~ 99999 1 99999
execute as @s[scores={move=9999}] at @s run particle ds:impact_vfx1 ^^1.2^0.25
execute as @s[scores={move=9999}] at @s run particle ds:impact_vfx2 ^^1.2^0.25
execute as @s[scores={move=9999}] at @s run particle ds:ground_slam
execute as @s[scores={move=9999}] at @s run playsound mob.wither.break_block @a[r=33] ~~~ 99999 1.25 99999
execute as @s[scores={move=9999}] at @s run playsound mob.wither.shoot @a[r=33] ~~~ 99999 0.8 99999
execute as @s[scores={move=9999}] at @s run playsound mob.punch1 @a[r=33] ~~~ 99999 2.25 99999
execute as @s[scores={move=9999}] at @s run camerashake add @a[r=25] 2 0.15


#hit pushaway 2
execute as @s[scores={move=9957..9960}] at @s run scriptevent ds:knockback 2.5
execute as @s[scores={move=9954..9960}] at @s run tp @e[tag=plusultra_victim,c=1] ^^^10 facing @s
execute as @s[scores={move=9955}] at @s run particle ds:impact_vfx1 ^^1.2^0.25
execute as @s[scores={move=9955}] at @s run particle ds:impact_vfx2 ^^1.2^0.25
execute as @s[scores={move=9955}] at @s run particle ds:ground_slam
execute as @s[scores={move=9999}] at @s run camerashake add @a[r=25] 4 0.15
execute as @s[scores={move=9955}] at @s run playsound mob.wither.shoot @a[r=33] ~~~ 99999 1.25 99999
execute as @s[scores={move=9955}] at @s run playsound mob.wither.break_block @a[r=33] ~~~ 99999 0.85 99999
execute as @s[scores={move=9955}] at @s run playsound random.explode @a[r=33] ~~~ 99999 1.55 99999
execute as @s[scores={move=9955}] at @s run playsound random.explode @a[r=33] ~~~ 99999 2 99999




execute as @s[scores={move=9954..9999}] at @s run camera @s set minecraft:free pos ^2.5^1.5^0.75 facing ^^1.25^0.5
execute as @s[scores={move=9954..9999}] at @s run camera @p[tag=plusultra_victim,c=1] set minecraft:free pos ^2.5^1.5^0.75 facing ^^1.25^0.5



execute as @s[scores={move=9953}] at @s run camera @s set minecraft:free ease 0.33 in_out_circ pos ^3^0.25^14 facing ^^1^1
execute as @s[scores={move=9953}] at @s run camera @p[tag=plusultra_victim,c=1] set minecraft:free  ease 0.33 in_out_circ pos ^3^0.25^14 facing ^^1^1
execute as @s[scores={move=9945}] at @s run camera @p[tag=plusultra_victim] fade time 0.45 0.2 0.25 color 255 255 255
execute as @s[scores={move=9945}] at @s run camera @s fade time 0.45 0.2 0.25 color 255 255 255

execute as @s[scores={move=9935..9939}] at @s run tag @s add cutscene_vision
execute as @s[scores={move=9935..9939}] at @s run tag @p[tag=plusultra_victim,c=1] add cutscene_vision 


execute as @s[scores={move=9913..9915}] at @s run tag @p[tag=plusultra_brother,c=1] add cutscene_vision  

playanimation @s[scores={move=9937..9939}] animation.plus_ultra.call_brother
execute as @s[scores={move=9915..9937}] at @s run scriptevent ds:plusultra_brother_background1 -0.25,1.5,0



execute as @s[scores={move=9933..9935}] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^0.7^1.4^0.7 facing ^^1.375^0.3
execute as @s[scores={move=9933..9935}] at @s run camera @p[tag=plusultra_victim,c=1] set minecraft:free ease 0.1 in_sine pos ^0.7^1.4^0.7 facing ^^1.375^0.35
execute as @s[scores={move=9915..9933}] at @s run camera @s set minecraft:free pos ^0.7^1.4^0.7 facing ^^1.375^0.3
execute as @s[scores={move=9915..9933}] at @s run camera @p[tag=plusultra_victim,c=1] set minecraft:free pos ^0.7^1.4^0.7 facing ^^1.375^0.35
execute as @s[scores={move=9915..9933}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9915..9933}] at @s run camerashake add @p[tag=plusultra_victim] 0.1 0.08 

execute as @s[scores={move=9941}] at @s run playsound music.plus_ultra1 @s ~~~ 99999 1 99999
execute as @s[scores={move=9941}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra1 @s ~~~ 99999 1 99999
execute as @s[scores={move=9941}] at @s run titleraw @a[r=33] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§f§lBROTHER!"}]}

execute as @s[scores={move=9950..9955}] at @s run execute as @e[tag=plusultra_victim,c=1] at @s if block ~~-1~ air run setblock ~~-1~ barrier
execute as @s[scores={move=9950..9955}] at @s run execute as @e[tag=plusultra_victim,c=1] at @s if entity @p[tag=griefable] unless block ~~1~ air run fill ~1~1~1~-1~~-1 air

execute as @s[scores={move=9950..9955}] at @s if block ~~-1~ air run setblock ~~-1~ barrier
execute as @s[scores={move=9950..9955}] at @s unless block ~~1~ air if entity @p[tag=griefable] run fill ~1~1~1~-1~~-1 air

execute as @s[scores={move=9954..9955}] at @s run tp @s ~~~~ 0





execute as @s[scores={move=9915}] at @s if entity @e[tag=plusultra_victim,r=15] run execute as @s[tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] run execute as @e[tag=!plusultra,scores={brotherID=1..},r=99,c=1,rm=0.15,tag=!plusultra_victim] at @s if score @s brotherID = @e[tag=plusultra,c=1] brotherID run tag @s add plusultra_brother


execute as @s[scores={move=9915}] at @s if entity @e[tag=plusultra_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s unless entity @e[type=ds:itadori_noai,r=99,c=1,tag=!plusultra_victim,tag=!plusultra_brother] run summon ds:itadori_noai ^^^-0.25 facing ^^^10
execute as @s[scores={move=9914..9915}] at @s if entity @e[tag=plusultra_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s run tag @e[type=ds:itadori_noai,c=1,r=99,tag=!plusultra_victim,tag=!plusultra_brother] add plusultra_brother

execute as @s[scores={move=9915}] at @s if entity @e[tag=plusultra_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s unless entity @e[type=ds:itadori_noai,r=99,c=1,tag=!plusultra_victim,tag=!plusultra_brother] run summon ds:itadori_noai ^^^-0.25 facing ^^^10
execute as @s[scores={move=9914..9915}] at @s if entity @e[tag=plusultra_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s run tag @e[type=ds:itadori_noai,c=1,r=99,tag=!plusultra_victim,tag=!plusultra_brother] add plusultra_brother

execute as @s[scores={move=9900..9913}] at @s unless entity @e[tag=plusultra_brother,c=1] positioned ^^^10 run tag @e[r=15,tag=plusultra_victim,c=1] remove plusultra_victim
execute as @s[scores={move=9900..9913}] at @s unless entity @e[tag=plusultra_brother,c=1] run camera @a[r=30] clear
execute as @s[scores={move=9900..9913}] at @s unless entity @e[tag=plusultra_brother,c=1] run scoreboard players set @s move 3

execute as @s[scores={move=9990..9991}] at @s if entity @p[tag=griefable] run fill ^2^0.2^14 ^-2^3^1 air [] replace

execute as @s[scores={move=9917}] at @s run camera @p[tag=plusultra_victim] fade time 0.1 0.1 0.25 color 255 255 255
execute as @s[scores={move=9917}] at @s run camera @s fade time 0.1 0.1 0.25 color 255 255 255

execute as @s[scores={move=9913..9915}] at @s run tp @e[tag=plusultra_brother,c=1] ^2^^-4 facing ^^^10
execute as @s[scores={move=9913..9915}] at @s run playanimation @e[tag=plusultra_brother,c=1] animation.plus_ultra.brother_throw


execute as @e[tag=plusultra_brother] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9874..9915}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run camera @a[tag=plusultra,c=1] set minecraft:free pos ^^1^1.5 facing ^-0.2^1.5^
execute as @s[scores={move=9874..9915}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run camera @a[tag=plusultra_victim,c=1] set minecraft:free pos ^^1^1.5 facing ^-0.2^1.5^
execute as @s[scores={move=9874..9915}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run camerashake add @a[r=25] 0.1 0.08
execute as @s[scores={move=9874..9915}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run tp @s ~~~ facing @e[tag=plusultra,c=1]

execute as @s[scores={move=9876}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run summon ds:pebble_cutscene ^^1.25^1 facing ^^^10
execute as @s[scores={move=9860..9874}] at @s run tp @e[type=ds:pebble_cutscene,c=1,r=10] ^^1.35^6 facing ^^^10

execute as @s[scores={move=9874}] at @s run camera @s set minecraft:free ease 0.33 in_sine pos ^0.5^1.5^6.7 facing ^-1^1.5^
execute as @s[scores={move=9874}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 0.25 in_sine pos ^0.5^1.35^6.7 facing ^-1^1.5^
execute as @s[scores={move=9874}] at @s run camera @p[tag=plusultra_brother] set minecraft:free ease 0.25 in_sine pos ^0.5^1.35^6.7 facing ^-1^1.5^

#temp
execute as @s[scores={move=9875}] at @s run camera @s fade time 0.35 0.5 0.25 color 255 255 255
execute as @s[scores={move=9875}] at @s run camera @p[tag=plusultra_victim] fade time 0.35 0.5 0.25 color 255 255 255
execute as @s[scores={move=9875}] at @s run camera @s[tag=plusultra_brother] fade time 0.35 0.5 0.25 color 255 255 255
execute as @s[scores={move=9915}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run playsound music.bass3 @a[r=35] ~~~ 99999 1 99999
execute as @s[scores={move=9875}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run playsound mob.heavy_swing @a[r=50] ~~1~ 99999 2 99999
execute as @s[scores={move=9875}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 1.5 99999


execute as @s[scores={move=9860}] at @s positioned ~ 300 ~ run summon ds:pebble_cutscene ~~1~ facing ~ 300 ~1 none "sky_pebble"
execute as @s[scores={move=9860}] at @s positioned ~ 300 ~ run fill ~5~-1~5~-5~-1~-5 barrier [] replace air
execute as @s[scores={move=9860}] at @s positioned ~ 295 ~ run summon ds:full_background 
execute as @s[scores={move=9858..9860}] at @s positioned ~ 295 ~ run event entity @e[type=ds:full_background,c=1,r=15] colour_6

# Pebble Space Scene
execute as @s[scores={move=9859}] at @s positioned ~ 300 ~ run camera @s set minecraft:free pos ^0.05^1.02^0.05 facing ^^1^-1
execute as @s[scores={move=9856..9857}] at @s positioned ~ 300 ~ run camera @s set minecraft:free ease 2 in_sine pos ^0.05^1.02^0.1 facing ^^1^-1
execute as @s[scores={move=9859}] at @s positioned ~ 300 ~ run camera @p[tag=plusultra_victim,c=1] set minecraft:free pos ^0.05^1.02^0.05 facing ^^1^-1
execute as @s[scores={move=9856..9857}] at @s positioned ~ 300 ~ run camera @p[tag=plusultra_victim,c=1] set minecraft:free ease 2 in_sine pos ^0.05^1.02^0.1 facing ^^1^-1

execute as @s[scores={move=9820..9859}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_space ^^^0.05

execute as @s[scores={move=9875}] at @s run camera @s fade time 0.25 0.5 0.25 color 255 255 255
execute as @s[scores={move=9875}] at @s run camera @p[tag=plusultra_victim] fade time 0.25 0.5 0.25 color 255 255 255
execute as @s[scores={move=9875}] at @s run camera @s[tag=plusultra_brother] fade time 0.25 0.5 0.25 color 255 255 255


execute as @s[scores={move=9804}] at @s run camera @s fade time 0.14 0.1 0.15 color 255 255 255
execute as @s[scores={move=9804}] at @s run camera @p[tag=plusultra_victim] fade time 0.14 0.1 0.15 color 255 255 255
execute as @s[scores={move=9804}] at @s run camera @s[tag=plusultra_brother] fade time 0.14 0.1 0.15 color 255 255 255

execute as @s[scores={move=9860}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run camera @s clear
execute as @s[scores={move=9860}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run event entity @s[type=ds:itadori_noai] ds:disappear
execute as @s[scores={move=9860}] at @s run execute as @e[tag=plusultra_brother,c=1] at @s run tag @s remove plusultra_brother
execute as @e[type=ds:full_background] at @s run tp @s ~~~


execute as @s[scores={move=9871}] at @s run camera @s clear
execute as @s[scores={move=9871}] at @s run camera @p[tag=plusultra_victim] clear
execute as @s[scores={move=9870}] at @s run playsound music.plus_ultra @s ~~~ 0.35 1
execute as @s[scores={move=9870}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra @s ~~~ 0.35 1

execute as @s[scores={move=9859}] at @s run playsound mob.blasted4 @s ~~300~-4 99999 2.5 99999
execute as @s[scores={move=9859}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound mob.blasted4 @s ~~300~-4 99999 2.5 99999
execute as @s[scores={move=9859}] at @s run playsound mob.wither.shoot @s ~~300~-4 99999 0.5 99999
execute as @s[scores={move=9859}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound  mob.wither.shoot @s ~~300~-4 99999 0.5 99999

# Pebble Air Scene
execute as @s[scores={move=9862}] at @s run playsound music.plus_ultra2 @s ~~~ 99999 1 99999
execute as @s[scores={move=9862}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra2 @s ~~~ 99999 1 99999
execute as @s[scores={move=9800}] at @s positioned ~ 299 ~ run event entity @e[type=ds:full_background,c=1,r=15] colour_3


execute as @s[scores={move=9700..9809}] at @s positioned ~ 300 ~ run camera @s set minecraft:free pos ^0.4^1.02^ facing ^^1^
execute as @s[scores={move=9700..9809}] at @s positioned ~ 300 ~ run camera @p[tag=plusultra_victim,c=1] set minecraft:free pos ^0.4^1.02^ facing ^^1^
execute as @s[scores={move=9700..9809}] at @s positioned ~ 300 ~ run camerashake add @s 0.08 0.08
execute as @s[scores={move=9700..9809}] at @s positioned ~ 300 ~ run camerashake  add @p[tag=plusultra_victim] 0.08 0.08

execute as @s[scores={move=9700..9809}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air ^^^
execute as @s[scores={move=9809}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9790}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9775}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9760}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9745}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9730}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9715}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^
execute as @s[scores={move=9700}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_air_swift1 ^-3^^


execute as @s[scores={move=9780}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_purple_orange ^0.05^^-0.075
execute as @s[scores={move=9700..9770}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_orange1 ^0.05^^-0.033
execute as @s[scores={move=9700..9770}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_orange2 ^^^
execute as @s[scores={move=9700..9770}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_orange3 ^^^
execute as @s[scores={move=9700..9770}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:pebble_orange4 ^^^

execute as @s[scores={move=8840..}] at @s run scoreboard players set @e[tag=plusultra_victim,c=1,scores={infinity=0..5}] infinity 20
scoreboard players set @s[scores={move=8840..,infinity=0..5}] infinity 20
execute as @e[type=!player,r=20] at @s run tp @s ~~~ 


execute as @s[scores={move=9699}] at @s run playsound music.plus_ultra3 @s ~~~ 99999 1 99999
execute as @s[scores={move=9699}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra3 @s ~~~ 99999 1 99999
execute as @s[scores={move=9699}] at @s positioned ~ 299 ~ run event entity @e[type=ds:full_background,c=1,r=15] colour_6

execute as @s[scores={move=9699}] at @s positioned ~ 299 ~ run execute as @e[type=ds:pebble_cutscene,c=1] at @s run camera @p[tag=plusultra] set minecraft:free pos ^0.1^-0.05^-0.1 facing ^-1.25^^1 
execute as @s[scores={move=9697..9698}] at @s positioned ~ 299 ~ run execute as @e[type=ds:pebble_cutscene,c=1] at @s run camera @p[tag=plusultra] set minecraft:free ease 0.75 in_sine pos ^0.05^-0.05^-2 facing ^-1.75^^1 
execute as @s[scores={move=9699}] at @s positioned ~ 299 ~ run execute as @e[type=ds:pebble_cutscene,c=1] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^0.1^-0.05^-0.1 facing ^-1.25^^1 
execute as @s[scores={move=9697..9698}] at @s positioned ~ 299 ~ run execute as @e[type=ds:pebble_cutscene,c=1] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 0.75 in_sine pos ^0.05^-0.05^-2 facing ^-1.75^^1 


execute as @s[scores={move=9699..9701}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:divergent_ac1
execute as @s[scores={move=9699..9701}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:divergent_ac2

execute as @s[scores={move=9500..9699}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:cursed_energy_hand_small1 ^^^

execute as @s[scores={move=9639}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run playsound mob.clap @a ~~~ 9999 1 9999
execute as @s[scores={move=9647}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:blue_star2 ^^1^12
execute as @s[scores={move=9643}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run particle ds:ce_impact_vfx1 ~~1~


execute as @s[scores={move=9639}] at @s positioned ~ 300 ~ run execute as @e[type=ds:pebble_cutscene,c=1,r=30] at @s run tp @e[tag=plusultra,c=1]  ~ 300.2 ~

execute as @s[scores={move=9638..9641}] at @s run playanimation @e[tag=plusultra,c=1] animation.plus_ultra.clap_tp
execute as @s[scores={move=9634..9641}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.clap_tp

execute as @s[scores={move=9300..9699}] at @s positioned ~ 301 ~ run particle ds:pebble_space_b ^^^2
execute as @s[scores={move=9570..9699}] at @s positioned ~ 301 ~ run particle ds:plusultra_floor ~~-0.9~
execute as @s[scores={move=9570..9699}] at @s positioned ~ 301 ~ run particle ds:plusultra_floor2 ~~-1.8~

execute as @s[scores={move=9638..9640}] at @s run particle ds:boogie_woogie_tp
execute as @s[scores={move=9638..9640}] at @s run particle ds:boogie_woogie_tp2
execute as @s[scores={move=9641}] at @s run summon gg:impact_frame ~ 300 ~
execute as @s[scores={move=9638..9640}] at @s positioned ~ 301 ~ run camera @s set minecraft:free pos ^1^-0.35^-12 facing ^-4^^1 
execute as @s[scores={move=9638..9640}] at @s positioned ~ 301 ~ run camera @p[tag=plusultra_victim] set minecraft:free pos ^1^-0.35^-12 facing ^-4^^1 


execute as @s[scores={move=9635}] at @s run particle ds:body_light_beams ~~1.2~

execute as @s[scores={move=9625..9626}] at @s positioned ~ 301 ~ run camera @s set minecraft:free ease 1 in_sine pos ^1^^-7 facing ^-4^^1 
execute as @s[scores={move=9625..9626}] at @s positioned ~ 301 ~ run camera @p[tag=plusultra_victim] set minecraft:free ease 1 in_sine pos ^1^^-7 facing ^-4^^1 




execute as @s[scores={move=9610}] at @s run playsound music.plus_ultra4 @s ~~~ 99999 1 99999
execute as @s[scores={move=9610}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra4 @s ~~~ 99999 1 99999
execute as @s[scores={move=9600..9610}] at @s run camera @s set minecraft:free pos ^^1^0.5 facing ^^2^0.15
execute as @s[scores={move=9600..9610}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^1^0.5 facing ^^2^0.15

execute as @s[scores={move=9540}] at @s run playsound music.plus_ultra5 @s ~~~ 99999 1 99999
execute as @s[scores={move=9540}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra5 @s ~~~ 99999 1 99999
execute as @s[scores={move=9425..9550}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=9425..9550}] at @s run camerashake add @p[tag=plusultra_victim,c=1] 0.1 0.08
execute as @s[scores={move=9425..9550}] at @s run camera @s set minecraft:free pos ^2^2.5^2.5 facing ^^1^
execute as @s[scores={move=9425..9550}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^2^2.5^2.5 facing ^^1^
execute as @s[scores={move=9425..9550}] at @s run particle ds:pebble_space_c1 ~~1~
execute as @s[scores={move=9425..9550}] at @s run particle ds:plusultra_wave1 ~~1.3~2
execute as @s[scores={move=9520}] at @s run particle ds:plusultra_wave2 ~~1.3~2.25

execute as @s[scores={move=9430..9550}] at @s run particle ds:plusultra_heatfloor ~~~
execute as @s[scores={move=9300..9395}] at @s run particle ds:plusultra_heatfloor2 ~~~

execute as @s[scores={move=9400..9425}] at @s run particle ds:plusultra_wave_area ^1.75^2.25^2.25
execute as @s[scores={move=9405}] at @s run camera @s fade time 0.15 0.3 0.15 color 255 255 255
execute as @s[scores={move=9405}] at @s run camera @p[tag=plusultra_victim,c=1] fade time 0.15 0.3 0.15 color 255 255 255

playanimation @s[scores={move=9445}] animation.plus_ultra.leanforwards
execute as @s[scores={move=9445}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.leanforwards
execute as @s[scores={move=9395}] at @s run camera @s set minecraft:free pos ^^2.5^2.5 facing ^^1^
execute as @s[scores={move=9395}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^2.5^2.5 facing ^^1^
execute as @s[scores={move=9395}] at @s run camera @s set minecraft:free ease 5 in_sine pos ^^1.5^0.65 facing ^^1.4^
execute as @s[scores={move=9395}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 5 in_sine  pos ^^1.5^0.65 facing ^^1.4^
playanimation @s[scores={move=9395..9396}] animation.plus_ultra.idle
execute as @s[scores={move=9395..9396}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.idle


execute as @s[scores={move=9395}] at @s run playsound music.plus_ultra6 @s ~~~ 99999 1 99999
execute as @s[scores={move=9395}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.plus_ultra6 @s ~~~ 99999 1 99999
execute as @s[scores={move=9295..9350}] at @s run particle ds:red_stars_flash ~~1~

execute as @s[scores={move=9634..9640}] at @s run event entity @e[type=ds:pebble_cutscene,c=1,r=10] ds:disappear
execute as @s[scores={move=9634..9640}] at @s run kill @e[type=ds:pebble_cutscene,c=1,r=10]

execute as @s[scores={move=9305}] at @s run camera @s fade time 0.25 0.25 0.1 color 255 255 255
execute as @s[scores={move=9305}] at @s run camera @p[tag=plusultra_victim,c=1] fade time 0.25 0.25 0.15 color 255 255 255

execute as @s[scores={move=9295}] at @s run camera @s set minecraft:free pos ^^1^-0.5 facing ^^1^1
execute as @s[scores={move=9295}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^1^-0.5 facing ^^1^1
execute as @s[scores={move=9293..9294}] at @s run camera @s set minecraft:free ease 1.5 in_sine pos ^^1^-45 facing ^^1^1
execute as @s[scores={move=9293..9294}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 1.5 in_sine  pos ^^1^-45 facing ^^1^1
execute as @s[scores={move=9295}] at @s run particle ds:plusultra_whitelight ~~1~7
execute as @s[scores={move=9270..9295}] at @s run particle ds:pebble_space3 ~~1~25

execute as @s[scores={move=9270}] at @s run camera @s fade time 0.25 0.25 0.25 color 0 0 0 
execute as @s[scores={move=9270}] at @s run camera @p[tag=plusultra_victim,c=1] fade time 0.25 0.25 0.25 color 0 0 0
execute as @s[scores={move=9270}] at @s run effect @s invisibility infinite 10 true
execute as @s[scores={move=9269..9270}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.idle2

execute as @s[scores={move=9260}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.stars_scene
execute as @s[scores={move=9260}] at @s run playanimation @s animation.plus_ultra.stars_scene


execute as @s[scores={move=9160..9260}] at @s run particle ds:pebble_space_b3 ~~0.9~
execute as @s[scores={move=9260}] at @s run camera @s set minecraft:free pos ^^0.9^-0.25 facing ^^0.9^10
execute as @s[scores={move=9260}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^0.9^-0.25 facing ^^0.9^10

execute as @s[scores={move=9255..9256}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^^0.9^-1.75 facing ^^0.9^10
execute as @s[scores={move=9255..9256}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 1.5 in_out_circ pos ^^0.9^-1.75 facing ^^0.9^10


execute as @s[scores={move=9210}] at @s run camera @s set minecraft:free ease 0.7 in_out_circ pos ^^0.9^-2.5 facing ^^0.9^10
execute as @s[scores={move=9210}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 0.7 in_out_circ pos ^^0.9^-2.5 facing ^^0.9^10

execute as @s[scores={move=9260}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9260}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 0.8 99999
execute as @s[scores={move=9260}] at @s positioned ~ 300 ~ run playsound mob.distort3 @a[r=400] ~~~ 99999 0.5 99999

execute as @s[scores={move=9240}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9240}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 1.25 99999


execute as @s[scores={move=9230}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9230}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 1.35 99999

execute as @s[scores={move=9220}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9220}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 1.15 99999

execute as @s[scores={move=9212}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9212}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 1.4 99999


execute as @s[scores={move=9204}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9204}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 1 99999


execute as @s[scores={move=9180}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=9180}] at @s positioned ~ 300 ~ run playsound mob.magic2 @a[r=400] ~~~ 99999 0.5 99999
execute as @s[scores={move=9180}] at @s positioned ~ 290 ~ run playsound mob.distort3 @a[r=400] ~~~ 99999 1 99999
execute as @s[scores={move=9180}] at @s positioned ~ 300 ~ run playsound portal.travel @a[r=400] ~~~ 99999 5 99999




execute as @s[scores={move=9170}] at @s run camera @s set minecraft:free ease 0.5 in_sine pos ^^0.9^1 facing ^^0.9^10
execute as @s[scores={move=9170}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 0.5 in_sine pos ^^0.9^1 facing ^^0.9^10
execute as @s[scores={move=9170}] at @s run camera @s fade time 0.4 0.25 1 color 255 150 150
execute as @s[scores={move=9170}] at @s run camera @p[tag=plusultra_victim,c=1] fade time 0.4 0.25 1 color 255 150 150

execute as @s[scores={move=9160}] at @s run particle ds:plusultra_galaxy1 ~~1~
execute as @s[scores={move=9160}] at @s run particle ds:plusultra_galaxy2 ~~1~

execute as @s[scores={move=9152}] at @s run particle ds:yuji_outline ~-3.75~~4.5
execute as @s[scores={move=9152}] at @s run particle ds:plusultra_star_impact1 ~-1.75~0.7~2
execute as @s[scores={move=9150..9152}] at @s run particle ds:plusultra_star_impact1b ~-1.75~0.7~2

execute as @s[scores={move=9160}] at @s run particle ds:plusultra_blackhole1 ~5~-1~12
execute as @s[scores={move=9160}] at @s run particle ds:plusultra_blackhole2 ~5~-1~12
execute as @s[scores={move=9160}] at @s run particle ds:plusultra_blackhole3 ~5~-1~12
execute as @s[scores={move=9160}] at @s run particle ds:plusultra_blackhole4 ~5~-1~12
execute as @s[scores={move=9160}] at @s run playsound music.sparkle @s ~~~ 99999 0.6 99999
execute as @s[scores={move=9160}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.sparkle @s ~~~ 99999 0.6 99999

execute as @s[scores={move=9160}] at @s run particle ds:plusultra_star_impact7 ~4~-1~9
execute as @s[scores={move=9160}] at @s run particle ds:plusultra_star_impact7b ~4~-1~9
execute as @s[scores={move=9150}] at @s run particle ds:plusultra_red_star1 ~4~-1~9
execute as @s[scores={move=9090..9145}] at @s run particle ds:plusultra_red_star2 ~4~-1~9

execute as @s[scores={move=9090}] at @s run effect @s clear invisibility
execute as @s[scores={move=9088..9091}] at @s run playanimation @s animation.plus_ultra.prepare1
execute as @s[scores={move=9088..9091}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.prepare1


execute as @s[scores={move=9085..9090}] at @s run camera @s set minecraft:free pos ^-0.15^0.9^0.5 facing ^-0.3^0.7^0.1 
execute as @s[scores={move=9085..9090}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^-0.15^0.9^1 facing ^-0.3^0.7^0.1 

execute as @s[scores={move=9074..9075}] at @s run camera @s set minecraft:free pos ^^1.4^0.5 facing ^^1.65^
execute as @s[scores={move=9074..9076}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^1.4^0.5 facing ^^1.65^

execute as @s[scores={move=9050..9075}] at @s run particle ds:plusultra_star_eyes2 ~~1~
execute as @s[scores={move=9075}] at @s run playsound music.sparkle @s ~~~ 99999 1.6 99999
execute as @s[scores={move=9075}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.sparkle @s ~~~ 99999 1.6 99999
execute as @s[scores={move=9066}] at @s run playsound music.sparkle @s ~~~ 99999 1.25 99999
execute as @s[scores={move=9066}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.sparkle @s ~~~ 99999 1.25 99999
execute as @s[scores={move=8995..9095}] at @s run particle ds:pebble_space_b


execute as @s[scores={move=9040}] at @s run camera @s set minecraft:free pos ^^1^0.25 facing ^^1^
execute as @s[scores={move=9040}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^1^0.25 facing ^^1^

execute as @s[scores={move=9037..9038}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^^1^4 facing ^^1^
execute as @s[scores={move=9037..9038}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 1.5 in_out_circ  pos ^^1^4 facing ^^1^

execute as @s[scores={move=8988..8990}] at @s run playanimation @s animation.plus_ultra.prepare2
execute as @s[scores={move=8988..8990}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.prepare2

execute as @s[scores={move=8990}] at @s run camera @s set minecraft:free pos ^1^1^-1 facing ^^1^1
execute as @s[scores={move=8990}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^1^1^-1 facing ^^1^1
execute as @s[scores={move=8988..8989}] at @s run camera @s set minecraft:free ease 0.75 in_out_circ pos ^2^^-15 facing ^-12^-3^1
execute as @s[scores={move=8988..8989}] at @s run camera @p[tag=plusultra_victim] set minecraft:free ease 0.75 in_out_circ pos ^2^^-15 facing ^-12^-3^1
execute as @s[scores={move=8979}] at @s run particle ds:pebble_air_swift1 ^-1^-1^
execute as @s[scores={move=8940..8989}] at @s run particle ds:pebble_space_b2 ~~1~
execute as @s[scores={move=8940..8989}] at @s run particle ds:pebble_space_b3 ~~1~
execute as @s[scores={move=8940..8989}] at @s run particle ds:pebble_space_b4 ~~1~
execute as @s[scores={move=8940..8989}] at @s run particle ds:blurple_star ~5~~1


execute as @s[scores={move=8960}] at @s run playsound music.todo_blackflash1 @s ~~~ 99999 1 99999
execute as @s[scores={move=8960}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.todo_blackflash1 @s ~~~ 99999 1 99999
execute as @s[scores={move=8940}] at @s run playanimation @s animation.plus_ultra.prepare3
execute as @s[scores={move=8940}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.prepare3



execute as @s[scores={move=8860..8940}] at @s run particle ds:pebble_space_b ~~1~
execute as @s[scores={move=8899..8940}] at @s run camera @s set minecraft:free pos ^^1^3 facing ^^1^
execute as @s[scores={move=8899..8940}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^^1^3 facing ^^1^
execute as @s[scores={move=8899..8940}] at @s run camerashake add @s 0.1 0.1
execute as @s[scores={move=8899..8940}] at @s run camerashake add @p[tag=plusultra_victim,c=1] 0.1 0.1


execute as @s[scores={move=8940}] at @s run particle ds:plusultra_electric1 ~~1~
execute as @s[scores={move=8940}] at @s run particle ds:plusultra_electric2 ~~1~
execute as @s[scores={move=8890}] at @s run particle ds:plusultra_electric1 ~~1~
execute as @s[scores={move=8890}] at @s run particle ds:plusultra_electric2 ~~1~


execute as @s[scores={move=8897}] at @s run camera @s fade time 0.25 0.25 1 color 255 255 255
execute as @s[scores={move=8890}] at @s positioned  ~ 800 ~ run summon ds:full_background ~ 800 ~ facing ~ ~ ~1 none "plusultra_white"
execute as @s[scores={move=8890}] at @s positioned  ~ 800 ~ run summon ds:takada_chan_visible ~ 800.1 ~3 facing ~ ~ ~4
execute as @s[scores={move=8890}] at @s positioned  ~ 800 ~ run tp @e[type=ds:takada_chan_visible] ~ 800.1 ~3 facing ~ ~ ~4


execute as @s[scores={move=8885}] at @s positioned  ~ 800 ~ run camera @s set minecraft:free pos ~ 801.33 ~ facing ~ 801.4 ~1
execute as @s[scores={move=8885}] at @s positioned  ~ 800 ~ run camera @p[tag=plusultra_victim,c=1] set minecraft:free pos ~ 801.33 ~ facing ~ 801.4 ~1
execute as @s[scores={move=8883..8884}] at @s positioned  ~ 800 ~ run camera @s set minecraft:free ease 3 in_sine pos ~ 801.33 ~-2 facing ~ 801.4 ~1
execute as @s[scores={move=8883..8884}] at @s positioned  ~ 800 ~ run camera @p[tag=plusultra_victim,c=1] set minecraft:free ease 3 in_sine pos ~ 801.33 ~-2 facing ~ 801.4 ~1

execute as @s[scores={move=8840}] at @s run camera @s fade time 0.5 0.25 1 color 255 255 255
execute as @s[scores={move=8830}] at @s positioned ~ 800 ~ run event entity @e[type=ds:takada_chan_visible,c=1,r=20] ds:disappear
execute as @s[scores={move=8830}] at @s positioned ~ 800 ~ run event entity @e[name="plusultra_white",c=1,r=20] ds:disappear


execute as @s[scores={move=8835}] at @s run execute as @p[tag=plusultra_victim,c=1] at @s run playsound music.todo_blackflash2 @s ~~~ 99999 1 99999
execute as @s[scores={move=8835}] at @s run playsound music.todo_blackflash2 @s ~~~ 99999 1 99999
execute as @s[scores={move=8825}] at @s positioned ~ 300 ~ run event entity @e[type=ds:full_background,r=30] ds:disappear
execute as @s[scores={move=8825}] at @s positioned ~ 300 ~ run fill ~5~5~5~-5~-5~-5 air [] replace barrier


execute as @s[scores={move=8833}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8832}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8831}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8830}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8829}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8828}] at @s run title @s[tag=!impactframesoff,type=player] title 
execute as @s[scores={move=8827}] at @s run title @s[tag=!impactframesoff,type=player] title §l
execute as @s[scores={move=8833}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8832}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8831}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8830}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8829}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8828}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title 
execute as @s[scores={move=8827}] at @s run title @p[tag=!impactframesoff,tag=plusultra_victim,c=1] title §l


execute as @s[scores={move=8824..8826}] at @s run playanimation @s animation.plus_ultra.final
execute as @s[scores={move=8824..8826}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.plus_ultra.final


execute as @s[scores={move=7000..8825}] at @s run execute as @e[tag=plusultra_victim,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={move=7000..8825}] at @s run execute as @e[tag=plusultra_victim,c=1] at @s run tp @e[tag=plusultra,c=1] ^^^1.25 facing ~~~

execute as @s[scores={move=8700..8830}] at @s run camera @s set minecraft:free pos ^1.5^1^0.7 facing ^^1^0.25
execute as @s[scores={move=8700..8830}] at @s run camera @p[tag=plusultra_victim] set minecraft:free pos ^1.5^1^0.75 facing ^^1^0.25
execute as @s[scores={move=8700..8830}] at @s run camerashake add @a[r=20] 0.15 0.15

execute as @s[scores={move=8828..8830}] at @s run stopsound @a music.todo_blackflash1
execute as @s[scores={move=8830}] at @s run playsound mob.blackflash1 @a[r=50] ~~15~ 99999 1 99999
execute as @s[scores={move=8826}] at @s run summon gg:impact_frame
execute as @s[scores={move=8827}] at @s run particle ds:red_tint
execute as @s[scores={move=8825}] at @s run particle ds:invert
execute as @s[scores={move=8824..8825}] at @s run playsound mob.blackflash2 @a[r=50] ~~15~ 99999 0.75 99999
execute as @s[scores={move=8820..8825}] at @s run scriptevent ds:lightning 1,0.85,-0.75, 0.8,0.1,0.1, 0.8,0.1,0.1, 3,3,3, 3,3,3
execute as @s[scores={move=8822..8825}] at @s run scriptevent ds:lightning 1,0.85,-2, 0.8,0.1,0.1, 0.8,0.1,0.1, 2.75,2.75,2.75, 2.75,2.75,2.75
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash1
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash2
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash3
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash4
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash5
execute as @s[scores={move=8818}] at @s positioned ^^1^1 run particle ds:black_flash6
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash7
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash8
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash9
execute as @s[scores={move=8825}] at @s positioned ^^1^1 run particle ds:black_flash10

execute as @s[scores={move=8810}] at @s run camera @a[r=25] fade time 1.5 0.5 0.5 color 255 255 255

execute as @s[scores={move=8790}] at @s run playsound mob.shock1 @a[r=50] ~~15~ 99999 1.5 99999
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run damage @e[tag=plusultra_victim,r=15,c=1] 75 override entity @s
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run scoreboard players set @e[tag=plusultra_victim,r=15,c=1] Flourish 15
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run scoreboard players add @e[tag=plusultra_victim,r=15,c=1] Evade 30
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run scoreboard players add @e[tag=plusultra_victim,r=15,c=1] Hit 5
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run scoreboard players operation @e[tag=plusultra_victim,r=15,c=1] damage += @s damageadd
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run scoreboard players operation @e[tag=plusultra_victim,r=15,c=1] damage *= nice endurance
execute as @s[scores={move=8790}] at @s positioned ^^1^1 run tag @e[tag=plusultra_victim,r=15,c=1] remove plusultra_victim

execute as @s[scores={move=8700..8830}] at @s run scoreboard players set @e[tag=plusultra_victim,c=1,r=15,scores={Frames=1..}] Frames 0
execute as @s[scores={move=8700..8830}] at @s run scoreboard players set @e[tag=plusultra_victim,c=1,r=15,scores={infinity=1..}] infinity 0
execute as @s[scores={move=8700..8830}] at @s run tag @e[tag=plusultra_victim,c=1,r=15,tag=Frames] remove Frames


execute as @s[scores={move=8780..8782}] at @s run camera @a[tag=plusultra_victim,c=1] clear
execute as @s[scores={move=8790..8815}] at @s run scriptevent ds:lightning 2,0.85,4, 0.8,0.1,0.1, 0.8,0.1,0.1, 4,4,4, 4,4,4
execute as @s[scores={move=8700..8780}] at @s run tag @e[r=25] remove cutscene_vision
execute as @s[scores={move=8700..8780}] at @s run scoreboard players set @s move 3

scoreboard players set @s[scores={move=8790..8791}] thezone 300

hud @s[scores={move=91..}] hide hotbar
hud @s[scores={move=91..}] hide progress_bar
hud @s[scores={move=91..}] hide hunger

scoreboard players set @p[tag=plusultra_victim,c=1] Stun 20


execute as @s[scores={move=1000..}] at @s unless entity @e[tag=plusultra_victim,c=1] run function dev_cancel_attack
tag @s[scores={move=0..3}] remove cutscene_vision
effect @s[scores={move=0..3}] clear invisibility
execute as @s[scores={move=0..3}] at @s positioned ~ 300 ~ run kill @e[name="sky_pebble",r=15]
execute as @s[scores={move=0..3}] at @s positioned ~ 300 ~ run fill ~5~-1~5~-5~-1~-5 air
execute as @s[scores={move=0..3}] at @s run fill ~5~5~5~-5~-5~-5 air [] replace barrier
execute as @s[scores={move=0..3}] at @s run camera @s fade time 0 0.25 0.25 color 255 255 255
execute as @s[scores={move=0..3}] at @s run tag @e[c=2,tag=cutscene_vision] remove cutscene_vision
execute as @s[scores={move=0..3}] at @s run execute as @e[r=25,scores={Stun=1..}] at @s run fill ~5~5~5~-5~-5~-5 air [] replace barrier
tag @s[scores={move=0..3}] remove plusultra
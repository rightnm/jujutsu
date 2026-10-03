
playanimation @s[scores={move=480..}] animation.hollowpurple
execute as @s[scores={move=480}] at @s run playsound mob.hollow1 @a ~~~ 1000 1 1000

tag @s[scores={move=1..3},tag=form5b,tag=limitless] remove form5b


scoreboard players add @s[scores={move=1..120}] infinity 1
scoreboard players add @s[scores={move=121}] infinity 8
scoreboard players set @s[scores={move=125..}] Camera 5
scoreboard players set @s[scores={move=1..}] Move 5

execute as @s[scores={move=120..,Stun=1..}] at @s run function cancel_attack


execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:knockback,r=15]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:running,r=8]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:lapse_explode,r=15]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:red_reversal,r=25]
execute as @s[scores={move=480..}] at @s run tp @s @s

execute as @s[scores={move=1..}] at @s run effect @e[type=ds:projectile,type=!item,type=!item,r=40,rm=1] slowness 1 1 true

execute as @s[scores={move=1..}] at @s if block ~~-1~ air run scriptevent ds:antiair

execute as @s[scores={move=470}] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.5^2 rot ~-22 ~180
execute as @s[scores={move=468}] at @s anchored eyes run camera @s set minecraft:free ease 1.5 linear pos ^^-0.65^2.5 rot ~-23 ~180


execute as @s[scores={move=437}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^^^8 rot ~ ~180
execute as @s[scores={move=425}] at @s anchored eyes run camera @s set minecraft:free ease 2 linear pos ^^^5 rot ~ ~180
execute as @s[scores={move=383}] at @s anchored eyes run camera @s set minecraft:free ease 5 linear pos ^^^4.5 rot ~ ~180

execute as @s[scores={move=130}] at @s anchored eyes run camera @s fade time 0.05 0.05 0.05 color 233 50 233
execute as @s[scores={move=130}] at @s anchored eyes run camera @s set minecraft:free ease 0.75 in_out_circ pos ^^1^-2 rot ~ ~
execute as @s[scores={move=120}] at @s anchored eyes run camera @s set minecraft:third_person default

execute as @s[scores={move=1..5}] at @s anchored eyes run camera @s clear

execute as @s[scores={move=480..}] at @s run camera @s fade time 0 1 0.75 color 0 0 0

execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s run tp @s ~~~
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlue,c=1] at @s run tp @s ~~~ facing @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1]
execute as @e[type=ds:projectile,type=!item,type=!item,name=HRed,c=1] at @s run tp @s ~~~ facing @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1]
execute as @e[type=ds:projectile,type=!item,type=!item,name=HRed,scores={Deleter=0..120},c=1] at @s run particle ds:hollow_red5 ^0.25 ^ ^-0.15
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlue,scores={Deleter=0..180},c=1] at @s run particle ds:hollow_blue5 ^0.25 ^ ^-0.15
playanimation @e[type=ds:projectile,type=!item,type=!item,name=HBlue] animation.hollow_blue
playanimation @e[type=ds:projectile,type=!item,type=!item,name=HRed] animation.hollow_red
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=1.6] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=1.6] run particle ds:hollow_colliding ~~~
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=1.6] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=1.6] run particle ds:hollow_colliding ~~~
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=1.25] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=1.25] run particle ds:hollow_colliding2 ~~~
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=1] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=1] run particle ds:hollow_colliding3 ~~~
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=1.25] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=1.25] run particle ds:hollow_colliding5 ^^^0.22
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=0.35] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=0.35] run particle ds:hollow_colliding4 ^^^0.22
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] at @s if entity @e[type=ds:projectile,type=!item,type=!item,name=HRed,r=0.15] if entity @e[type=ds:projectile,type=!item,type=!item,name=HBlue,r=0.15] run kill @e[type=ds:projectile,r=2]


execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,scores={Deleter=61..80},c=1] at @s run particle ds:hollow_colliding5 ^^^0.22
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,scores={Deleter=61..80},c=1] at @s run particle ds:hollow_colliding4^^^0.77
execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,scores={Deleter=61..80},c=1] at @s run particle ds:hollow_absorb ^^^0.22

execute as @s[scores={move=335}] at @s run camerashake add @a[r=10] 3 0.25
execute as @s[scores={move=339}] at @s run summon ds:projectile HBlue ^2 ^1.25 ^-2.5
execute as @s[scores={move=335..340}] at @s run particle ds:hollow_blue_stars ^2 ^1.25 ^-2.5
execute as @s[scores={move=350}] at @s run particle ds:hollow_blue1 ^2 ^1.25 ^-2.5
execute as @s[scores={move=335}] at @s run particle ds:hollow_blue2 ^2 ^1.25 ^-2.5
execute as @s[scores={move=335}] at @s run particle ds:hollow_blue3 ^2 ^1.25 ^-2.5
execute as @s[scores={move=335}] at @s run particle ds:hollow_blue4  ^2 ^1.25 ^-2.5
execute as @s[scores={move=335}] at @s run particle ds:hollow_blue5 ^2 ^1.25 ^-2.5
execute as @s[scores={move=333..339}] at @s run scoreboard players set @e[type=ds:projectile,type=!item,type=!item,name=HBlue,c=1] Deleter 130

execute as @s[scores={move=410}] at @s run summon ds:projectile HBlueRedTRG ^^1.25^-2.5
execute as @s[scores={move=410}] at @s run tp @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] ^^1.25^-2.5 facing @s
execute as @s[scores={move=405..410}] at @s run scoreboard players set @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1] Deleter 273

execute as @s[scores={move=129..175}] at @s run particle ds:hollow_absorb ^ ^1 ^2
execute as @s[scores={move=129..175}] at @s run particle ds:hollow_absorb2 ^ ^1 ^2

execute as @s[scores={move=275}] at @s run camerashake add @a[r=10] 3 0.25
execute as @s[scores={move=279}] at @s run summon ds:projectile HRed ^-2 ^1.25 ^-2.5
execute as @s[scores={move=275..280}] at @s run particle ds:hollow_red_stars ^-2 ^1.25 ^-2.5
execute as @s[scores={move=290}] at @s run particle ds:hollow_red1 ^-2 ^1.25 ^-2.5
execute as @s[scores={move=275}] at @s run particle ds:hollow_red2 ^-2 ^1.25 ^-2.5
execute as @s[scores={move=275}] at @s run particle ds:hollow_red3 ^-2 ^1.25 ^-2.5
execute as @s[scores={move=275}] at @s run particle ds:hollow_red4  ^-2 ^1.25 ^-2.5
execute as @s[scores={move=275}] at @s run particle ds:hollow_red5 ^-2 ^1.25 ^-2.5
execute as @s[scores={move=273..279}] at @s run scoreboard players set @e[type=ds:projectile,type=!item,type=!item,name=HRed,c=1] Deleter 70

execute as @s[scores={move=180..265}] at @s run execute as @e[type=ds:projectile,type=!item,type=!item,name=HRed,c=1] at @s run tp @s ^^^0.0234 facing @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1]
execute as @s[scores={move=180..265}] at @s run execute as @e[type=ds:projectile,type=!item,type=!item,name=HBlue,c=1] at @s run tp @s ^^^0.0234 facing @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1]

execute as @s[scores={move=180}] at @s run camera @a[r=33] fade time 0 0 0.33 color 220 0 220
execute as @s[scores={move=170..180}] at @s run kill @e[type=ds:projectile,type=!item,type=!item,name=HBlueRedTRG,c=1,r=5]
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple2 ^^-1.5^1
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple3 ^^-1.5^1
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple4 ^^-1.5^1
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple_make1 ^^1^1
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple_make2 ^^1^1
execute as @s[scores={move=120..185}] at @s run particle ds:hollow_purple_make3 ^^1^1

execute as @s[scores={move=20..185}] at @s run camerashake add @a[r=30] 0.15 0.08


title @s[tag=!impactframesoff,scores={move=119}] title 
title @s[tag=!impactframesoff,scores={move=117}] title §l

title @s[tag=!impactframesoff,scores={move=114}] title 
title @s[tag=!impactframesoff,scores={move=113}] title 
title @s[tag=!impactframesoff,scores={move=112}] title §l

title @s[tag=!impactframesoff,scores={move=22}] title 
title @s[tag=!impactframesoff,scores={move=21}] title 
title @s[tag=!impactframesoff,scores={move=20}] title §l

title @s[tag=!impactframesoff,scores={move=18}] title 
title @s[tag=!impactframesoff,scores={move=17}] title 
title @s[tag=!impactframesoff,scores={move=16}] title §l

effect @s[scores={move=21..}] slowness 1 2 true

execute as @s[scores={move=120}] at @s run particle ds:invert ^^2^1.5
execute as @s[scores={move=119}] at @s run particle ds:red_tint ^^2^1.5
execute as @s[scores={move=118}] at @s run particle ds:blue_tint ^^2^1.25
execute as @s[scores={move=117}] at @s run particle ds:invert ^^2^1.15
execute as @s[scores={move=116}] at @s run summon gg:impact_frame
execute as @s[scores={move=114}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=110..112}] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air [] replace light_block

execute as @s[scores={move=70}] at @s run execute as @a[r=100] at @s run playsound music.hollow2 @s ~~~ 1 1
execute as @s[scores={move=1..130}] at @s positioned ^^^110 run tickingarea add ~20 ~20 ~20 ~-20 ~-20 ~-20 hollowpurple
execute as @s[scores={move=120}] at @s run summon ds:projectile HollowP ^^^6
execute as @s[scores={move=25..120}] at @s run scoreboard players set @e[type=ds:projectile,type=!item,type=!item,name=HollowP,c=1] Deleter 255
execute as @s[scores={move=125}] at @s run summon ds:projectile HollowPTRG ^^^110
execute as @s[scores={move=118..126}] at @s positioned ^^^110 run scoreboard players set @e[type=ds:projectile,type=!item,type=!item,name=HollowPTRG,c=1] Deleter 340
execute as @s[scores={move=20..120}] at @s run tp @e[type=ds:projectile,type=!item,type=!item,name=HollowP,c=1] ^^^6 facing ^^^20
execute as @s[scores={move=20..126}] at @s positioned ^^^110 run tp @e[type=ds:projectile,type=!item,type=!item,name=HollowPTRG,c=1] ~~~ 



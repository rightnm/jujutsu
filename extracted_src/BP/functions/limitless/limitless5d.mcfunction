
playanimation @s[scores={move=480..},tag=limitless,tag=form5d] animation.limitless_purple
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run playsound music.limitlesspurple1 @a[r=200] ~~~ 10000 1 10000
execute as @s[scores={move=480},tag=limitless,tag=form5d] at @s run playsound beacon.deactivate @a ~~~ 1 0.5
execute as @s[scores={move=480},tag=limitless,tag=form5d] at @s run playsound mob.red1 @a ~~~ 1 0.5

execute as @s[scores={move=1..460},tag=limitless,tag=form5d] at @s run effect @e[type=!item,rm=1] slowness 1 1 true


execute as @s[scores={move=201..,Stun=1..}] at @s run function cancel_attack


execute as @s[scores={move=20..170,detect_health=5..},tag=limitless,tag=form5d] at @s run scoreboard players add @s damage 1

execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run camera @a[r=20] fade time 0 0.33 1 color 255 55 255
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run playsound mob.shock2 @a ~~~ 0.5
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run playsound mob.shock2 @a ~~~ 0.25
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run camerashake add @a[r=200] 2 1

execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run summon ds:projectile LimitlessPTRG
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run summon ds:projectile LimitlessPRed
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run summon ds:projectile LimitlessPBlue
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run scoreboard players set @e[type=!item,name=LImitlessPTRG,c=1] Deleter 251
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run scoreboard players set @e[type=!item,name=LImitlessPRed,c=1] Deleter 251
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s run scoreboard players set @e[type=!item,name=LImitlessPBlue,c=1] Deleter 251
effect @s[scores={move=321..460},tag=limitless,tag=form5d] levitation 1 1 true
effect @s[scores={move=1..321},tag=limitless,tag=form5d] levitation 0 20 true
execute as @s[scores={move=310..320},tag=limitless,tag=form5d] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 barrier [] replace air
execute as @s[scores={move=300..309},tag=limitless,tag=form5d] at @s run fill ~ ~2 ~ ~ ~ ~ air [] replace barrier
execute as @s[scores={move=1..7},tag=limitless,tag=form5d] at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air [] replace barrier
execute as @s[scores={move=1..7},tag=limitless,tag=form5d] at @s run fill ~15 ~2 ~15 ~-15 ~-15 ~-15 air [] replace barrier


execute as @s[scores={move=461..478},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-1.25 ^2 rot ~-15 ~180
execute as @s[scores={move=460},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 0.875 in_out_circ pos ^ ^ ^12 rot ~ ~180
execute as @s[scores={move=451},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 1 in_circ  pos ^ ^-0.5 ^22 rot ~-15 ~180
execute as @s[scores={move=441},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 0.51 linear pos ^22 ^ ^ rot ~ ~90
execute as @s[scores={move=431},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 0.51 linear pos ^ ^6 ^-22 rot ~ ~
execute as @s[scores={move=421},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 0.51 linear pos ^-22 ^ ^ rot ~ ~-90
execute as @s[scores={move=411},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 0.51 linear pos ^ ^10 ^25 rot ~15 ~180

execute as @s[scores={move=401},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 8 in_out_circ pos ^ ^-3 ^30 rot ~-30 ~180
execute as @s[scores={move=171},tag=limitless,tag=form5d] at @s anchored eyes run camera @s set minecraft:free ease 6 in_out_circ pos ^ ^ ^80 rot ~0 ~180

execute as @s[scores={move=1..460},tag=limitless,tag=form5d] at @s run tp @e[type=!item,name=LimitlessPTRG,c=1] ~~1~

execute as @e[c=1,type=!item,type=!item,name=LimitlessPTRG] at @s run function limitless/limitless5ptrg

tag @e[type=!item,scores={move=1..2},tag=form5d,tag=limitless] remove form5d


scoreboard players add @s[scores={move=480..},tag=limitless,tag=form5d] infinity 15
scoreboard players add @s[scores={move=1..},tag=limitless,tag=form5d] infinity 1
scoreboard players set @s[scores={move=1..480},tag=limitless,tag=form5d] ProjImmune 50
scoreboard players set @s[scores={move=31..},tag=limitless,tag=form5d] Camera 5
scoreboard players set @s[scores={move=1..},tag=limitless,tag=form5d] Move 5

execute as @s[scores={move=1..},tag=limitless,tag=form5d] at @s run kill @e[type=item,r=200]

execute as @s[scores={move=1..},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=ds:knockback,r=15]
execute as @s[scores={move=1..},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=ds:running,r=8]
execute as @s[scores={move=1..},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=ds:lapse_explode,r=15]
execute as @s[scores={move=1..},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=ds:limitless_explosion,r=25]
execute as @s[scores={move=480..},tag=limitless,tag=form5d] at @s run tp @s @s

execute as @s[scores={move=229},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple_impact1 ~~6~
execute as @s[scores={move=210..211},tag=limitless,tag=form5d] at @s run camera @a[r=100] fade time 0 0.1 0.5 color 255 255 255
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple1 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple2 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple3 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple4 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple5 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple6 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:hollow_purple7 ~~7~
execute as @s[scores={move=190..209},tag=limitless,tag=form5d] at @s run particle ds:limitless_lightning3 ~~6~

execute as @s[scores={move=180..190},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck1 ~~7~
execute as @s[scores={move=180..190},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck2 ~~7~
execute as @s[scores={move=180..190},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck3 ~~7~
execute as @s[scores={move=180..190},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck4 ~~7~
execute as @s[scores={move=180..190},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck5 ~~7~
execute as @s[scores={move=170..180},tag=limitless,tag=form5d] at @s run particle ds:limitless_suck6 ~~7~

title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=188}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=187}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=186}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=185}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=184}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=183}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=182}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=181}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=176..180}] title §r§l
camera @s[tag=form5d,tag=limitless,scores={move=180}] fade time 0 0 0.45 color 255 255 255

title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=174}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=173}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=172}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=171}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=170}] title 
title @s[tag=!impactframesoff,tag=form5d,tag=limitless,scores={move=160..169}] title §l



execute as @s[scores={move=180},tag=limitless,tag=form5d] at @s run playsound music.enuma @a[r=200] ~~~ 10000 1.2 10000
execute as @s[scores={move=175},tag=limitless,tag=form5d] at @s run camera @s fade time 8 2 1 color 255 55 255

execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run tp @s ~~~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode_air ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode1 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode2 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode3 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode4 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode5 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode6 ~~7~
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run particle ds:limitless_explode7 ~~7~

execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s run execute as @e[c=1,type=!item,type=!item,family=mahoraga,r=280] at @s run function damages/deletion_damage
execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s run execute as @e[c=1,type=!item,type=!item,type=!falling_block,type=!ds:limitless_explosion,scores={wheelactive=1..},r=280] at @s run function damages/deletion_damage
execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s run camerashake add @a[r=300] 4 0.25
execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s run summon ds:limitless_explosion ~~-55~
execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s run spreadplayers ~ ~ 7 50 @e[type=!item,type=ds:limitless_explosion,r=60]
execute as @s[scores={move=40..175},tag=limitless,tag=form5d] at @s[tag=griefable] run execute as @e[c=1,type=!item,type=!item,type=ds:limitless_explosion] at @s run function 4x4sphere
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run damage @e[type=!item,rm=2,r=280,tag=!deletion_adapted] 12 override
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run damage @e[type=!item,rm=2,r=280,tag=deletion_adapted] 4 override
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=item,r=280]
execute as @s[scores={move=20..175},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=falling_block,r=280]
execute as @s[scores={move=10..30},tag=limitless,tag=form5d] at @s run tickingarea add ~90 ~ ~90 ~-90 ~ ~-90 limitlesspurple
execute as @s[scores={move=1..10},tag=limitless,tag=form5d] at @s run tickingarea remove limitlesspurple
execute as @s[scores={move=10..30},tag=limitless,tag=form5d] at @s run kill @e[type=!item,type=ds:limitless_explosion]

execute as @s[scores={move=480},tag=limitless,tag=form5d] at @s run camera @s fade time 0.2 0.2 0.3 color 255 255 255

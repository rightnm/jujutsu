playanimation @s[scores={move=40..41}] animation.dismantle_pummel1

execute as @s[scores={move=1..2}] run fog @a remove red
execute as @s[scores={move=1..2}] run playanimation @s animation.stunned
execute as @s[scores={move=1..2}] run tag @e[tag=dismantlepummel] remove dismantlepummel
execute as @s[scores={move=1..2}] run tag @s remove form2sc

scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..20}] Camera 5
scoreboard players set @s[scores={move=1..25}] Frames 7

scoreboard players set @s[scores={move=42..,cutscene=0..5}] cutscene 25
scoreboard players set @s[scores={move=42..,Frames=0..5}] Frames 25

execute as @s[scores={move=18..24}] at @s run scriptevent ds:knockback 3

execute as @s[scores={move=15..19}] at @s unless entity @e[tag=dismantlepummel] run tag @e[c=1,tag=!Frames,r=4] add dismantlepummel
execute as @s[scores={move=15..19}] at @s run tp @e[c=1,tag=dismantlepummel] ~ 225 ~
execute as @s[scores={move=19}] at @s run particle ds:leap ~~~
execute as @s[scores={move=19}] at @s run particle ds:dirt2 ~~4~
execute as @s[scores={move=19}] at @s run particle ds:dirt4 ~~1.5 ~
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=19}] at @s run particle ds:ground_slam3 ~~1~
execute as @s[scores={move=19}] at @s run particle ds:pushed_up1 ~~1~
execute as @s[scores={move=19}] at @s run particle ds:pushed_up2 ~~1~
execute as @s[scores={move=19}] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=19}] at @s run playsound mob.impact @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={move=17..19}] at @s run effect @e[tag=dismantlepummel,c=1] slow_falling 20 1 true

scoreboard players set @e[tag=dismantlepummel,scores={Stun=0..27}] Stun 50
scoreboard players set @e[tag=dismantlepummel,scores={Camera=0..7}] Camera 30
execute as @e[c=1,tag=dismantlepummel] at @s run tp @s ~~~

execute as @s[scores={move=10..15}] at @s if entity @e[tag=dismantlepummel,r=350] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..1001}] animation.dismantle_pummel2
execute as @s[scores={move=1000..1001}] at @s run playanimation @e[tag=dismantlepummel,c=1] animation.dismantle_pummeled
camera @s[scores={move=1000..1001}] fade time 0.4 0.5 0.25 color 0 0 0

execute as @s[scores={move=988..989}] at @s run execute as @a[r=50] at @s run playsound music.bass3 @s ~~~ 99999 0.5 99999

execute as @s[scores={move=980..990}] at @s run execute as @e[tag=dismantlepummel,c=1] at @s run tp @s @s
execute as @s[scores={move=980..990}] at @s run execute as @e[tag=dismantlepummel,c=1] at @s run tp @s ~~~
execute as @s[scores={move=990}] at @s run execute as @e[tag=dismantlepummel,c=1] at @s run tp @e[tag=sukuna,scores={move=980..990},c=1] ^^3^-0.15 facing @s

execute as @s[scores={move=988..991}] at @s run particle ds:flashstep ~~~
execute as @s[scores={move=988}] at @s run particle ds:dirt0
execute as @s[scores={move=988}] at @s run particle ds:dirt2
execute as @s[scores={move=988}] at @s run particle ds:ground_slam

scoreboard players remove @s[scores={move=710..880}] move 1


execute as @s[scores={move=976..978}] at @s anchored eyes run camera @s set minecraft:free pos ^^0.5^1.75 facing ^^-0.25^-1
execute as @s[scores={move=976..978}] at @s anchored eyes run camera @p[tag=dismantlepummel,c=1] set minecraft:free pos ^^0.5^1.75 facing ^^-0.25^-1

execute as @s[scores={move=900..949}] at @s anchored eyes run scriptevent ds:knockback 1
execute as @s[scores={move=760..949}] at @s anchored eyes run camera @s set minecraft:free pos ^0.35^^1 facing @e[tag=dismantlepummel,c=1]
execute as @s[scores={move=760..949}] at @s anchored eyes run camera @p[tag=dismantlepummel,c=1] set minecraft:free pos ^0.35^^1 facing @e[tag=dismantlepummel,c=1]

execute as @s[scores={move=600..759}] at @s anchored eyes run camera @s set minecraft:free pos ^-65^^50 facing ^^^60
execute as @s[scores={move=600..759}] at @s anchored eyes run camera @p[tag=dismantlepummel,c=1] set minecraft:free pos ^-65^^50 facing ^^^60


execute as @s[scores={move=600..759}] at @s anchored eyes run particle ds:dismantle_stars_falling ^^^33
execute as @s[scores={move=600..759}] at @s anchored eyes run particle ds:dismantle_stars_falling ^^^66


execute as @s[scores={move=600..989}] at @s run tp @s ~~~
execute as @s[scores={move=600..988}] at @s run tp @s ~~~ facing @e[tag=dismantlepummel,c=1]



execute as @s[scores={move=610..910}] at @s run camerashake add @a[r=200] 0.25 0.08 

execute as @s[scores={move=907..910}] at @s run scoreboard players set @s chance 0
execute as @s[scores={move=610..910}] at @s run scoreboard players remove @s[scores={chance=1..}] chance 1


execute as @s[scores={move=600..970,chance=0}] at @s anchored eyes run particle ds:red_tint2 ^^^50
execute as @s[scores={move=610..910,chance=0}] at @s run scriptevent ds:dismantle_quick2
execute as @s[scores={move=610..910,chance=1}] at @s run scriptevent ds:dismantle_quick2
execute as @s[scores={move=610..910,chance=0}] at @s run playsound mob.dismantle @a[r=100] ^^^13 9999 1 9999
execute as @s[scores={move=610..910,chance=2}] at @s run playsound mob.dismantle @a[r=100] ^^^13 9999 1.6 9999


execute as @s[scores={move=650..660,chance=0}] at @s run scoreboard players set @e[tag=dismantlepummel,c=1] Hit 10
execute as @s[scores={move=650..660,chance=0}] at @s run scoreboard players set @e[tag=dismantlepummel,c=1] damage 45
execute as @s[scores={move=650..660,chance=0}] at @s run scoreboard players set @e[tag=dismantlepummel,c=1] knockdown 90
 

effect @s[scores={move=600..654},type=!player] slow_falling 5 1 true
scoreboard players set @s[scores={move=600..654}] move 3

scoreboard players set @s[scores={move=1000..}] chance 0

effect @e[tag=dismantlepummel,scores={detect_health=0..30}] resistance 1 1 true

execute as @s[scores={move=908}] at @s run playsound mob.rapiddismantle @a[r=200] ~~~ 99999 1 999999
execute as @s[scores={move=976}] at @s run playsound mob.rapiddismantle @a[r=200] ~~~ 99999 1 999999
execute as @s[scores={move=911}] at @s run playsound mob.blitz2 @a[r=200] ~~~ 99999 1.2 999999
execute as @s[scores={move=907}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=906}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=905}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=904}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=903}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=902}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=901}] at @s run title @a[r=10,tag=!impactframesoff] title §l
execute as @s[scores={move=901}] at @s run playsound music.bass3 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=899}] at @s run playsound mob.slice @a[r=100] ~~~  99999 1 99999
execute as @s[scores={move=900}] at @s run particle ds:invert ^^^1
execute as @s[scores={move=909..910}] at @s run playsound mob.shock1 @a[r=200] ~~~ 9999 1 9999
execute as @s[scores={move=909..910}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 0.3 9999
execute as @s[scores={move=909..910}] at @s run camerashake add @a[r=200] 0.2 0.2 rotational
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:large_impact1 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:large_impact2 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve1 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve2 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve3 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve4 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:carve5 ^^^0.75
execute as @s[scores={move=909..910}] at @s anchored eyes run particle ds:ground_slam ^^^0.75
execute as @s[scores={move=610..910}] at @s run execute as @e[tag=dismantlepummel,c=1] at @s run tp @s ^^-0.20^0.1
execute as @s[scores={move=610..910}] at @s run execute as @e[tag=dismantlepummel,c=1,type=player] at @s run tp @s ~~-0.1~
execute as @s[scores={move=610..910}] at @s run execute as @e[tag=dismantlepummel,c=1,type=!player] at @s run tp @s ~~-0.4~
execute as @s[scores={move=610..710}] at @s run scoreboard players add @s fuga 1

execute as @s[scores={move=610..910}] at @s run scoreboard players set @s[scores={chance=0}] chance 3

execute as @s[scores={move=610..910}] at @s positioned ^^^15 run function damages/slash_damage

camera @s[scores={move=670}] fade time 0.5 1.5 0.75 color 0 0 0



scoreboard players remove @s[scores={move=940..989}] move 1


playanimation @s[scores={move=60..61}] animation.instant_body.ab4



scoreboard players set @s[scores={move=10..,Frames=0..4}] Frames 11
scoreboard players set @s[scores={move=10..,Move=0..3}] Move 11
scoreboard players set @s[scores={move=100..,Camera=0..3}] Camera 11

execute as @s[scores={move=57}] at @s run playsound mob.whoosh2 @a[r=33] ~~1~ 9999 1 9999
execute as @s[scores={move=57}] at @s run particle ds:swift_dash ~~0.1~
execute as @s[scores={move=56}] at @s run scriptevent ds:knockback -7.5

execute as @s[scores={move=45}] at @s run playsound mob.whoosh3 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=45}] at @s run playsound mob.blitz2 @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={move=45..46}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"
execute as @s[scores={move=45}] at @s run scriptevent ds:knockback 12


execute as @s[scores={move=76..900}] at @s run execute as @e[tag=rapid_assault_trg,tag=!player,c=1] at @s run tp @s ~~~~ 0

camera @s[scores={move=15..40}] set minecraft:follow_orbit
playanimation @s[scores={move=39..40}] animation.instant_body.ab4_barraging
execute as @s[scores={move=17..40}] at @s run scriptevent ds:knockback 3
execute as @s[scores={move=15..40}] at @s run particle ds:rapid_assault ~~1~
execute as @s[scores={move=15..40}] at @s run camerashake add @a[r=12] 0.33 0.09 rotational
execute as @s[scores={move=15..40}] at @s run playsound random.whoop @a[r=33] ~~-4~ 9999 1.55 9999
execute as @s[scores={move=15..40}] at @s run playsound mob.swordslash @a[r=33] ~~-4~ 9999 3.75 9999
execute as @s[scores={move=15..40}] at @s run playsound mob.blitz2 @a[r=33] ~~-4~ 9999 5 9999

execute as @s[scores={move=100..},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=955..},type=!player] at @s run tp @e[tag=rapid_assault_trg,c=1] ^^^1 facing @s

tag @s[scores={move=15..41},tag=!Frames] add Frames
execute as @s[scores={move=15..40}] at @s run damage @e[family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=4,tag=!rapid_assault] 2 override
execute as @s[scores={move=15..40}] at @s run scoreboard players set @e[family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=5,tag=!rapid_assault] Stun 33
execute as @s[scores={move=15..40}] at @s run scoreboard players set @e[family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=5,tag=!rapid_assault] Hit 1
execute as @s[scores={move=15..40}] at @s run tp @e[family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=5,tag=!rapid_assault] ~~~1 

execute as @s[scores={move=13}] at @s run playsound mob.whoosh3 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=13}] at @s run playsound mob.blitz2 @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={move=14}] at @s run scriptevent ds:knockback 12


execute as @s[scores={move=13}] at @s run particle ds:ground_slam2
execute as @s[scores={move=13}] at @s run particle ds:dirt0

camera @s[scores={move=14..15}] clear

execute as @s[scores={move=11..13}] at @s unless entity @e[tag=rapid_assault_trg,c=1,r=10] run tag @e[c=1,family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=5] add rapid_assault_trg
execute as @s[scores={move=11..13}] at @s if entity @e[tag=rapid_assault_trg,c=1,r=10] run scoreboard players set @s move 1001

execute as @s[scores={move=15..40}] at @s if entity @p[tag=griefable] run fill ~3 ~2 ~3 ~-3 ~ ~-3 air [] destroy
execute as @s[scores={move=15..40}] at @s if entity @p[tag=griefable] run kill @e[type=item,r=10]


execute as @s[scores={move=12..17}] at @s run tp  @e[family=!projectile,family=!damage,type=!item,type=!xp_orb,tag=!Frames,r=5] ^^^2 facing @s
execute as @s[scores={move=12..17}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=17}] at @s run playsound mob.slash1 @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={move=1000..}] at @s run camera @a[r=50] fade time 0 0.15 0.1 color 255 255 255
execute as @s[scores={move=1000..}] at @s run playsound mob.strike @a[r=100] ~~1~ 99999 1 99999

tag @s[tag=!rapid_assault,scores={move=5..}] add rapid_assault

execute as @s[scores={move=999..}] at @s run tp @s ~~~ facing ~~~10
execute as @s[scores={move=997..}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=999..}] at @s run particle ds:demons_descent4 ~~1~
execute as @s[scores={move=999..}] at @s run particle ds:demons_descent5 ~~1~

execute as @s[scores={move=998..}] at @s run event entity @s ds:grab_seat
execute as @s[scores={move=998..}] at @s run ride @e[tag=rapid_assault_trg,c=1] start_riding @e[tag=rapid_assault,c=1] teleport_rider



execute as @s[scores={move=995..}] at @s run camera @s set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5
execute as @s[scores={move=995..}] at @s run camera @p[tag=rapid_assault_trg,c=1] set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5



playanimation @s[scores={move=994..996}] animation.instant_body.ab4_landed
execute as @s[scores={move=994..996}] at @s run playanimation @e[tag=rapid_assault_trg,c=1] animation.instant_body.ab4_landed2

execute as @s[scores={move=984..990}] at @s run camerashake add @a[r=50] 0.5 0.15



execute as @s[scores={move=991}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.blitz2 @a[r=100] ~~1~ 9999 1.5 9999
execute as @s[scores={move=990}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.blitz2 @a[r=100] ~~1~ 9999 1.25 9999
execute as @s[scores={move=989}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.blitz2 @a[r=100] ~~1~ 9999 1.35 9999
execute as @s[scores={move=988}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.blitz2 @a[r=100] ~~1~ 9999 1.5 9999
execute as @s[scores={move=990}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 9999 0.5 9999

execute as @s[scores={move=988}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.blitz2 @a[r=100] ~~1~ 9999 1.35 9999

execute as @s[scores={move=990}] at @s run camera @s set minecraft:free ease 0.15 in_out_circ pos ^-7^1^0.5 facing ^^1^8
execute as @s[scores={move=990}] at @s run camera @p[tag=rapid_assault_trg,c=1] set minecraft:free ease 0.15 in_out_circ  pos ^-7^1^0.5 facing ^^1^8

execute as @s[scores={move=988}] at @s run camera @s set minecraft:free ease 0.2 in_out_circ pos ^-7^1^0.5 facing ^^1^0.5
execute as @s[scores={move=988}] at @s run camera @p[tag=rapid_assault_trg,c=1] set minecraft:free ease 0.2 in_out_circ  pos ^-7^1^0.5 facing ^^1^0.5

execute as @s[scores={move=980..986}] at @s run camera @s set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5
execute as @s[scores={move=980..986}] at @s run camera @p[tag=rapid_assault_trg,c=1] set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5

execute as @s[scores={move=982}] at @s run execute as @a[r=50] at @s run playsound music.bass1 @s ~~~ 99999 0.85 99999

execute as @s[scores={move=990}] at @s run effect @a[r=50] darkness 2 1 true

execute as @s[scores={move=958}] at @s run playsound mob.impact1 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={move=954}] at @s run playsound mob.impact2 @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={move=945..959}] at @s run camera @s set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5
execute as @s[scores={move=945..959}] at @s run camera @p[tag=rapid_assault_trg,c=1] set minecraft:free pos ^-7^1^0.5 facing ^^1^0.5

execute as @s[scores={move=954}] at @s run camerashake add @a[r=50] 0.5 0.25 rotational
execute as @s[scores={move=955}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=951}] at @s run summon gg:impact_frame_black ~~~

execute as @s[scores={move=958}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:freeze_frame_impact1 ~~1~
execute as @s[scores={move=958}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:freeze_frame_impact2 ~~1~
execute as @s[scores={move=958}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999


scoreboard players random @s[scores={move=962}] blackflashchance 1 20
scoreboard players set @s[scores={move=962},tag=blackflashrig] blackflashchance 7


title @s[scores={move=953..962}] title §l

execute as @s[scores={move=953}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:curses_energy_hit1 ~~1~
execute as @s[scores={move=953}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:curses_energy_hit2 ~~1~
execute as @s[scores={move=953}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:curses_energy_hit3 ~~1~
execute as @s[scores={move=955}] at @s run execute as @e[tag=rapid_assault_trg,c=1] at @s run particle ds:burst_impact ~~1~
execute as @s[scores={move=953}] at @s run scoreboard players set @e[tag=rapid_assault_trg,c=1] Flourish 9
execute as @s[scores={move=953}] at @s run scoreboard players set @e[tag=rapid_assault_trg,c=1] Stun 40
execute as @s[scores={move=953}] at @s run scoreboard players add @e[tag=rapid_assault_trg,c=1] Evade 20
execute as @s[scores={move=953}] at @s run damage @e[tag=rapid_assault_trg,c=1] 40 override
execute as @s[scores={move=953}] at @s run scoreboard players operation @e[tag=rapid_assault_trg,c=1] damage += @s adamageadd
execute as @s[scores={move=940..947,thezone=190..}] at @s run scriptevent ds:lightning 2,0.85,1.25, 0.8,0.1,0.1, 0.8,0.1,0.1, 2,2,2, 2,2,2
execute as @s[scores={move=945..962,thezone=190..}] at @s run scriptevent ds:lightning scriptevent ds:lightning 1,0.85,0.75, 0.8,0.1,0.1, 0.8,0.1,0.1, 3,3,3, 3,3,3
execute as @s[scores={move=945..954,thezone=190..}] at @s run scriptevent scriptevent ds:lightning 1,0.85,1, 0.8,0.1,0.1, 0.8,0.1,0.1, 2.75,2.75,2.75, 2.75,2.75,2.75

execute as @s[scores={move=950}] at @s run particle ds:rubble3 ^^^1
execute as @s[scores={move=952}] at @s run particle ds:freeze_frame_curse_impact1 ^^1^1 
execute as @s[scores={move=952}] at @s run particle ds:freeze_frame_curse_impact2 ^^1^1 
execute as @s[scores={move=952}] at @s run particle ds:ground_slam2
execute as @s[scores={move=952}] at @s run particle ds:dirt0

execute as @s[scores={move=949..952}] at @s run camera @p[tag=rapid_assault_trg,c=1,r=50] clear


execute as @s[scores={move=953}] at @s run tag @e[r=12,tag=rapid_assault_trg,c=1] remove rapid_assault_trg
execute as @s[scores={move=952..955}] at @s run tp @e[tag=rapid_assault_trg,c=1] ^^^1 facing @s
execute as @s[scores={move=952..954}] at @s run tp @s ~~~~ 0



execute as @s[scores={move=952}] at @s run function damages/slash_damage
execute as @s[scores={move=952}] at @s run function damages/blunt_damage

event entity @s[scores={move=950..953}] ds:release_seat

camera @s[scores={move=901..937}] clear
scoreboard players set @s[scores={move=900..937}] move 3
tag @s[scores={move=0..3}] remove rapid_assault
event entity @s[scores={move=0..3}] ds:release_seat
execute as @s[scores={move=0..4}] at @s run camera @a[r=30] clear
tag @s[scores={move=0..2}] remove wep4m

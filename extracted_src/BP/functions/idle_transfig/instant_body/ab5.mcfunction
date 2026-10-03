scoreboard players set @s[scores={move=11..}] Frames 14
scoreboard players set @s[scores={move=11..}] Move 14
scoreboard players set @s[scores={move=11..}] Camera 14
scoreboard players set @e[tag=impenetrable2] Camera 14
scoreboard players set @e[tag=impenetrable2] Move 14
scoreboard players set @e[tag=impenetrable2] Stun 15
scoreboard players set @e[tag=impenetrable2] stunned 15
tag @s[tag=!Frames] add Frames


execute as @s[scores={move=30..}] at @s run effect @e[tag=!impenetrable2,r=15,tag=!wep5m,type=!Player] slowness 2 20 true
execute as @s[scores={move=30..}] at @s run scoreboard players set @e[tag=!impenetrable2,r=15,tag=!wep5m] Stun 30

execute as @s[scores={move=30..}] at @s run kill @e[type=ds:red_reverse,r=25]
execute as @s[scores={move=30..}] at @s run kill @e[type=ds:knockback,r=12]
execute as @s[scores={move=30..}] at @s run kill @e[type=ds:mahoraga_knockback1,r=25]
execute as @s[scores={move=30..}] at @s run kill @e[type=ds:mahoraga_knockback2,r=25]

execute as @s[type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=725..}] at @s run execute as @e[tag=impenetrable2,tag=!player,c=1] at @s run tp @s ~~~~ 0


execute as @s[scores={move=20..25}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=20..25}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=20..25}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=20..25}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=20..25}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=20..25}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~

playanimation @s[scores={move=25..26}] animation.instant_body.ab5

execute as @s[scores={move=22}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 0.4
execute as @s[scores={move=22}] at @s run particle ds:ground_slam1
execute as @s[scores={move=22}] at @s run particle ds:ground_slam1

execute as @s[scores={move=20..22}] at @s run particle ds:turbo_intensity2 ~~-1~
execute as @s[scores={move=20..22}] at @s  run scoreboard objectives add atk dummy

event entity @s[scores={move=1..4}] ds:release_seat


execute as @s[scores={move=6..22}] at @s  run scoreboard players set @e[r=4.99,type=ds:knockback_dummy] atk 2
execute as @s[scores={move=6..22}] at @s  run scoreboard players set @e[r=4.99,type=ds:no_knockback_dummy] atk 2


execute as @s[scores={move=6..22}] at @s  run scoreboard players set @e[type=!player,scores={move=1..},r=4] atk 2
execute as @s[scores={move=6..22}] at @s  run scoreboard players set @e[r=4.99,tag=!Frames,scores={detect_left=1..},c=1,rm=0.15] atk 2
execute as @s[scores={move=6..22}] at @s  run tag @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] add impenetrable2
execute as @s[scores={move=6..22}] at @s  run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] Stun 15
execute as @s[scores={move=6..22}] at @s  run execute as @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] at @s run function cancel_attack

execute as @s[scores={move=6..22}] at @s if entity @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,tag=impenetrable2] run scoreboard players set @s move 1001


execute as @s[scores={move=999..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=999..}] at @s run camera @a[r=25] fade time 0 0.15 0.15 color 255 255 255
execute as @s[scores={move=999..}] at @s run particle ds:flashstep2

execute as @s[scores={move=995..998}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=995..998}] at @s run execute as @e[tag=impenetrable2,c=1] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=990..994}] at @s run tp @s ~~~~ 0


execute as @s[scores={move=951..994}] at @s run tp @e[tag=impenetrable2,c=1] ^^^1 facing @s

execute as @s[scores={move=723..994}] at @s run tp @e[tag=impenetrable2,c=1,type=!player] ^^^1 facing @s
execute as @s[scores={move=723..994}] at @s if entity @e[tag=impenetrable2,c=1,type=!player,family=!dummy] run tp @s ~~~~ 0

execute as @s[scores={move=990..}] at @s run playanimation @s animation.instant_body.ab5_mahito1
execute as @s[scores={move=990..}] at @s run playanimation @e[tag=impenetrable2,c=1] animation.instant_body.ab5_victim1

execute as @s[scores={move=985..990}] at @s run camera @s set minecraft:free pos ^1^0.7^3.5 facing ^^1.75^1
execute as @s[scores={move=985..990}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^1^0.7^3.5 facing ^^1.75^1
execute as @s[scores={move=989}] at @s run camerashake add @a[r=30] 2 0.15 
execute as @s[scores={move=989}] at @s run playsound mob.clang1 @a ~~1~ 9999 0.8 9999
execute as @s[scores={move=989}] at @s run particle ds:burst_impact ^-0.5^1.15^0.5
execute as @s[scores={move=989}] at @s run particle ds:impact_vfx1 ^-0.5^1.15^0.5



execute as @s[scores={move=975}] at @s run particle ds:swift_dash_large ~~0.5~
execute as @s[scores={move=975}] at @s run playsound mob.wither.shoot @a[r=30] ~~1~ 99999 0.5 99999
execute as @s[scores={move=975}] at @s run playsound mob.breeze.shoot @a[r=30] ~~1~ 99999 0.6 99999
execute as @s[scores={move=975}] at @s run camerashake add @a[r=30] 0.5 0.25

execute as @s[scores={move=972}] at @s run playsound mob.mahito_grunt1 @a[r=30] ~~1~ 99999 1 99999



execute as @s[scores={move=960}] at @s run camera @s set minecraft:free pos ^^1.3^0.7 facing ^0.5^1.3^-0.5
execute as @s[scores={move=960}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^^1.3^0.7 facing ^0.5^1.3^-0.5


execute as @s[scores={move=960}] at @s run playsound mob.mahito_grunt2 @a[r=30] ~~1~ 99999 1 99999
execute as @s[scores={move=950}] at @s run particle ds:burst_impact ^^1^1 
execute as @s[scores={move=950}] at @s run particle ds:impact_vfx1 ^^1^1 
execute as @s[scores={move=950}] at @s run camerashake add @a[r=30] 2 0.15 
execute as @s[scores={move=949..950}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"
execute as @s[scores={move=950}] at @s run playsound mob.impact2 @a[r=30] ~~1~ 99999 0.9 99999

execute as @s[scores={move=950}] at @s run particle ds:ground_slam2 ^^^3
execute as @s[scores={move=949}] at @s run particle ds:ground_slam2 ^^^6
execute as @s[scores={move=948}] at @s run particle ds:ground_slam2 ^^^8
execute as @s[scores={move=947}] at @s run particle ds:ground_slam2 ^^^13

execute as @s[scores={move=950}] at @s run camera @s set minecraft:free pos ^-1.5^0.5^ facing ^^1^2
execute as @s[scores={move=950}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-1.5^0.5^ facing ^^1^2

execute as @s[scores={move=948..949}] at @s run camera @s set minecraft:free ease 0.2 in_sine pos ^-1.5^0.5^-1 facing ^^1^12
execute as @s[scores={move=948..949}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 0.2 in_sine pos ^-1.5^0.5^-1 facing ^^1^12

execute as @s[scores={move=934..935}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^-2^2^-3 facing ^^^14
execute as @s[scores={move=934..935}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 2 in_sine pos ^-2^2^-3 facing ^^^14

execute as @s[scores={move=935}] at @s run playsound mob.ender_dragon.flap @a[r=25] ^^^14 9999 1.85 9999
execute as @s[scores={move=925}] at @s run playsound mob.ender_dragon.flap @a[r=25] ^^^14 9999 0.85 9999

execute as @s[scores={move=911..913}] at @s run playsound mob.ender_dragon.flap @a[r=25] ^^^14 9999 2 9999
execute as @s[scores={move=911..913}] at @s run playsound mob.blaze.shoot @a[r=25] ^^^14 9999 4 9999
execute as @s[scores={move=911..913}] at @s run particle ds:flashstep1 ^^^14
execute as @s[scores={move=911..913}] at @s run particle ds:flashstep2 ^^^14
execute as @s[scores={move=911..913}] at @s run camerashake add @a[r=25] 0.12 0.08
execute as @s[scores={move=905..907}] at @s run particle ds:flashstep1 ^^^0.15
execute as @s[scores={move=905..907}] at @s run particle ds:flashstep2 ^^^0.15

execute as @s[scores={move=915}] at @s run playsound mob.blitz1 @a[r=25] ^^^7 9999 2 9999

execute as @s[scores={move=905}] at @s run playsound mob.fuga_clap @a[r=25] ~~1~ 9999 2.5 9999
execute as @s[scores={move=905}] at @s run playsound mob.shock1 @a[r=25] ~~1~ 9999 3 9999
execute as @s[scores={move=905}] at @s run playsound mob.wither.shoot @a[r=25] ~~1~ 9999 0.5 9999
execute as @s[scores={move=885..905}] at @s run camera @s set minecraft:free pos ^-0.5^1.55^0.75 facing ^^1.4^0.75
execute as @s[scores={move=885..905}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-0.5^1.55^0.75 facing ^^1.4^0.75
execute as @s[scores={move=885..905}] at @s run camerashake add @a[r=10] 0.12 0.08


execute as @s[scores={move=877..878}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^-1.35^0.8^1.5 facing ^^1.3^0.33 
execute as @s[scores={move=877..878}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 0.25 in_sine pos ^-1.35^0.8^1.5 facing ^^1.3^0.33

execute as @s[scores={move=872..873}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^-1^0.8^1.75 facing ^^1.3^0.33
execute as @s[scores={move=872..873}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 2 in_sine pos ^-1^0.8^1.75 facing ^^1.3^0.33


execute as @s[scores={move=877}] at @s run playsound random.whoop @a[r=50] ^^1^1  9999 1.25 9999
execute as @s[scores={move=875}] at @s run playsound mob.clang1 @a[r=50] ^^0.5^ 9999 1.5 9999 
execute as @s[scores={move=875}] at @s run playsound random.anvil_land @a[r=50] ^^0.5^ 9999 0.8 9999 
execute as @s[scores={move=875}] at @s run camerashake add @a[r=30] 0.25 0.1
execute as @s[scores={move=875}] at @s run particle ds:impact_vfx1 ~~1~

execute as @s[scores={move=867}] at @s run playsound random.whoop @a[r=50] ^^1^1  9999 1 9999
execute as @s[scores={move=865}] at @s run playsound mob.clang1 @a[r=50] ^^0.5^ 9999 1.3 9999 
execute as @s[scores={move=865}] at @s run camerashake add @a[r=30] 0.4 0.1
execute as @s[scores={move=865}] at @s run particle ds:impact_vfx1 ~~1~


execute as @s[scores={move=853}] at @s run playsound random.whoop @a[r=50] ^^1^1  9999 1 9999
execute as @s[scores={move=853}] at @s run playsound mob.clang1 @a[r=50] ^^0.5^ 9999 1.5 9999 
execute as @s[scores={move=853}] at @s run camerashake add @a[r=30] 0.4 0.1
execute as @s[scores={move=853}] at @s run particle ds:impact_vfx1 ~~1~

execute as @s[scores={move=850}] at @s run playsound random.whoop @a[r=50] ^^1^1  9999 1 9999
execute as @s[scores={move=850}] at @s run playsound mob.clang1 @a[r=50] ^^0.5^ 9999 1.5 9999 
execute as @s[scores={move=850}] at @s run camerashake add @a[r=30] 0.25 0.1
execute as @s[scores={move=850}] at @s run particle ds:impact_vfx1 ~~1~

execute as @s[scores={move=846}] at @s run playsound random.whoop @a[r=50] ^^1^1  9999 1.2 9999
execute as @s[scores={move=846}] at @s run playsound mob.parry @a[r=50] ^^0.5^ 9999 0.45 9999 
execute as @s[scores={move=846}] at @s run playsound mob.clang1 @a[r=50] ^^0.5^ 9999 0.95 9999 
execute as @s[scores={move=846}] at @s run camerashake add @a[r=30] 0.4 0.1
execute as @s[scores={move=846}] at @s run particle ds:impact_vfx1 ~~1~

execute as @s[scores={move=790..835}] at @s run camerashake add @a[r=20] 0.1 0.08
execute as @s[scores={move=833..835}] at @s run camera @s set minecraft:free pos ^-0.6^1.45^0.4 facing ^^1.45^0.6
execute as @s[scores={move=833..835}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-0.6^1.45^0.4 facing ^^1.45^0.6

execute as @s[scores={move=829..830}] at @s run camera @s set minecraft:free ease 2 in_quad pos ^-1^1.25^1.25 facing ^^1.45^
execute as @s[scores={move=829..830}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 2 in_quad  pos ^-1^1.25^1.25 facing ^^1.45^

execute as @s[scores={move=835}] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=820}] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=816}] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=800}] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=795}] at @s run particle ds:impact_vfx1 ~~1~


execute as @s[scores={move=785..835}] at @s run playsound random.explode @a[r=50] ^^-3^  9999 3 9999 
execute as @s[scores={move=785..835}] at @s run playsound mob.witch.throw @a[r=50] ^^-3^0.25  9999 1.25 9999
execute as @s[scores={move=785..835}] at @s run playsound random.whoop @a[r=50] ^^-2^0.25 0.35 1.5

execute as @s[scores={move=785..835}] at @s run particle ds:impact_vfx2 ~~1~
execute as @s[scores={move=835}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 5 9999 
execute as @s[scores={move=831}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 4.87 9999 
execute as @s[scores={move=822}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 4.5 9999 
execute as @s[scores={move=818}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 5 9999 
execute as @s[scores={move=810}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 4 9999 
execute as @s[scores={move=800}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 4.75 9999 
execute as @s[scores={move=795}] at @s run playsound mob.fuga_shoot @a[r=50] ^^^ 9999 5.8 9999 



execute as @s[scores={move=785}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=785}] at @s run playsound mob.clang1 @a[r=50] ^^1^ 9999 2 9999
execute as @s[scores={move=785}] at @s run playsound mob.wither.break_block @a[r=50] ^^1^ 9999 2 9999
execute as @s[scores={move=785}] at @s run playsound mob.wither.shoot @a[r=50] ^^1^ 9999 0.5 9999
execute as @s[scores={move=785}] at @s run particle ds:swift_dash_large ~~0.5~
execute as @s[scores={move=785}] at @s run particle ds:impact_vfx1 ^0.4^1.5^1
execute as @s[scores={move=780..785}] at @s run camera @s set minecraft:free pos ^-1^1^0.5 facing ^^1.45^0.5
execute as @s[scores={move=780..785}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-1^1^0.5 facing ^^1.45^0.5

execute as @s[scores={move=765}] at @s run camera @s set minecraft:free ease 0.5 in_sine pos ^-0.5^1.15^0.5 facing ^^1.45^1.5
execute as @s[scores={move=765}] at @s run camera @p[tag=impenetrable2] set minecraft:free ease 0.5 in_sine pos ^-0.5^1.15^0.5 facing ^^1.45^1.5


execute as @s[scores={move=750}] at @s run playsound mob.impact1 @a[r=50] ^^1^1  99999 0.89 99999
execute as @s[scores={move=750}] at @s run execute as @a[r=12] at @s run playsound music.bass1 @s ~~~ 9999 0.8 9999
execute as @s[scores={move=750}] at @s run camera @s set minecraft:free pos ^-1^0.4^-1 facing ^^1.25^1
execute as @s[scores={move=750}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-1^0.4^-1 facing ^^1.25^1
execute as @s[scores={move=740}] at @s run camera @s set minecraft:free ease 1 in_out_circ pos ^-1.25^1^ facing ^^1.5^1
execute as @s[scores={move=740}] at @s run camera @p[tag=impenetrable2] set minecraft:free  ease 1 in_out_circ pos ^-1.25^1^ facing ^^1.5^1

execute as @s[scores={move=750}] at @s run particle ds:large_impact1 ^^1^1 

execute as @s[scores={move=750}] at @s run playsound mob.impact1 @a[r=50] ^^1^1 9999 0.8 9999
execute as @s[scores={move=750}] at @s run camerashake add @a[r=50] 2 0.25

execute as @s[scores={move=720}] at @s run camerashake add @a[r=50] 4 0.35
execute as @s[scores={move=720}] at @s run particle ds:burst_impact ^^1^1 
execute as @s[scores={move=721}] at @s run summon gg:impact_frame
execute as @s[scores={move=717}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=715}] at @s run particle ds:invert ^-0.5^1^
execute as @s[scores={move=720}] at @s run particle ds:swift_dash_large
execute as @s[scores={move=720}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"



execute as @s[scores={move=700..719}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=720}] at @s run playsound mob.impact2 @a[r=50] ^^1^1 9999 0.75 9999
execute as @s[scores={move=720}] at @s run camerashake add @a[r=50] 2 0.25


execute as @s[scores={move=719}] at @s run camera @s set minecraft:free pos ^-2.25^0.5^-1.75 facing ^^2^5
execute as @s[scores={move=719}] at @s run camera @p[tag=impenetrable2] set minecraft:free pos ^-2.25^0.5^-1.75 facing ^^2^5

execute as @s[scores={move=719}] at @s run  particle ds:curses_energy_hit1_big ^^1^1 
execute as @s[scores={move=719}] at @s run  particle ds:curses_energy_hit2_big ^^1^1 
execute as @s[scores={move=719}] at @s run  particle ds:curses_energy_hit3_big ^^1^1 

execute as @s[scores={move=719}] at @s run  particle ds:curses_energy_hit1_big ^^1^1 
execute as @s[scores={move=719}] at @s run damage @e[tag=impenetrable2,c=1] 50 override entity @s
execute as @s[scores={move=719}] at @s run scoreboard players set @e[tag=impenetrable2,c=1] Stun 30
execute as @s[scores={move=719}] at @s run scoreboard players set @e[tag=impenetrable2,c=1] knockdown 96
execute as @s[scores={move=719}] at @s run scoreboard players set @e[tag=impenetrable2,c=1] Hit 10
execute as @s[scores={move=719}] at @s run scoreboard players operation @e[tag=impenetrable2,c=1] damage += @s damageadd
execute as @s[scores={move=719}] at @s run effect @e[tag=impenetrable2,c=1] levitation 1 1 true
execute as @s[scores={move=718}] at @s if entity @p[tag=griefable] positioned ^^3^7 run effect @e[r=33] resistance 1 1 true
execute as @s[scores={move=718}] at @s if entity @p[tag=griefable] positioned ^^3^7 run summon ds:red_reversal ~~~
execute as @s[scores={move=718}] at @s if entity @p[tag=griefable] positioned ^^7^14 run summon ds:red_reversal ~~~
execute as @s[scores={move=718}] at @s if entity @p[tag=griefable] positioned ^^14^21 run summon ds:red_reversal ~~~
execute as @s[scores={move=719}] at @s run tp @e[tag=impenetrable2,c=1] ^^20^25 facing @s
execute as @s[scores={move=717}] at @s run tag @e[tag=impenetrable2,c=1] remove impenetrable2

execute as @s[scores={move=717..719}] at @s run camera @a[tag=impenetrable2] clear

execute as @s[scores={move=711..712}] at @s run effect @e[r=30] clear levitation

execute as @s[scores={move=718}] at @s run function damages/slash_damage
execute as @s[scores={move=718}] at @s run function damages/blunt_damage


scoreboard players set @s[scores={move=200..711}] move 3
tag @s[scores={move=0..3}] remove wep5m



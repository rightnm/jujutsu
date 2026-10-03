playanimation @s[scores={move=135..136}] animation.world_slash1

scoreboard players set @s[scores={move=1..}] Move 6

execute as @s[scores={move=134..},type=!ds:mahoragaboss,type=!ds:mahoragatamed] at @s if entity @e[tag=electrocannon,c=1] run scoreboard players set @s move 138
execute as @s[scores={move=134..},type=!ds:mahoragaboss,type=!ds:mahoragatamed] at @s if entity @e[tag=electrocannon,c=1] run tag @s add form7s
execute as @s[scores={move=134..},type=!ds:mahoragaboss,type=!ds:mahoragatamed] at @s if entity @e[tag=electrocannon,c=1] run function kashimo_wcs_cutscene
execute as @s[scores={move=134..},type=!ds:mahoragaboss,type=!ds:mahoragatamed] at @s if entity @e[tag=electrocannon,c=1] run tag @s remove form6s

execute as @s[scores={move=1..119}] at @s run effect @e[type=!player,r=5] slowness 1 11 true
execute as @s[scores={move=200..}] at @s run effect @e[type=!player,r=5] slowness 1 11 true
execute as @s[scores={move=120..,Stun=1..}] at @s run function cancel_attack

execute as @s[scores={move=134..136}] at @s run camerashake add @a[r=220]  4 0.15 rotational
execute as @s[scores={move=134..136}] at @s run playsound mob.wither.spawn @a[r=500] ~~~ 99999 0.75 99999
execute as @s[scores={move=134..136}] at @s run particle ds:world_slash_start1 ~~1~
execute as @s[scores={move=134..136}] at @s run particle ds:world_slash_start2 ~~1~
execute as @s[scores={move=134..136}] at @s run particle ds:dirt0
execute as @s[scores={move=134..136}] at @s run particle ds:flashstep1 
execute as @s[scores={move=134..136}] at @s run effect @a[r=220] night_vision  1 1 true

execute as @s[scores={move=1..133}] at @s run particle ds:world_slash_intensity ~~0.25~
execute as @s[scores={move=1..133}] at @s run particle ds:world_slash_intensity2 ~~0.25~
execute as @s[scores={move=1..133}] at @s run particle ds:world_slash_intensity3 ~~0.25~

execute as @s[scores={move=135..136}] at @s run tp @s @s
execute as @s[scores={move=134..135}] at @s run camera @s set minecraft:third_person
effect @s[scores={move=59}] speed 1 0 true
effect @s[scores={move=57}] speed 1 1 true
effect @s[scores={move=55}] speed 1 2 true
effect @s[scores={move=53}] speed 1 4 true
effect @s[scores={move=51}] speed 1 6 true
effect @s[scores={move=49}] speed 1 8 true
effect @s[scores={move=47}] speed 1 10 true
effect @s[scores={move=45}] speed 1 12 true
effect @s[scores={move=43}] speed 1 16 true
effect @s[scores={move=42}] speed 1 18 true
effect @s[scores={move=41}] speed 1 22 true
effect @s[scores={move=40}] speed 1 30 true
camera @s[scores={move=30..36}] clear
effect @s[scores={move=35}] slowness 2 3 true
effect @s[scores={move=35}] clear speed

execute as @e[scores={infinity=1..},r=33] at @s run function infinity_break

execute as @s[scores={move=133}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=133}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=128}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=128}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=122}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=122}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=118}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=118}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=114}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=114}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=110}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=110}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=104}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=104}] at @s run particle ds:world_slash_charge2
execute as @s[scores={move=100}] at @s run particle ds:world_slash_charge1
execute as @s[scores={move=100}] at @s run particle ds:world_slash_charge2

execute as @s[scores={move=124}] at @s run execute as @a[r=300] at @s run playsound music.world_slash2 @s ~~~ 0.5 1.5

execute as @s[scores={move=124}] at @s run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=124}] at @s run playsound mob.blasted2 @a[r=220] ~~~ 99999 2.25 99999
execute as @s[scores={move=124}] at @s run playsound mob.blasted3 @a[r=220] ~~~ 99999 2.25 99999
execute as @s[scores={move=124}] at @s run playsound mob.blasted4 @a[r=220] ~~~ 99999 1.75 99999
execute as @s[scores={move=124}] at @s run playsound mob.burst @a[r=220] ~~~ 99999 1.25 99999
execute as @s[scores={move=124}] at @s run playsound mob.chant @a[r=220] ~~~ 99999 1.25 99999
execute as @s[scores={move=124}] at @s run particle ds:rubble3
execute as @s[scores={move=124}] at @s run particle ds:leap

execute as @s[scores={move=80}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=80},family=!mahoraga] at @s anchored eyes run particle ds:wcs_chant1 ^2.25^-2^-0.5

execute as @s[scores={move=100}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=100},family=!mahoraga] at @s anchored eyes run particle ds:wcs_chant2 ^-1.5^-2^-1

execute as @s[scores={move=124}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=124},family=!mahoraga] at @s anchored eyes run particle ds:wcs_chant3 ^2.5^-2^1.5

execute as @s[scores={move=100}] at @s run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=100}] at @s run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=100}] at @s run playsound block.end_portal.spawn @a[r=220] ~~~ 99999 1.25 99999
execute as @s[scores={move=100}] at @s run playsound mob.fuga_clap @a[r=220] ~~~ 99999 2.75 99999
execute as @s[scores={move=100}] at @s run playsound mob.distort2 @a[r=220] ~~~ 9999 0.75 9999
execute as @s[scores={move=100}] at @s run playsound mob.red2 @a[r=220] ~~~ 99999 3 99999

execute as @s[scores={move=80}] at @s run function sukuna/attacks/worldslash/charge_vfx

execute as @s[scores={move=80}] at @s run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=80}] at @s run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=80}] at @s run playsound block.end_portal.spawn @a[r=220] ~~~ 99999 1.25 99999
execute as @s[scores={move=80}] at @s run playsound mob.fuga_clap @a[r=220] ~~~ 99999 2.75 99999
execute as @s[scores={move=80}] at @s run playsound mob.distort2 @a[r=220] ~~~ 9999 0.75 9999
execute as @s[scores={move=80}] at @s run playsound mob.red2 @a[r=220] ~~~ 99999 3 99999

execute as @s[scores={move=80}] at @s run playsound portal.trigger @a[r=220] ~~~ 99999 2 99999


execute as @s[scores={move=50}] at @s run execute as @a[r=100] at @s run playsound music.world_slash1  @s ~~~ 99999 1 999999

execute as @s[scores={move=60}] at @s run particle ds:invert ^^1^-3 
execute as @s[scores={move=55}] at @s run particle ds:invert ^^1^-2.5
execute as @s[scores={move=44}] at @s run particle ds:red_tint ^^2^-3
execute as @s[scores={move=44}] at @s run particle ds:invert ^1^2^-1
execute as @s[scores={move=64}] at @s run particle ds:invert ^^1.5^
execute as @s[scores={move=40}] at @s run particle ds:blue_tint ^^3^-3
execute as @s[scores={move=39}] at @s run particle ds:invert ^^3^-3
execute as @s[scores={move=64}] at @s run effect @a[r=50] night_vision 5 1 true
execute as @s[scores={move=60}] at @s run effect @a[r=50] clear night_vision
execute as @s[scores={move=58}] at @s run effect @a[r=50] darkness 5 1 true
execute as @s[scores={move=56}] at @s run effect @a[r=50] clear darkness
execute as @s[scores={move=46}] at @s run summon gg:impact_frame
execute as @s[scores={move=45}] at @s run function clear_impframe
execute as @s[scores={move=37..65}] at @s run camerashake add @a[r=50] 0.5 0.2 
execute as @s[scores={move=37..70}] at @s run particle ds:world_slash_ending ~~~
execute as @s[scores={move=37..45}] at @s run particle ds:world_slash_ending ~~~

execute as @s[scores={move=41}] at @s run summon gg:impact_frame
execute as @s[scores={move=39}] at @s run function clear_impframe

execute as @s[scores={move=25..35}] at @s run playsound break.amethyst_block @a[r=200] ~~~ 99999 0.22 99999
execute as @s[scores={move=32..35}] at @s run playsound random.glass @a[r=200] ~~~ 99999 0.32 99999
execute as @s[scores={move=37..40}] at @s run camerashake add @a[r=200] 1 0.1 rotational
execute as @s[scores={move=33..35}] at @s run particle ds:world_slash_shatter
execute as @s[scores={move=25..35}] at @s run particle ds:world_slash_shatter2

tag @s[type=!player,scores={move=5..}] add form6s
tag @s[type=!player,scores={move=1..4}] remove form6s

execute as @s[scores={move=55}] at @s run playsound music.domainbreak @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={move=35}] at @s run playsound mob.slash1 @a[r=200] ~~~ 99999 0.7 99999
execute as @s[scores={move=35}] at @s run playsound mob.slash @a[r=200] ~~~ 99999 0.7 99999
execute as @s[scores={move=35}] at @s run playsound mob.distort1 @a[r=200] ~~~ 99999 0.43 99999
execute as @s[scores={move=35}] at @s run playsound mob.distort2 @a[r=200] ~~~ 99999 0.7 99999
execute as @s[scores={move=30}] at @s run playsound mob.distort3 @a[r=200] ~~~ 99999 0.2 99999
execute as @s[scores={move=33}] at @s run playsound mob.blitz2 @a[r=1000] ~~~ 99999 0.8 99999
execute as @s[scores={move=35}] at @s run playsound mob.shock1 @a[r=1000] ~~~ 99999 0.75 99999
execute as @s[scores={move=37}] at @s run playsound mob.burst @a[r=1000] ^^^25 99999 0.75 99999
execute as @s[scores={move=33}] at @s run scriptevent ds:wcs

execute as @s[scores={move=33},family=mahoraga] at @s positioned ^^^7.5 run function wcs_damage3
execute as @s[scores={move=33},family=mahoraga] at @s positioned ^^^15 run function wcs_damage3
execute as @s[scores={move=33},family=mahoraga] at @s positioned ^^^22.5 run function wcs_damage3
execute as @s[scores={move=33},family=mahoraga] at @s positioned ^^^30 run function wcs_damage3
execute as @s[scores={move=33},family=mahoraga] at @s positioned ^^^37.5 run function wcs_damage3



execute as @s[scores={move=30..38}] at @s run tp @s ~~~

execute as @s[scores={move=33..38}] at @s positioned ^^^15 unless entity @e[name=maxcleaveshockwavetrg,r=15] run summon ds:projectile ^^^ facing ^^^20 none maxcleaveshockwavetrg

execute as @s[scores={move=33..36}] at @s positioned ^-4^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~ facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave
execute as @s[scores={move=33..36}] at @s positioned ^4^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~  facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave

execute as @s[scores={move=30..34}] at @s run playanimation @e[name=maxcleaveshockwave] animation.max_cleave_shockwave

execute as @s[scores={move=30..35}] at @s run scoreboard players set @e[type=ds:projectile,r=16] Deleter 15

execute as @s[scores={move=1..},family=mahoraga] at @s run tag @e[type=ds:wcs,r=40] add mahoragaworldslash

execute as @s[scores={move=30},family=mahoraga] at @s run execute as @a[tag=sukuna,r=50,scores={finger=18..},hasitem={item=ds:sukuna5,quantity=0}] at @s run function cheats/learn_world_slash
tag @s[scores={move=1..3}] remove form6s

execute as @s[scores={move=50}] at @s run function sukuna/attacks/worldslash/charge_vfx
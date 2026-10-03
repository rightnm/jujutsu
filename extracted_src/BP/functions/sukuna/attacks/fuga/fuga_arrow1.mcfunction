execute as @s[scores={Deleter=1..60},tag=!fuga_explode] at @s run tp @s ^^^2.5 facing ^^^20
execute as @s[scores={Deleter=12..60},tag=!fuga_explode] at @s unless entity @e[tag=sukuna,scores={finger=15..},r=70] run scoreboard players set @s Deleter 11

execute as @s[scores={Deleter=12..},tag=!fuga_explode] at @s if entity @e[tag=!Frames,family=!projectile,family=!despawncito,family=!damage,type=!item,type=!xp_orb,r=15] run scoreboard players set @s Deleter 11

execute as @s if entity @p[tag=griefable] run function flames/heat3x3

execute as @s if entity @e[type=ds:mahoragaboss,r=15] run function damages/divine_flames
execute as @s if entity @e[type=ds:mahoragatamed,r=15] run function damages/divine_flames


playanimation @s[scores={Deleter=7..60},tag=!fuga_explode] animation.flame_arrow

tag @s[scores={Deleter=7..10}] add fuga_explode
scoreboard players set @s[scores={Deleter=7..10}] Deleter 1001

execute as @s[scores={Deleter=7..60},tag=!fuga_explode] at @s unless block ~~~ air run tag @s add fuga_explode
execute as @s[scores={Deleter=7..60}] at @s unless block ~~~ air run scoreboard players set @s Deleter 1001

execute as @s[scores={Deleter=999..1000}] at @s run tp @s ~~-1.5~
execute as @s[scores={Deleter=999..1000}] at @s run execute as @a[r=200] at @s run playsound music.fuga_music @s ~~~ 999999 1 9999999

execute as @s[scores={Deleter=1000}] at @s run camerashake add @a[r=50] 4 0.1 rotational
execute as @s[scores={Deleter=1000}] at @s run particle ds:invert 
execute as @s[scores={Deleter=1000}] at @s run summon gg:impact_frame


execute as @s[scores={Deleter=1000..}] at @s run tickingarea add ~50~~50~-50~~-50 fuga
execute as @s[scores={Deleter=1..10}] at @s run tickingarea remove fuga

execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land1 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land2 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land3 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land4 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land5 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land0 ~~~
execute as @s[scores={Deleter=1000..}] at @s run particle ds:meteor_land7 ~~~
execute as @s[scores={Deleter=1000..}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=1000..}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=1000..}] at @s run playsound mob.red2 @a[r=300] ~~~ 99999 0.5 99999

execute as @s[scores={Deleter=965..975}] at @s run particle ds:fuga_explosion_start_end1
execute as @s[scores={Deleter=965..975}] at @s run particle ds:fuga_explosion_start_end2
execute as @s[scores={Deleter=965..975}] at @s run particle ds:fuga_explosion_start_end3
execute as @s[scores={Deleter=965..975}] at @s run particle ds:fuga_explosion_start_end4
execute as @s[scores={Deleter=965..975}] at @s run particle ds:fuga_explosion_start_end5

execute as @s[scores={Deleter=945}] at @s run damage @e[tag=!Frames,r=50,tag=!sukuna] 100 override
execute as @s[scores={Deleter=875}] at @s run damage @e[tag=!Frames,r=70,tag=!sukuna] 100 override

execute as @s[scores={Deleter=800..975}] at @s run damage @e[tag=!Frames,r=50,tag=!sukuna] 2 fire
execute as @s[scores={Deleter=800..975}] at @s run damage @e[tag=!Frames,r=50,tag=!sukuna] 1 override
execute as @s[scores={Deleter=800..975}] at @s run scoreboard players set @e[tag=!Frames,r=50,tag=!sukuna] Stun 60
execute as @s[scores={Deleter=800..971}] at @s run scoreboard players set @e[tag=!Frames,r=50,tag=!sukuna] onfire 100

execute as @s[scores={Deleter=975..}] at @s run particle ds:fuga_explosion_start1
execute as @s[scores={Deleter=975..}] at @s run particle ds:fuga_explosion_start2
execute as @s[scores={Deleter=975..}] at @s run particle ds:fuga_explosion_start3
execute as @s[scores={Deleter=975..}] at @s run particle ds:fuga_explosion_start4
execute as @s[scores={Deleter=975..}] at @s run particle ds:fuga_explosion_start5
execute as @s[scores={Deleter=975..}] at @s run camerashake add @a[r=50] 0.5 0.1 rotational
execute as @s[scores={Deleter=975..}] at @s run camerashake add @a[r=150,rm=50] 0.15 0.08 rotational
execute as @s[scores={Deleter=975..}] at @s run camerashake add @a[r=350,rm=150] 0.08 0.06 rotational
execute as @s[scores={Deleter=975}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.85 99999
execute as @s[scores={Deleter=945}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.45 99999

execute as @s[scores={Deleter=945}] at @s run effect @a[r=300] night_vision 3 1 true
execute as @s[scores={Deleter=945}] at @s run particle ds:malevolent_shockwave1 ~~15~
execute as @s[scores={Deleter=945}] at @s run particle ds:malevolent_shockwave2 ~~15~
execute as @s[scores={Deleter=945}] at @s run camera @a[r=300] fade time 0 0 0.5 color 255 255 255
execute as @s[scores={Deleter=945}] at @s run summon gg:impact_frame
execute as @s[scores={Deleter=945}] at @s run particle ds:invert ~~~
execute as @s[scores={Deleter=940..942}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={Deleter=940..942}] at @s run fill ~5~5~5~-5~-5~-5 air [] replace light_block
execute as @s[scores={Deleter=945}] at @s run camerashake add @a[r=300] 4 0.5 rotational
execute as @s[scores={Deleter=770..934}] at @s run camerashake add @a[r=300] 0.3 0.1
execute as @s[scores={Deleter=770..945}] at @s run particle ds:fuga_explosion1
execute as @s[scores={Deleter=940..945}] at @s run particle ds:fuga_explosion1
execute as @s[scores={Deleter=800..945}] at @s run function damages/fuga_damage


execute as @s[scores={Deleter=870}] at @s if entity @e[tag=griefable] positioned ~~20~ run function 23x23sphere

execute as @s[scores={Deleter=875}] at @s run effect @a[r=300] night_vision 3 1 true
execute as @s[scores={Deleter=875}] at @s run camera @a[r=300] fade time 0 0.2 0.75 color 255 155 55
execute as @s[scores={Deleter=875}] at @s run particle ds:fuga_shockwaves_1 ~~~
execute as @s[scores={Deleter=875}] at @s run particle ds:fuga_shockwaves_2 ~~~
execute as @s[scores={Deleter=875}] at @s run particle ds:fuga_shockwaves_3 ~~~
execute as @s[scores={Deleter=850..875}] at @s run particle ds:fuga_explosion1
execute as @s[scores={Deleter=875}] at @s run particle ds:malevolent_shockwave1 ~~25~
execute as @s[scores={Deleter=875}] at @s run particle ds:malevolent_shockwave2 ~~25~
execute as @s[scores={Deleter=875}] at @s run camerashake add @a[r=300] 4 0.5 rotational

execute as @s[scores={Deleter=790}] at @s run camera @a[r=100] fade time 0 0.5 1 color 255 150 55
execute as @s[scores={Deleter=789..790}] at @s run particle ds:fuga_shockwave_end
execute as @s[scores={Deleter=789..790}] at @s run particle ds:fuga_gas1
execute as @s[scores={Deleter=789..790}] at @s run particle ds:fuga_gas2
execute as @s[scores={Deleter=989..790}] at @s run particle ds:meteor_land3 ~~~

execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable] run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~~~8 run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~~15~ run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~~30~ run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~~45~ run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~~~-8 run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~8~~ run function flames/heat15x15
execute as @s[scores={Deleter=1000}] at @s if entity @p[tag=griefable]  positioned ~-8~~8 run function flames/heat15x15
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~~8
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~~-8
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~8~~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~-8~~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~8~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~16~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~24~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~32~
execute as @s[scores={Deleter=800}] at @s if entity @p[tag=griefable]  run summon ds:energy_explosion ~~40~

scoreboard players set @s[scores={Deleter=700..775}] Deleter 6


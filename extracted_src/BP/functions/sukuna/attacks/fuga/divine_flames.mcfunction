playanimation @s[scores={move=55}] animation.fuga_activate
playanimation @s[scores={move=1..10}] animation.fuga_activate_hold

tag @s[scores={move=1..3}] remove fuga_use

execute as @s[scores={move=50..55},tag=domainactive] at @s if entity @e[type=ds:malevolent_kitchen,r=200] run playsound mob.blaze.breathe @a[r=100] ~~~ 99999 1.2 99999
execute as @s[scores={move=50..55},tag=domainactive] at @s if entity @e[type=ds:malevolent_kitchen,r=200] run scoreboard players set @s move 3001


execute as @s[scores={move=50..55},tag=domainactive] at @s if entity @e[type=ds:incomplete_shrine,r=200] run playsound mob.blaze.breathe @a[r=100] ~~~ 99999 1.2 99999
execute as @s[scores={move=50..55},tag=domainactive] at @s if entity @e[type=ds:incomplete_shrine,r=200] run scoreboard players set @s move 3001

scoreboard players set @s[scores={move=1..40}] Frames 6
scoreboard players set @s[scores={move=1..}] infinity 6
scoreboard players set @s[scores={move=1..}] Move 6

playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
execute as @s[scores={move=26..,Stun=1..}] at @s run particle ds:fire_hit1 ~~1~
execute as @s[scores={move=26..,Stun=1..}] at @s run particle ds:fire_hit2 ~~1~
execute as @s[scores={move=26..,Stun=1..}] at @s run particle ds:fire_hit3 ~~1~
execute as @s[scores={move=26..,Stun=1..}] at @s run playsound mob.blaze.shoot @a[r=100] ~~1~ 9999 1.5 9999
scoreboard players set @s[scores={move=26..,Stun=1..}] move 3

execute as @s[scores={move=51..56}] at @s run scoreboard objectives add scroll dummy
scoreboard players set @s[scores={move=51..56}] scroll 1


execute as @s[scores={move=40..50}] at @s run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cOpen.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

camera @s[scores={move=50..56}] fade time 0 0.1 0.25 color 0 0 0
execute as @s[scores={move=50}] at @s run playsound mob.fuga @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=50}] at @s run camerashake add @a[r=20] 2 0.2
execute as @s[scores={move=50}] at @s run playsound mob.fuga_appear @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=50}] at @s run playsound mob.block.campfire.crackle @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=20}] at @s run playsound mob.block.campfire.crackle @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=50}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.8 9999

scoreboard players set @s[scores={move=4..10}] move 8
execute as @s[scores={move=8}] at @s run playsound mob.block.campfire.crackle @a ~~~ 0.25 1.15
execute as @s[scores={move=8}] at @s run playsound mob.burn @a ~~~ 0.025 1.3

scoreboard players set @s[scores={fuga=1..}] fuga 0

scoreboard players add @s[scores={scroll=0}] scroll 1

execute as @s[tag=itemUse:ds:sukuna4,scores={move=1..10}] at @s run playsound random.click @s ~~~ 1 1.25 
execute as @s[tag=itemUse:ds:sukuna4,scores={move=1..10}] at @s run scoreboard players add @s scroll 1
execute as @s[tag=itemUse:ds:sukuna4,scores={move=1..10}] at @s run tag @s remove itemUse:ds:sukuna4
scoreboard players set @s[scores={scroll=5..}] scroll 1


event entity @s[scores={move=54}] sukuna_markings_fire0
event entity @s[scores={move=52}] sukuna_markings_fire1
event entity @s[scores={move=50}] sukuna_markings_fire
event entity @s[scores={move=40}] sukuna_markings_fire1
event entity @s[scores={move=38}] sukuna_markings_fire0
event entity @s[scores={move=36}] sukuna_markings

titleraw @s[scores={scroll=1,move=1..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§6-[ §cFlame Arrow §6]-\n§r§o§e-Click to Scroll, Punch to Select\n\n\n   \n\n\n§c(It is recommended to use this attack at night, It'll look better)"}]}
titleraw @s[scores={scroll=2,move=1..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§6-[ §cFlame Spear §6]-\n§r§o§e-Click to Scroll, Punch to Select\n\n\n   \n\n\n§c(It is recommended to use this attack at night, It'll look better)"}]}
titleraw @s[scores={scroll=3,move=1..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§6-[ §cFlame Blade §6]-\n§r§o§e-Click to Scroll, Punch to Select\n\n\n   \n\n\n§c(It is recommended to use this attack at night, It'll look better)"}]}
titleraw @s[scores={scroll=4,move=1..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§6-[ §cFlame Scythe §6]-\n§r§o§e-Click to Scroll, Punch to Select\n\n\n   \n\n\n§c(It is recommended to use this attack at night, It'll look better)"}]}

title @s[scores={move=1000..1001}] title §l

playsound random.click @s[scores={scroll=1..,punch=1..2,move=1..10}] ~~~ 9999 2 9999
title @s[scores={scroll=1..,punch=1..2,move=1..10}] title §l
scoreboard players set @s[scores={punch=1..2,scroll=1,move=1..10}] move 1001
scoreboard players set @s[scores={punch=1..2,scroll=2,move=1..10}] move 4001
scoreboard players set @s[scores={punch=1..2,scroll=3,move=1..10}] move 5001
scoreboard players set @s[scores={punch=1..2,scroll=4,move=1..10}] move 7001

playanimation @s[scores={move=1000..1001}] animation.fuga_arrow1

execute as @s[scores={move=5..}] at @s if block ~~~ air run setblock ~~~ light_block ["block_light_level"=14]
execute as @s[scores={move=1..4}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace light_block

execute as @s[scores={move=830..980}] at @s run particle ds:fuga_aura_1

execute as @s[scores={move=830..890}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=830..890}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=830..890}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=830..890}] at @s run particle ds:fuga_aura_3b
execute as @s[scores={move=830..890}] at @s run particle ds:fuga_aura_3c 

execute as @s[scores={move=985}] at @s run playsound mob.fuga_clap @a[r=150] ~~1~ 99999 1 99999

execute as @s[scores={move=975}] at @s run playsound mob.fuga_form @a[r=150] ~~1~ 99999 1 99999
execute as @s[scores={move=980}] at @s run playsound mob.fuga_hands @a[r=150] ~~1~ 99999 1 99999

execute as @s[scores={move=895}] at @s run playsound mob.fuga_appear @a[r=150] ~~1~ 99999 0.8 99999

execute as @s[scores={move=980}] at @s run camerashake add @a[r=20] 2 0.15 rotational
execute as @s[scores={move=980}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=978}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=900}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=900}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999

execute as @s[scores={move=828..831}] at @s run tp @s @s
execute as @s[scores={move=831..835}] at @s run particle ds:flame_stars ^^1^1.5
execute as @s[scores={move=830}] at @s run playsound mob.fuga_shoot @a[r=150] ~~1~ 99999 1 99999
execute as @s[scores={move=830}] at @s run camerashake add @a[r=20] 4 0.15 rotational
execute as @s[scores={move=830}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=828}] at @s run particle ds:invert ^^2^-1 
execute as @s[scores={move=828}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=829}] at @s run summon ds:projectile ^^1^1 facing ^^^20 none fuga_arrow1 
execute as @s[scores={move=826..829}] at @s run scoreboard players set @e[name=fuga_arrow1,c=1] Deleter 60

scoreboard players set @s[scores={move=800..815}] move 3


playanimation @s[scores={move=3000..3001}] animation.fuga_arrow_shrine
execute as @s[scores={move=3000..3001}] at @s run tp @s @s

event entity @s[scores={move=2980}] sukuna_markings_fire0
event entity @s[scores={move=2978}] sukuna_markings_fire1
event entity @s[scores={move=2976}] sukuna_markings_fire
event entity @s[scores={move=2965}] sukuna_markings_fire1
event entity @s[scores={move=2962}] sukuna_markings_fire0
event entity @s[scores={move=2960}] sukuna_markings

execute as @s[tag=domainactive] at @s if entity @e[type=ds:malevolent_kitchen] run scoreboard players set @s Camera 7
execute as @s[tag=domainactive] at @s if entity @e[type=ds:malevolent_kitchen] run scoreboard players set @s Move 7
execute as @s[tag=domainactive] at @s if entity @e[type=ds:incomplete_shrine] run scoreboard players set @s Camera 7
execute as @s[tag=domainactive] at @s if entity @e[type=ds:incomplete_shrine] run scoreboard players set @s Move 7

execute as @s[scores={move=3000..3001}] at @s run camera @s fade time 0 0.25 1 color 0 0 0
execute as @s[scores={move=3000..3001}] at @s run camera @s set minecraft:free pos ^^1.3^1.5 facing ~~1.3~

execute as @s[scores={move=2900..2901}] at @s run camera @s set minecraft:free pos ^12^0.5^12 facing ~~2.25~

execute as @s[scores={move=2820..2901}] at @s run particle ds:fuga_aura_1 ~~1~
execute as @s[scores={move=2820..2901}] at @s run particle ds:fuga_aura_2b ~~1~
execute as @s[scores={move=2820..2901}] at @s run particle ds:fuga_aura_2c ~~~

execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx1
execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx2
execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx3
execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx4
execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx5
execute as @s[scores={move=2740..2955}] at @s run particle ds:fuga_shrine_vfx6
execute as @s[scores={move=2740..2955}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] run particle ds:malevolent_fuga_floor
execute as @s[scores={move=2740..2955}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] run particle ds:malevolent_fuga_floor
execute as @s[scores={move=2000..2980}] at @s run scoreboard players set @e[r=100,tag=!Frames] onfire 5

execute as @s[scores={move=2770..2820}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=2770..2820}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=2770..2820}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=2770..2820}] at @s run particle ds:fuga_aura_3b
execute as @s[scores={move=2770..2820}] at @s run particle ds:fuga_aura_3c 
camera @s[scores={move=2821..2822}] fade time 0.5 0.5 0.5 color 0 0 0

execute as @s[scores={move=2829..2830}] at @s run camera @s set minecraft:free pos ^-2^1.5^12 facing ^^^20
execute as @s[scores={move=2827..2828}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^-1.5^1.5^-1.5 facing ^^^20


execute as @s[scores={move=2910..2911}] at @s run execute as @a[r=250] at @s run playsound music.fuga_shrine @s ~~~ 99999 1 99999
execute as @s[scores={move=2000..2911}] at @s run stopsound @a[r=250] music.malevolent_kitchen
execute as @s[scores={move=2000..2911}] at @s run stopsound @a[r=250] music.malevolent_kitchen2

execute as @s[scores={move=2760}] at @s run camera @s set minecraft:free pos ^40^50^-1.5 facing ^^^20

execute as @s[scores={move=2699..2700}] at @s run camera @s set minecraft:free pos ^70^50^ facing ^^25^25
execute as @s[scores={move=2697..2698}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^120^75^ facing ^^5^25

execute as @s[scores={move=2760}] at @s run camerashake add @a[r=1000] 4 2
execute as @s[scores={move=2720}] at @s run camerashake add @a[r=1000] 2 1
execute as @s[scores={move=2680}] at @s run camerashake add @a[r=1000] 1 0.5


execute as @s[scores={move=2000..2680}] at @s run camerashake add @a[r=1000] 0.25 0.15

execute as @s[scores={move=2750..}] at @s positioned ^^^25 run effect @e[tag=!Frames,scores={detect_health=1..}] slowness 1 2 true

execute as @s[scores={move=2750}] at @s positioned ^^^25 run  camera @a[r=400] fade time 0 0 0.5 color 255 255 255
execute as @s[scores={move=2750}] at @s positioned ^^^25 run particle ds:fuga_shrine_explode1
execute as @s[scores={move=2750}] at @s positioned ^^^25 run particle ds:fuga_shrine_explode2
execute as @s[scores={move=2750}] at @s positioned ^^^25 run particle ds:fuga_shrine_explode3
execute as @s[scores={move=2700..2750}] at @s positioned ^^^25 run particle ds:fuga_explosion1
execute as @s[scores={move=2630..2700}] at @s positioned ^^^25 run particle ds:fuga_explosion1b


execute as @s[scores={move=2729..2733}] at @s positioned ^^^25 run damage @e[tag=!domainactive,r=300] 200 override

execute as @s[scores={move=2600}] at @s run camera @s set minecraft:free pos ^66^33^25 facing ^^33^25
execute as @s[scores={move=2600}] at @s run camera @s set minecraft:free ease 10 in_sine pos ^33^33^25 facing ^^33^25
execute as @s[scores={move=2660}] at @s positioned ^^33^25 run particle ds:fuga_shrine_end1
execute as @s[scores={move=2660}] at @s positioned ^^33^25 run particle ds:fuga_shrine_end2
execute as @s[scores={move=2450}] at @s positioned ^^33^25 run particle ds:fuga_shrine_end3
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20  run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20  run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20  run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20  run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2600}] at @s if entity @e[tag=griefable] positioned ^^^20 run summon ds:energy_explosion ~~~
execute as @s[scores={move=2590..2600}] at @s if entity @e[tag=griefable]  positioned ^^^20 run spreadplayers ~ ~ 5 60 @e[type=ds:energy_explosion]

execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~~~ run function flames/heat15x15
execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~~~30 run function flames/heat15x15
execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~~~-30 run function flames/heat15x15
execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~30~~ run function flames/heat15x15
execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~-30~~ run function flames/heat15x15


execute as @s[scores={move=2500}] at @s if entity @e[tag=griefable]  positioned ^^^20 positioned ~~20~ run function 23x23sphere

execute as @s[scores={move=2430..2440}] at @s run scoreboard players set @e[type=ds:malevolent_kitchen,c=1] Deleter 31
execute as @s[scores={move=2430..2440}] at @s run scoreboard players set @e[type=ds:incomplete_shrine,c=1] Deleter 31
execute as @s[scores={move=2420}] at @s run camera @s fade time 1 1 1 color 0 0 0
camera @s[scores={move=2380..2400}] clear
scoreboard players set @s[scores={move=2380..2390}] move 3






playanimation @s[scores={move=4000..4001}] animation.fuga_spear1

execute as @s[scores={move=4000}] at @s run playsound mob.burn @a[r=30] ~~~ 0.2 1

event entity @s[scores={move=3980}] fuga_spear
execute as @s[scores={move=3980}] at @s run playsound mob.fuga_clap @a[r=150] ~~1~ 99999 1 99999
execute as @s[scores={move=3980}] at @s run camerashake add @a[r=20] 2 0.15 rotational
execute as @s[scores={move=3980}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=3977}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=3980}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 1.35 9999
execute as @s[scores={move=3980}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999

execute as @s[scores={move=3970}] at @s run playsound mob.fuga_appear @a[r=150] ~~1~ 99999 0.5 99999
execute as @s[scores={move=3950}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=3920}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=3900}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999

execute as @s[scores={move=3915}] at @s run playsound mob.fuga_clap @a[r=150] ~~1~ 99999 1.8 99999
execute as @s[scores={move=3915}] at @s run camerashake add @a[r=20] 3 0.15

execute as @s[scores={move=3870..3980}] at @s run particle ds:fuga_aura_1

execute as @s[scores={move=3870..3910}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=3870..3910}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=3870..3910}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=3870..3910}] at @s run particle ds:fuga_aura_3b
execute as @s[scores={move=3870..3910}] at @s run particle ds:fuga_aura_3c 


execute as @s[scores={move=3875}] at @s run tp @s @s
execute as @s[scores={move=3875..3878}] at @s run particle ds:flame_stars ^^1^1.5
execute as @s[scores={move=3875}] at @s run playsound mob.fuga_shoot @a[r=150] ~~1~ 99999 1 99999
execute as @s[scores={move=3875}] at @s run camerashake add @a[r=20] 4 0.15 rotational
execute as @s[scores={move=3875}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=3873}] at @s run particle ds:invert ^^2^-1 
execute as @s[scores={move=3872}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
event entity @s[scores={move=3871..3874}] fuga_speartextureoff
scoreboard players set @s[scores={move=3840..3855}] move 3

execute as @s[scores={move=3871}] at @s run particle ds:fuga_spear_shine1 ^^65^20
execute as @s[scores={move=3871}] at @s run particle ds:fuga_spear_shine2 ^^65^20

execute as @s[scores={move=3861}] at @s run summon ds:projectile ^^^1 facing ^^^10 none fuga_spear 
execute as @s[scores={move=3855..3860}] at @s run scoreboard players set @e[name=fuga_spear,c=1] Deleter 201




playanimation @s[scores={move=5000..5001}] animation.fuga_mugetsu

execute as @s[scores={move=5000}] at @s run playsound mob.burn @a[r=40] ~~~ 0.2 1

execute as @s[scores={move=4999}] at @s run playsound mob.fuga_appear @a[r=150] ~~1~ 99999 0.5 99999
execute as @s[scores={move=4950}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=4920}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=4900}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=4930..}] at @s run camerashake add @a[r=20] 0.1 0.08

execute as @s[scores={move=4969..4972}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=4972}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=4971}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=4870..4970}] at @s run particle ds:fuga_aura_1

execute as @s[scores={move=4910..4970}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=4910..4970}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=4910..4970}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=4910..4970}] at @s run particle ds:fuga_aura_4b
execute as @s[scores={move=4910..4970}] at @s run particle ds:fuga_aura_4c 



execute as @s[scores={move=4920..4921}] at @s run tp @s @s
execute as @s[scores={move=4920..4925}] at @s run particle ds:flame_stars ^^1^1.5
execute as @s[scores={move=4920}] at @s run playsound mob.fuga_shoot @a[r=150] ~~1~ 99999 0.5 99999
execute as @s[scores={move=4920}] at @s run camerashake add @a[r=20] 4 0.5
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam1 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam2 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam3 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam4 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam5 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam6 ^^1^1
execute as @s[scores={move=4920}] at @s run particle ds:fire_downslam7 ^^1^1
execute as @s[scores={move=4900..4940}] at @s run particle ds:fuga_area


execute as @s[scores={move=4927}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=4926}] at @s run particle ds:invert ^^2^-1 
execute as @s[scores={move=4926}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=4926}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=4925}] at @s run particle ds:invert ^^2^-1 
execute as @s[scores={move=4925}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=4920}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=4918}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=4918}] at @s run camera @s set minecraft:free pos ^25^50^-2 facing ^^25^40
camera @s[scores={move=4885}] fade time 0.5 0.5 0.5 color 0 0 0
execute as @s[scores={move=4860..4875}] at @s run camera @s clear

execute as @s[scores={move=4920}] at @s run summon ds:projectile ^^^8 facing ^^^10 none fuga_mugetsu
execute as @s[scores={move=4915..4920}] at @s run scoreboard players set @e[name=fuga_mugetsu,c=1] Deleter 61

scoreboard players set @s[scores={move=4860..4870}] move 4



playanimation @s[scores={move=7000..7001}] animation.fuga_scythe


execute as @s[scores={move=7000}] at @s run playsound mob.burn @a[r=40] ~~~ 0.2 1

execute as @s[scores={move=6999}] at @s run playsound mob.fuga_appear @a[r=150] ~~1~ 99999 1.5 99999
execute as @s[scores={move=6950}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=6920}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=6900}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=6965..6980}] at @s run camerashake add @a[r=20] 0.1 0.08

execute as @s[scores={move=6985..6986}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=6985}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=6983..6984}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=6962}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=6961}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=6870..7000}] at @s run particle ds:fuga_aura_1

execute as @s[scores={move=6960..6980}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=6960..6980}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=6960..6980}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=6960..6980}] at @s run particle ds:fuga_aura_4b
execute as @s[scores={move=6960..6980}] at @s run particle ds:fuga_aura_4c 



execute as @s[scores={move=6920..6921}] at @s run tp @s @s
execute as @s[scores={move=6920..6925}] at @s run particle ds:flame_stars ^^1^1.5
execute as @s[scores={move=6960}] at @s run playsound mob.fuga_shoot @a[r=150] ~~1~ 99999 1.25 99999
execute as @s[scores={move=6960}] at @s run playsound mob.blaze.shoot @a[r=150] ~~1~ 99999 1.25 99999
execute as @s[scores={move=6960}] at @s run playsound mob.wither.shoot @a[r=150] ~~1~ 99999 1.25 99999
execute as @s[scores={move=6963}] at @s run playsound mob.slash @a[r=150] ~~1~ 99999 0.8 99999
execute as @s[scores={move=6960}] at @s run camerashake add @a[r=20] 3 0.15
execute as @s[scores={move=6960}] at @s run particle ds:fire_hit1 ^^1^1
execute as @s[scores={move=6960}] at @s run particle ds:fire_hit2 ^^1^1
execute as @s[scores={move=6960}] at @s run particle ds:fire_hit3 ^^1^1
execute as @s[scores={move=6960..6982}] at @s run particle ds:fuga_area

execute as @s[scores={move=6960}] at @s run summon ds:projectile ^^1.5^2 facing ^^1.5^10 none fuga_scythe
execute as @s[scores={move=6958..6960}] at @s run scoreboard players set @e[name="fuga_scythe",c=1] Deleter 21
event entity @s[scores={move=6988..6990}] fuga_scythe
event entity @s[scores={move=6950..6960}] fuga_scythetextureoff

execute as @s[scores={move=6000..}] at @s run execute as @e[name="fuga_scythe",c=1] at @s run function sukuna/attacks/fuga/scythe



execute as @s[scores={move=6802..6937}] at @s unless entity @e[tag=fugascythe] run scoreboard players set @s move 2
execute as @s[scores={move=6800..6801}] at @s run playanimation  @s animation.fuga_scythe2
execute as @s[scores={move=6800..6801}] at @s run playanimation  @e[tag=fugascythe,c=1] animation.fuga_scythe_hit

execute as @s[scores={move=6799..6801}] at @s run tp @s @s
execute as @s[scores={move=6799..6801}] at @s run tp @s ~~~ facing @e[tag=fugascythe,c=1]
execute as @s[scores={move=6797..6801}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=6799..6801}] at @s run tp @e[tag=fugascythe,c=1] ^^0.22^15
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run tp @s ~~~ facing @e[tag=fuga_use,c=1]
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land1
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land2
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land3
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land4
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land5
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land7
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:meteor_land8
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run camerashake add @a[r=100] 4 0.1 rotational
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run playsound mob.red2 @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=6760..6797}] at @s run execute as @e[tag=fugascythe,c=1] at @s run camerashake add @a[r=100] 0.25 0.1
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_scythe_ex1
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_scythe_ex2
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_scythe_ex3
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_scythe_ex4
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_scythe_ex5
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fuga_area

execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fire_crater_large1b ~~0.1~
execute as @s[scores={move=6760..6801}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:fire_crater_large2b ~~0.1~

title @s[scores={move=6963},tag=!impactframesoff] title 
title @s[scores={move=6962},tag=!impactframesoff] title 
title @s[scores={move=6961},tag=!impactframesoff] title 
title @s[scores={move=6960},tag=!impactframesoff] title 
title @s[scores={move=6959},tag=!impactframesoff] title 
title @s[scores={move=6950..6958}] title .

execute as @s[scores={move=6718}] at @s run title @a[r=25,tag=!impactframesoff] title 
execute as @s[scores={move=6717}] at @s run title @a[r=25,tag=!impactframesoff] title 
execute as @s[scores={move=6716}] at @s run title @a[r=25,tag=!impactframesoff] title 
execute as @s[scores={move=6714}] at @s run title @a[r=25,tag=!impactframesoff] title 
execute as @s[scores={move=6713}] at @s run title @a[r=25,tag=!impactframesoff] title 
execute as @s[scores={move=6706..6712}] at @s run title @a[r=25,tag=!impactframesoff] title .

execute as @s[scores={move=6800..6801}] at @s run title @a[r=25,tag=!impactframesoff] title .

execute as @s[scores={move=6760}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:flame_repulse_ex1 ~~1~
execute as @s[scores={move=6760}] at @s run execute as @e[tag=fugascythe,c=1] at @s run particle ds:flame_repulse_ex2 ~~1~
execute as @s[scores={move=6801}] at @s run camera @a[r=25] set minecraft:free pos ^^3^7 facing ^^^20 
execute as @s[scores={move=6797..6799}] at @s run camera @a[r=25] set minecraft:free ease 1.75 in_out_circ pos ^^4^5 facing ^^7^15 

execute as @s[scores={move=6760}] at @s run playsound mob.burn @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=6747..6760}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=6747..6760}] at @s run playsound mob.witch.throw @a[r=100] ~~~ 9999 1.25 9999

execute as @s[scores={move=6758}] at @s run particle ds:invert ^^1^1.3

execute as @s[scores={move=6870..7000}] at @s run particle ds:fuga_aura_1

execute as @s[scores={move=6560..6960}] at @s run particle ds:fuga_aura_5
execute as @s[scores={move=6560..6960}] at @s run particle ds:fuga_aura_8
execute as @s[scores={move=6560..6960}] at @s run particle ds:fuga_aura_9
execute as @s[scores={move=6560..6960}] at @s run particle ds:fuga_aura_4b
execute as @s[scores={move=6560..6960}] at @s run particle ds:fuga_aura_4c 

execute as @s[scores={move=6762}] at @s run camera @a[r=25] set minecraft:free ease 0.1 in_out_circ pos ^^25^ facing ^^12^15 
execute as @s[scores={move=6762}] at @s run camera @a[r=25] fade time 0.15 0.15 0.25 color 255 255 255

execute as @s[scores={move=6760}] at @s run camera @a[r=25] set minecraft:free pos ^-1.5^1.5^2.5 facing ^-1^1.5^
execute as @s[scores={move=6759}] at @s run camera @a[r=25] set minecraft:free ease 1.5 in_sine pos ^1.5^1.25^3 facing ^^1.5^

execute as @s[scores={move=6729}] at @s run camera @a[r=25] set minecraft:free ease 0.25 in_sine pos ^1.5^2^-4 facing ^^1^3

execute as @s[scores={move=6719}] at @s run camera @a[r=25] set minecraft:free ease 0.25 in_sine pos ^-12^2^-2 facing ^^1^7

event entity @s[scores={move=6780}] fuga_scythe
event entity @s[scores={move=6000..6700}] fuga_scythetextureoff
execute as @s[scores={move=6000..6801}] at @s run scoreboard players set @a[r=25] Camera 7
scoreboard players set @s[scores={move=6000..6801}] infinity 10
scoreboard players set @e[tag=fugascythe] Stun 50
scoreboard players set @e[tag=fugascythe] Disabled 50



execute as @s[scores={move=6730}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=6725..6728}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=6729}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=6714}] at @s run particle ds:invert ^^1^-1
execute as @s[scores={move=6689}] at @s run particle ds:invert ^^1^0.5

execute as @s[scores={move=6732}] at @s run playsound mob.blitz1 @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={move=6765}] at @s run playsound mob.fuga_hands @a[r=100] ~~1~ 99999 1.3 99999
execute as @s[scores={move=6729}] at @s run playsound mob.fuga_shoot @a[r=100] ~~1~ 99999 1.3 99999

execute as @s[scores={move=6729}] at @s run playsound music.bassboost @a[r=100] ~~1~ 99999 0.7 99999
execute as @s[scores={move=6680..6729}] at @s run playsound mob.blaze.shoot @a[r=100] ~~1~ 99999 0.2 99999
execute as @s[scores={move=6680..6729}] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 99999 0.2 99999
execute as @s[scores={move=6680..6729}] at @s run camerashake add @a[r=50] 2.5 0.15
execute as @s[scores={move=6725..6729}] at @s run particle ds:flame_stars ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run particle ds:fire_hit1 ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run particle ds:fire_hit2 ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run particle ds:fire_hit4 ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run particle ds:fire_hit5 ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run particle ds:fire_hit6 ^^1^1 
execute as @s[scores={move=6680..6729}] at @s run damage @e[tag=fugascythe] 5 override
execute as @s[scores={move=6680..6729}] at @s run scoreboard players set @e[tag=fugascythe] Hit 5
execute as @s[scores={move=6680..6709}] at @s run scoreboard players add @e[tag=fugascythe] Evade 1
execute as @s[scores={move=6680..6729}] at @s run scoreboard players set @e[tag=fugascythe] onfire 50
execute as @s[scores={move=6680}] at @s run scoreboard players set @e[tag=fugascythe] Flourish 12
execute as @s[scores={move=6680}] at @s run particle ds:meteor_land1 ^^^12
execute as @s[scores={move=6680}] at @s run particle ds:meteor_land2 ^^^12
execute as @s[scores={move=6680}] at @s run particle ds:meteor_land3 ^^^12
execute as @s[scores={move=6680}] at @s run particle ds:meteor_land4 ^^^12
execute as @s[scores={move=6680}] at @s run particle ds:meteor_land5 ^^^12
execute as @s[scores={move=6682..6684}] at @s if entity @e[tag=griefable] run effect @e[r=40] resistance 1 30 true
execute as @s[scores={move=6682}] at @s run particle ds:fire_downslam9 ^^1^1 
execute as @s[scores={move=6682}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ^^^5
execute as @s[scores={move=6682}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ^^^10
execute as @s[scores={move=6682}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ^^^15

execute as @s[scores={move=6695}] at @s run particle ds:flame_stars ^^1^1 
execute as @s[scores={move=6695}] at @s run particle ds:fire_downslam6 ^^1^1 
execute as @s[scores={move=6695}] at @s run particle ds:fire_downslam9 ^^1^1 
execute as @s[scores={move=6695}] at @s run camerashake add @a[r=100] 2 0.25 
execute as @s[scores={move=6695}] at @s run execute as @a[r=100] at @s run playsound mob.shock1 @s ~~~ 99999 0.5 99999
execute as @s[scores={move=6695}] at @s run summon gg:impact_frame ~~1~
execute as @s[scores={move=6693..6694}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=6670..6729}] at @s run tp @s ~~~

execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex1 ^^1^5 
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex2 ^^1^5 
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex1 ^^1^12
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex2 ^^1^12
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex1 ^^1^19 
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex2 ^^1^19 
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex1 ^^1^26 
execute as @s[scores={move=6680}] at @s run particle ds:flame_repulse_ex2 ^^1^26 

execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^1 
execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^5
execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^9 
execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^13
execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^17 
execute as @s[scores={move=6680}] at @s run particle ds:fire_downslam8 ^^1^21 

execute as @s[scores={move=6680}] at @s if entity @e[tag=griefable,c=1] positioned ^^^20 run function flames/heat15x15
execute as @s[scores={move=6680}] at @s if entity @e[tag=griefable,c=1] positioned ^^^10 run function flames/heat15x15

execute as @s[scores={move=6684}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=6670..6680}] at @s run tag @e[tag=fugascythe] remove fugascythe
execute as @s[scores={move=6670..6680}] at @s run camera @a[r=50] clear

scoreboard players set @s[scores={move=6660..6675}] move 2




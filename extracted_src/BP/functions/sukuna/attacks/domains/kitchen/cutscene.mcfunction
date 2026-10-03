
# Startup
execute as @s[scores={domain=1..200}] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 malevolent_kitchen


execute as @s[scores={domain=220}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=220}] at @s run kill @e[type=!item,type=ds:malevolent_kitchen,r=33]
execute as @s[scores={domain=220}] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=220}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=220}] at @s run playanimation @a[r=33,rm=0.33] animation.stunned
execute as @s[scores={domain=220..}] at @s run tp @s @s
playanimation @s[scores={domain=220..}] animation.malevolent_shrine2

execute as @s[scores={domain=153..}] at @s if block ~~-1~ air run fill ~1~-1~1~-1~-1~-1 barrier [] replace air
execute as @s[scores={domain=151..152}] at @s run fill ~15~15~15~-15~-2~-15 air [] replace barrier

execute as @s[scores={domain=147..150}] at @s if block ~~-1~ air run spreadplayers ~~ 1 2 @s

execute as @s[scores={domain=220}] at @s run execute as @a[r=300] at @s run playsound music.malevolent_kitchen @s ~~~ 999999 1 999999
execute as @s[scores={domain=215}] at @s run execute as @a[r=300] at @s run playsound music.malevolentkitchen2 @s ~~~ 999999 1 999999

execute as @s[scores={domain=170,Energy=1..50}] at @s run scoreboard players add @s Energy 200

execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0

# invincibility during startup
scoreboard players add @s[scores={domain=210..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1

scoreboard players set @s[scores={domain=1..25,infinity=3..}] infinity 2

execute as @s[scores={domain=200}] at @s run execute as @a[r=1000] at @s run playsound music.shrineformation @s ~~~ 99999 1 99999

#sfx
execute as @s[scores={domain=140}] at @s run execute as @a[r=1000] at @s run playsound music.distort1 @s ~~8~ 99999 0.35 99999
execute as @s[scores={domain=140}] at @s run execute as @a[r=1000] at @s run playsound music.distort2 @s ~~8~ 99999 0.5 99999
execute as @s[scores={domain=40}] at @s run execute as @a[r=1000] at @s run playsound music.distort3 @s ~~8~ 99999 0.5 99999

#vfx
execute as @s[scores={domain=140}] at @s run execute as @a[r=1000] at @s run camerashake add @a[r=1000] 0.25 3

execute as @s[scores={domain=150}] at @s run particle ds:malevolent_down

execute as @s[scores={domain=160..165}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_down
execute as @s[scores={domain=164..165}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:ground_slam1
execute as @s[scores={domain=164..165}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run camerashake add @a[r=100] 2 0.25

execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear1 ~~10~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear2 ~~7.5~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear3 ~~7.5~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear4 ~~7.5~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear5 ~~7.5~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:dirt4
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:dirt02
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:large_slam1
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:large_slam3
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run camerashake add @a[r=100] 0.5 0.5

execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_kitchen_orbs ~~4~
execute as @s[scores={domain=140}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_kitchen_orbs2 ~~7.5~

execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear1 ~~7.5~
execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear2 ~~7.5~
execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear3 ~~7.5~
execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear4 ~~7.5~
execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_appear5 ~~7.5~

execute as @s[scores={domain=40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_kitchen_orbs2 ~~7.5~


# transition to domain

execute as @s[scores={domain=219..220}] at @s run camera @a[r=50] set minecraft:free pos ^^1.6^1 facing ~~1.35~

execute as @s[scores={domain=200}] at @s run camera @a[r=50] set minecraft:free ease 0.2 in_sine pos ^^1.5^5 facing ~~1.5~
execute as @s[scores={domain=196}] at @s run camera @a[r=50] set minecraft:free ease 1 in_sine pos ^^1.5^5.25 facing ~~1.5~

execute as @s[scores={domain=185}] at @s run camera @a[r=50] fade time 0.2 0.25 0.25 color 0 0 0
execute as @s[scores={domain=182}] at @s run camera @a[r=50] set minecraft:free pos ^^0.35^7 facing ~~1~
execute as @s[scores={domain=165}] at @s run camera @a[r=50] set minecraft:free ease 0.5 in_out_quad pos ^^0.35^7 facing ~~3~
execute as @s[scores={domain=150}] at @s run camera @a[r=50] set minecraft:free ease 0.45 in_out_circ pos ^^1^5 facing ~~-1~
execute as @s[scores={domain=150}] at @s run camera @a[r=50] fade time 0.25 0.5 1.5 color 0 0 0


execute as @s[scores={domain=130..141}] at @s run camera @a[r=50] set minecraft:free pos ^^1.5^7.5 facing ~~1.5~
execute as @s[scores={domain=129}] at @s run camera @a[r=50] set minecraft:free ease 1.5 in_out_circ pos ^^1^27 facing ~~11.5~

execute as @s[scores={domain=150..}] at @s run particle ds:cutscene_black2
execute as @s[scores={domain=150..}] at @s run particle ds:cutscene_black4 ~~0.12~

execute as @s[scores={domain=41..149}] at @s run execute as @e[type=ds:malevolent_kitchen] at @s run particle ds:cutscene_black_big1 ~~7~
execute as @s[scores={domain=41..149}] at @s run execute as @e[type=ds:malevolent_kitchen] at @s run particle ds:cutscene_black_big2 ~~0.12~

execute as @s[scores={domain=45}] at @s run camera @a[r=100] fade time 0 0 0.15 color 255 255 255

playanimation @s[scores={domain=101..157}] animation.malevolent_shrine_under
playanimation @s[scores={domain=1..100}] animation.malevolent_shrine_hold

# domain placement
execute as @s[scores={domain=220..}] at @s run camera @a[r=50] fade time 0 0.25 0.5 color 0 0 0
execute as @s[scores={domain=220}] at @s run summon ds:malevolent_kitchen ~ ~ ~ facing ^^^25 none "malevolent_kitchen"
execute as @s[scores={domain=200..}] at @s run playanimation @e[type=ds:malevolent_kitchen,c=1] animation.malevolent_shrine.form 

execute as @s[scores={domain=210..}] at @s run event entity @e[type=ds:malevolent_kitchen,c=1] gray
execute as @s[scores={domain=1..35}] at @s run event entity @e[type=ds:malevolent_kitchen,c=1] coloured

execute as @s[scores={domain=150}] at @s run scoreboard players add @e[type=ds:malevolent_kitchen,name=malevolent_kitchen,c=1] Deleter 600
execute as @s[scores={domain=150}] at @s run scoreboard players operation @e[type=ds:malevolent_kitchen,name=malevolent_kitchen,c=1] Deleter += @s Energy
execute as @s[scores={domain=149..150}] at @s run scoreboard players operation @s domainactive = @e[type=ds:malevolent_kitchen,name=malevolent_kitchen,c=1] Deleter

execute as @s[scores={domain=148..}] at @s run tp @e[type=ds:malevolent_kitchen] ~~~ facing ^^^10

execute as @s[scores={domain=120..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~9~3~9 ~-9~~-9 barrier [] replace air
execute as @s[scores={domain=120..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~5~21~5 ~-5~~-5 barrier [] replace air
execute as @s[scores={domain=120..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~10~2~10 ~-10~~-10 barrier [] replace air
execute as @s[scores={domain=120..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~11~1~11 ~-11~~-11 barrier [] replace air
execute as @s[scores={domain=120..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~12~~12 ~-12~~-12 barrier [] replace air
execute as @s[scores={domain=1..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~~1~ ~~~ air [] replace barrier

execute as @s[scores={domain=131..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run tp @e[tag=sukuna,scores={domain=1..147},c=1] ^^4.15^7 facing ^^3.15^17

execute as @s[scores={domain=1..50}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run tp @e[tag=sukuna,scores={domain=1..147},c=1] ^^4.15^7 facing ^^3.15^17

execute as @s[scores={domain=141..147}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run execute as @e[tag=!Frames,type=!ds:malevolent_kitchen,r=10] at @s run tp @s ^^3^-17 facing @e[type=ds:malevolent_kitchen,c=1]

execute as @s[scores={domain=1..40}] at @s  run scoreboard players set @e[type=ds:malevolent_kitchen,c=1] Evade 150

execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run playsound mob.red2 @a ~~5~ 99999 0.8 99999
execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run execute as @a[r=300] at @s run playsound music.red2 @s ~~~ 99999 0.8 99999
execute as @s[scores={domain=29..30}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run camerashake add @a[r=300] 4 1 rotational
execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_kitchen_slashes1 
execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_kitchen_slashes1 
execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_shockwave1 ~~7~
execute as @s[scores={domain=39..40}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run particle ds:malevolent_shockwave2 ~~7~
execute as @s[scores={domain=39..40}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run function shockwave
execute as @s[scores={domain=39..40}] at @s run effect @a[r=300] night_vision 1 1 true
execute as @s[scores={domain=1..5}] at @s anchored eyes run camera @a[r=40] clear

execute as @s[scores={domain=40}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=39}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=38}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=37}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=36}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=30..35}] at @s run title @a[r=40,tag=!impactframesoff] title §l
execute as @s[scores={domain=35}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={domain=32}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={domain=29..30}] at @s run fill ~2~2~2~-2~-2~-2 air [] replace light_block

execute as @s[scores={domain=148}] at @s if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=147}] at @s positioned ~~~45 if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=146}] at @s positioned ~~~-45 if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=145}] at @s positioned ~45~~ if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=144}] at @s positioned ~-45~~ if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30

#mahoraga cutscene

execute as @s[scores={domain=130..}] at @s run tp @e[family=mahoraga,c=1,r=250] ^^^33 facing ~~~

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 7
tag @s[scores={domain=1..5}] remove sukunadomain2
tag @s[scores={domain=1..5}] remove domainlayout
scoreboard players set @s[scores={domain=1..}] Camera 30




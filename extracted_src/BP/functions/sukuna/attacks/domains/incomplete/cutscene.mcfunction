
# Startup
execute as @s[scores={domain=1..200}] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 incomplete_kitchen


execute as @s[scores={domain=280..}] at @s run stopsound @a[r=50]
execute as @s[scores={domain=280..}] at @s run kill @e[type=!item,type=ds:incomplete_shrine,r=50]
execute as @s[scores={domain=280..}] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=280..}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=280..}] at @s run playanimation @a[r=33,rm=0.33] animation.stunned
execute as @s[scores={domain=280..}] at @s run tp @s @s
playanimation @s[scores={domain=280..}] animation.incomplete_shrine2


execute as @s[scores={domain=273..}] at @s run scriptevent ds:downfall
execute as @s[scores={domain=153..}] at @s if block ~~-1~ air run fill ~1~-1~1~-1~-1~-1 barrier [] replace air
execute as @s[scores={domain=151..152}] at @s run fill ~15~15~15~-15~-2~-15 air [] replace barrier


execute as @s[scores={domain=147..150}] at @s if block ~~-1~ air run spreadplayers ~~ 1 2 @s
execute as @s[scores={domain=280}] at @s run execute as @a[r=300] at @s run playsound music.incomplete_shrine @s ~~~ 999999 0.9 999999
execute as @s[scores={domain=170,Energy=1..50}] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0


# invincibility during startup
scoreboard players add @s[scores={domain=270..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1

scoreboard players set @s[scores={domain=1..25,infinity=3..}] infinity 2

execute as @s[scores={domain=200}] at @s run execute as @a[r=1000] at @s run playsound music.temp @s ~~~ 99999 1 99999

#sfx
execute as @s[scores={domain=126..140}] at @s run execute as @a[r=1000] at @s run playsound music.distort1 @s ~~8~ 99999 0.35 99999
execute as @s[scores={domain=126..140}] at @s run execute as @a[r=1000] at @s run playsound music.distort2 @s ~~8~ 99999 0.5 99999
execute as @s[scores={domain=40}] at @s run execute as @a[r=1000] at @s run playsound music.distort3 @s ~~8~ 99999 0.5 99999



execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_appear1 ~~10~
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_appear2 ~~7.5~
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_appear3 ~~7.5~
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_appear4 ~~7.5~
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_appear5 ~~7.5~
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:dirt4
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:dirt02
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:large_slam1
execute as @s[scores={domain=166..170}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:large_slam3




# transition to domain

execute as @s[scores={domain=275..278}] at @s run tp @s @s
execute as @s[scores={domain=275..278}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^1^-0.5^1 facing ~~~
execute as @s[scores={domain=273..274}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^0.5^^0.5 facing ~~1~

execute as @s[scores={domain=240..241}] at @s run camera @a[r=50] fade time 1 0.5 0.5 color 0 0 0

execute as @s[scores={domain=242..}] at @s run execute as @e[type=ds:incomplete_shrine] at @s run particle ds:cutscene_black_big1 ~~7~
execute as @s[scores={domain=242..}] at @s run execute as @e[type=ds:incomplete_shrine] at @s run particle ds:cutscene_black_big2 ~~0.12~

execute as @s[scores={domain=210}] at @s run camera @a[r=50] set minecraft:free pos ^12^2^14 facing ^^9^-2
execute as @s[scores={domain=170..210}] at @s run camerashake add @a[r=50] 0.1 0.075 rotational

execute as @s[scores={domain=199..200}] at @s run camera @a[r=50] fade time 1 0.5 0.5 color 0 0 0

execute as @s[scores={domain=178..179}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^0.15^-0.35^0.5 facing ^0.15^^
execute as @s[scores={domain=169..170}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 3.5 in_sine pos ^0.15^1^1 facing ^0.15^^

execute as @s[scores={domain=100..101}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 0.85 in_out_circ pos ^10^-2^20 facing ~~1~


# domain placement

execute as @s[scores={domain=280..}] at @s run tp @s ~~3.5~
execute as @s[scores={domain=280..}] at @s run tp @s @s
execute as @s[scores={domain=80..279}] at @s run fill ~~-1~ ~~-1~ barrier [] replace air


execute as @s[scores={domain=225}] at @s run summon ds:incomplete_shrine ^^-1^-6 facing ^^^25 none "incomplete_shrine"
execute as @s[scores={domain=222..225}] at @s run playanimation @e[type=ds:incomplete_shrine,c=1] animation.incomplete_shrine_appear


execute as @s[scores={domain=80..224}] at @s run scoreboard players set @e[type=ds:incomplete_shrine,c=1] Deleter 1000
execute as @s[scores={domain=80..224}] at @s run scoreboard players set @s domainactive 1000

execute as @s[scores={domain=198..}] at @s run tp @e[type=ds:incomplete_shrine] ^^-1^-6 facing ^^^10
execute as @s[scores={domain=80..}] at @s run execute as @e[type=ds:incomplete_shrine] at @s run tp @s ~~~

execute as @s[scores={domain=140..}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run fill ~7~-3~7 ~-7~~-7 barrier [] replace air
execute as @s[scores={domain=140..}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run fill ~3~14~3 ~-3~~-3 barrier [] replace air
execute as @s[scores={domain=130..}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run fill ~1~~1~-1~-1~-1 air



execute as @s[scores={domain=1..80}] at @s  run scoreboard players set @e[type=ds:incomplete_shrine,c=1] Evade 150

execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run playsound mob.red2 @a ~~5~ 99999 0.8 99999
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run execute as @a[r=300] at @s run playsound music.red2 @s ~~~ 99999 0.8 99999
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run camerashake add @a[r=300] 4 2 rotational
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:incomplete_shrine_slashes1 
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:incomplete_shrine_slashes1 
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_shrine_slashes1 
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_shrine_slashes1 
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_shockwave1 ~~7~
execute as @s[scores={domain=80}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:malevolent_shockwave2 ~~7~
execute as @s[scores={domain=80}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:incomplete_shrine,c=1] at @s run function shockwave
execute as @s[scores={domain=80}] at @s run effect @a[r=300] night_vision 1 1 true
execute as @s[scores={domain=1..5}] at @s run camera @a[r=60] clear

execute as @s[scores={domain=80..}] at @s run execute as @e[type=ds:incomplete_shrine,c=1] at @s run particle ds:incomplete_shrine_aura3 ~~7~


execute as @s[scores={domain=80}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={domain=79}] at @s run particle ds:red_tint ^^5^15
execute as @s[scores={domain=78}] at @s run particle ds:invert ^^5^12
execute as @s[scores={domain=77}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={domain=77..78}] at @s run fill ~2~2~2~-2~-2~-2 air [] replace light_block

execute as @s[scores={domain=80}] at @s if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=79}] at @s positioned ~~~42 if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=78}] at @s positioned ~~~-42 if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=77}] at @s positioned ~42~~ if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30
execute as @s[scores={domain=76}] at @s positioned ~-42~~ if entity @e[tag=griefable] run function sukuna/attacks/domains/fill_area_30

#mahoraga cutscene

execute as @s[scores={domain=80..}] at @s run tp @e[family=mahoraga,c=1,r=250] ^^^33 facing ~~~

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 7
tag @s[scores={domain=1..5}] remove sukunadomain3
tag @s[scores={domain=1..5}] remove domainlayout
scoreboard players set @s[scores={domain=1..}] Camera 30




playanimation @s[scores={move=190}] animation.carving_combo
tag @s[scores={move=1..2}] remove form4sd

scoreboard players set @s[scores={move=34..}] Frames 5
scoreboard players set @s[scores={move=4..}] Move 6
scoreboard players set @s[scores={move=6..35}] Camera 6


execute as @s[scores={move=190..}] at @s run execute as @a[r=60] at @s run playsound music.carving_combo @s ~~~ 99999 1 99999
execute as @s[scores={move=190..}] at @s run execute as @a[r=60] at @s run camera @s fade time 0 0 0.25 color 255 255 255


execute as @s[scores={move=187..188}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=185..186}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=20..170}] at @s if entity @e[tag=griefable] run kill @e[type=item,r=15]

execute as @s[scores={move=31..90}] at @s run camera @s set minecraft:free ease 0.08 in_sine pos ^^15^-6 facing ~~1~
execute as @s[scores={move=31..32}] at @s run tp @s @s
execute as @s[scores={move=29..30}] at @s run camera @s set minecraft:free ease 1 in_sine pos ^^0.5^3 facing ~~1.5~
execute as @s[scores={move=91..}] at @s run camera @s set minecraft:free ease 0.09 in_sine pos ^^6^-6 facing ~~1~
camera @s[scores={move=30}] fade time 1 0.5 0.5 color 0 0 0

execute as @s[scores={move=171..172}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=171..173}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=170}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 5 override
execute as @s[scores={move=170}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=170}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=170}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=170}] at @s positioned ^^^4 run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=169}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scoreboard players operation @s damagehalf += @s strength
execute as @s[scores={move=170}] at @s run camerashake add @a[r=60] 3 0.15
execute as @s[scores={move=170}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=168}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=165..167}] at @s run fill ~4~4~4~-4~~-4 air [] replace light_block
execute as @s[scores={move=170}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=170}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 0.8  
execute as @s[scores={move=169..170}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward5
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:cleave2
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:cleave3
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:carve1
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:carve2
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:carve3
execute as @s[scores={move=170}] at @s positioned ^^1^2 run particle ds:carve5
execute as @s[scores={move=170}] at @s positioned ^^0.3^2 run particle ds:carving_aureole
execute as @s[scores={move=169..170}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5


execute as @s[scores={move=161..162}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=160..162}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=160}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 2 override
execute as @s[scores={move=160}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=160}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=160}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=160}] at @s run camerashake add @a[r=60] 3 0.15
execute as @s[scores={move=160}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=160}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 1.15 
execute as @s[scores={move=159..160}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward2
execute as @s[scores={move=160}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=160}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=160}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=160}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=160}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5

execute as @s[scores={move=156..157}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=155..157}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=155}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 2 override
execute as @s[scores={move=155}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=155}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=155}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=155}] at @s run camerashake add @a[r=60] 3 0.15
execute as @s[scores={move=155}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=155}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 1.15 
execute as @s[scores={move=154..155}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward2
execute as @s[scores={move=155}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=155}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=155}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=155}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=155}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5

execute as @s[scores={move=151..152}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=155..152}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=150}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 2 override
execute as @s[scores={move=150}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=150}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=150}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=150}] at @s run camerashake add @a[r=60] 3 0.15
execute as @s[scores={move=150}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=150}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 1.15  
execute as @s[scores={move=151}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.slice @a ~~~ 0.15 1
execute as @s[scores={move=149..150}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward2
execute as @s[scores={move=150}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=150}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=150}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=150}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=150}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5

execute as @s[scores={move=131..132}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=131..133}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=130}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 5 override
execute as @s[scores={move=130}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=130}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=130}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=130}] at @s positioned ^^^4 run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=169}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scoreboard players operation @s damagehalf += @s strength
execute as @s[scores={move=130}] at @s run camerashake add @a[r=60] 4 0.15
execute as @s[scores={move=130}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=128}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=127..128}] at @s run fill ~4~4~4~-4~~-4 air [] replace light_block
execute as @s[scores={move=130}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=130}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 0.8  
execute as @s[scores={move=129..130}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward5
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:cleave2
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:cleave3
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:carve1
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:carve2
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:carve3
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:carve5
execute as @s[scores={move=130}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=130}] at @s positioned ^^0.3^2 run particle ds:carving_aureole
execute as @s[scores={move=130}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5

execute as @s[scores={move=106..106}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=105..107}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=105}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 5 override
execute as @s[scores={move=105}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=105}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=105}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 3
execute as @s[scores={move=105}] at @s positioned ^^^4 run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=104}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scoreboard players operation @s damagehalf += @s strength
execute as @s[scores={move=105}] at @s run camerashake add @a[r=60] 2 0.15 rotational
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:heavy_impact3
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:heavy_impact2
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:cleave_aureole
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:cleave2
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:cleave3
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:carve1
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:carve2
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:carve3
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:carve5
execute as @s[scores={move=105}] at @s positioned ^^1^2 run particle ds:ground_slam2
execute as @s[scores={move=105}] at @s if entity @e[tag=griefable] run fill ~4~4~4~-4~~-4 air [] destroy
execute as @s[scores={move=105}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.15 0.8  
execute as @s[scores={move=104..105}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run scriptevent ds:backward5
execute as @s[scores={move=105}] at @s positioned ^^0.3^2 run particle ds:carving_aureole
execute as @s[scores={move=105}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 5


execute as @s[scores={move=32..90}] at @s run scriptevent ds:knockback 3
effect @s[scores={move=32..90}] invisibility 2 1 true
effect @s[scores={move=25..30}] invisibility 0 10 true
execute as @s[scores={move=32..90}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 2
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run effect @a[r=25] night_vision 2 1 true
execute as @s[scores={move=29..90}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run damage @e[tag=!Frames,r=6] 1 override
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=32..90}] at @s run camerashake add @a[r=60] 3.3 0.22
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run particle ds:blood_splat2
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo4
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo6
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo8
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo9
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo10
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run particle ds:carving_combo_edges
execute as @s[scores={move=32..90}] at @s  unless block ~~-1~ air run particle ds:carve_floor ~~0.15~
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:large_impact1 ~~~
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:large_impact2 ~~~
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:ground_slam2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:heavy_impact2
execute as @s[scores={move=32..90}] at @s if entity @e[tag=griefable] run fill ~2~2~2~-2~~-2 air [] destroy
execute as @s[scores={move=32..90}] at @s if entity @e[tag=griefable] run fill ~1~3~1~-1~~-1 air [] destroy
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.02 1.8  
execute as @s[scores={move=32..90}] at @s positioned ^^1^ run tp @e[tag=!Frames,r=6] ~~~
execute as @s[scores={move=30}] at @s positioned ^^0.3^2 run particle ds:carving_aureole

execute as @s[scores={move=31}] at @s positioned ^^1^ run camerashake add @a[r=100] 4 0.1 rotational
execute as @s[scores={move=31}] at @s positioned ^^1^ run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=31}] at @s positioned ^^1^ run playsound mob.slice @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=31}] at @s positioned ^^1^ run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=30}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run scoreboard players operation @s damagehalf += @s strength
execute as @s[scores={move=29}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=6] Flourish 6

execute as @s[scores={move=30}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=28}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=25..28}] at @s run fill ~4~4~4~-4~~-4 air [] replace light_block


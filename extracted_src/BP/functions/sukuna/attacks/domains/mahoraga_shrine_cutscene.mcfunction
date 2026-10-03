scoreboard players remove @s[scores={sukunacutscene=1..}] sukunacutscene 1

execute as @s[scores={sukunacutscene=870..}] at @s run tp @e[family=mahoraga,c=1] ^^3^15 facing ~~~
execute as @s[scores={sukunacutscene=997..}] at @s run playanimation @e[family=mahoraga,c=1] animation.mahoraga.shrine_cutscene
execute as @s[scores={sukunacutscene=870..}] at @s run camera @a[r=60] set minecraft:free pos ^-22^7^15 facing ^^7^15
execute as @s[scores={sukunacutscene=590..}] at @s run scoreboard players set @a[r=60] Camera 20
execute as @s[scores={sukunacutscene=590..}] at @s run scoreboard players set @a[r=60] Stun 20

scoreboard players set @e[family=mahoraga,r=250] cutscene 20
scoreboard players set @e[family=mahoraga,r=250] chance 0
scoreboard players set @e[family=mahoraga,r=250] Stun 50
scoreboard players set @e[family=mahoraga,r=250] Disabled 100

execute as @s[scores={sukunacutscene=828..830}] at @s run execute as @e[family=mahoraga,c=1] at @s run particle ds:blood_explosion ^^^-2

execute as @s[scores={sukunacutscene=820..822}] at @s run tp @e[family=mahoraga,c=1] ^^^50 facing ~~~
execute as @s[scores={sukunacutscene=590..800}] at @s run camera @a[r=60] set minecraft:free pos ^^3.6^42 facing ^^3.65^55

execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200] run tp @s ~~~ facing @e[type=ds:malevolent_kitchen,r=200,c=1]
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[type=ds:malevolent_kitchen,r=200] unless entity @e[tag=fuga_use,r=200] run tp @s ~~~ facing @e[type=ds:incomplete_shrine,r=200,c=1]
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run tp @s ^^^0.045

execute as @s[scores={sukunacutscene=0..800}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[type=ds:malevolent_kitchen,r=12] run playsound mob.burst @a[r=100] ~~ 99999 0.8 99999
execute as @s[scores={sukunacutscene=0..800}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[type=ds:malevolent_kitchen,r=12] run kill @e[type=ds:malevolent_kitchen,r=12]
execute as @s[scores={sukunacutscene=0..800}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[type=ds:incomplete_shrine,r=12] run playsound mob.burst @a[r=100] ~~ 99999 0.8 99999
execute as @s[scores={sukunacutscene=0..800}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[type=ds:incomplete_shrine,r=12] run kill @e[type=ds:incomplete_shrine,r=12]

execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk1 ~~2~
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk2~~2~
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk3~~2~
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk4~~2~
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk5~~2~
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s unless entity @e[tag=fuga_use,r=200]  run particle ds:mahoraga_shrine_walk6~~2~

execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[tag=fuga_use,r=200,scores={move=70..}] run playanimation @s animation.mahoraga.on_floor
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[tag=fuga_use,r=200,scores={move=70..}] run particle ds:fuga_aura1
execute as @s[scores={sukunacutscene=0..820}] at @s run execute as @e[family=mahoraga,c=1] at @s if entity @e[tag=fuga_use,r=200,scores={move=70..}] run particle ds:fuga_area ~~0.5~
execute as @s[scores={sukunacutscene=0..820}] at @s if entity @e[tag=fuga_use,r=200,scores={move=70..}] run tp @e[family=mahoraga,r=200,c=1] ^^^42 facing @s


execute as @s[scores={sukunacutscene=600..602}] at @s run camera @a[r=250] fade time 0.4 1 0.5 color 0 0 0

execute as @s[scores={sukunacutscene=500..590}] at @s run camera @a[r=250] clear
execute as @s[scores={sukunacutscene=500..590}] at @s run scoreboard players set @a[r=250] Camera 0
execute as @s[scores={sukunacutscene=500..590}] at @s run scoreboard players set @a[r=250] Stun 0
execute as @s[scores={sukunacutscene=500..590}] at @s run inputpermission set @a[r=250,haspermission={camera=disabled}] camera enabled
execute as @s[scores={sukunacutscene=500..590}] at @s run inputpermission set @a[r=250,haspermission={movement=disabled}] movement enabled

scoreboard players set @s[scores={sukunacutscene=0..50}] sukunacutscene 200


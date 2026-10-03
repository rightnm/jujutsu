execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 140

tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~ facing @e[name=novabombtrg,c=1]
execute as @s[scores={Deleter=1..}] at @s if entity @e[name=novabombtrg] run tp @s ^^^1

tag @s add Frames
scoreboard players set @s atk 2

execute as @s if entity @e[name=novabombtrg,r=2] run scoreboard players set @s Deleter 7
execute as @s if entity @e[name=novabombtrg,r=2] run kill @e[name=novabombtrg,c=1]

camerashake add @a[r=25] 2 0.15
playsound beacon.ambient @a ~~~ 0.15 2

execute as @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:novabomb1
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:novabomb2
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:novabomb3
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:novabomb4
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:novabomb5 

execute as @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:novabomb1b
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:novabomb2b
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:novabomb3b
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:novabomb4b
execute as @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:novabomb5b

execute as @s[scores={Deleter=6}] at @s run tickingarea add ~40~~40~-40~~-40 bomb
execute as @s[scores={Deleter=6}] at @s if entity @e[tag=griefable] run function 23x23sphere
execute as @s[scores={Deleter=1..6}] at @s if entity @e[tag=griefable] run fill ~5~5~5 ~-5~-5~-5 air
execute as @s[scores={Deleter=1..6}] at @s if entity @e[tag=griefable]  positioned ~~-21~ run fill ~2~2~2 ~-2~-3~-2 air
execute as @s[scores={Deleter=4..5}] at @s run particle ds:invert
execute as @s[scores={Deleter=4..5}] at @s run effect @a night_vision 1 1 true
execute as @s[scores={Deleter=4..5}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={Deleter=4..5}] at @s run playsound mob.wither.spawn @a[r=500] ~~~ 9999 3.25 9999
execute as @s[scores={Deleter=4..5}] at @s run playsound mob.wither.spawn @a[r=500] ~~~ 9999 0.25 9999
execute as @s[scores={Deleter=4..5}] at @s run playsound mob.shock1 @a[r=500] ~~~ 9999 0.35 9999
execute as @s[scores={Deleter=4..5}] at @s run particle ds:large_shockwave1
execute as @s[scores={Deleter=1..5}] at @s run particle ds:nova_explode1
execute as @s[scores={Deleter=1..5}] at @s run particle ds:nova_explode2
execute as @s[scores={Deleter=1..5}] at @s run damage @e[type=!ds:benedictus,tag=!Frames,type=!gg:impact_frame,r=20] 50 suicide
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players set @e[type=!ds:benedictus,tag=!Frames,type=!gg:impact_frame,r=20] Stun 33
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players set @e[type=!ds:benedictus,tag=!Frames,type=!gg:impact_frame,r=20] Hit 5
execute as @s[scores={Deleter=4}] at @s run summon gg:impact_frame


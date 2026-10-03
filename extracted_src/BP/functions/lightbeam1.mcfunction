execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 11

scoreboard players set @s atk 2
tag @s[tag=!Frames] add Frames
execute as @s[scores={Deleter=5..}] at @s run particle ds:lightbeam_trg1
execute as @s[scores={Deleter=5..}] at @s run particle ds:lightbeam_trg2

execute as @s[scores={Deleter=0..5}] at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:lightbeam1
execute as @s[scores={Deleter=0..5}] at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:lightbeam1b

execute as @s[scores={Deleter=0..2}] at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:lightstrike3
execute as @s[scores={Deleter=0..2}] at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:lightstrike3b
execute as @s[scores={Deleter=0..2}] at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:lightstrike2
execute as @s[scores={Deleter=0..2}] at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:lightstrike2b

execute as @s[scores={Deleter=4}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={Deleter=0..4}] at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run damage @e[r=3,tag=!Frames,type=!ds:benedictus] 15 suicide
execute as @s[scores={Deleter=0..4}] at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run damage @e[r=3,tag=!Frames,type=!ds:benedictus] 7 suicide
execute as @s[scores={Deleter=4}] at @s run scoreboard players set @e[r=3,tag=!Frames,type=!ds:benedictus] Hit 5
execute as @s[scores={Deleter=4}] at @s run playsound mob.blitz2 @a[r=100] ~~50~ 99999 2 99999
execute as @s[scores={Deleter=4}] at @s run playsound portal.travel @a[r=100] ~~50~ 99999 15 99999
execute as @s[scores={Deleter=0..2}] at @s run particle ds:rubble3

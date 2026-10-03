execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 11
tag @s[tag=!Frames,type=!ds:benedictus] add Frames
scoreboard players set @s atk 2

execute as @s at @s run tp @s ~~~ facing @p
execute as @s at @s run tp @s ^^^2
execute as @s at @s run tp @s ^^^2

execute as @s at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:lightpellet1
execute as @s at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:lightpellet1b

execute as @s at @s if entity @e[type=ds:benedictus,scores={detect_health=400..}] run particle ds:lightpellet2
execute as @s at @s if entity @e[type=ds:benedictus,scores={detect_health=1..399}] run particle ds:lightpellet2b


damage @e[tag=!Frames,type=!ds:benedictus,r=2.5] 1 suicide
scoreboard players set @e[tag=!Frames,type=!ds:benedictus,r=2.5] Hit 2
execute as @e[tag=!Frames,type=!ds:benedictus,r=2.5] at @s run particle ds:rift7 ~~1~
execute as @e[tag=!Frames,type=!ds:benedictus,r=2.5] at @s run particle ds:heavy_impact2 ~~1~
execute as @e[tag=!Frames,type=!ds:benedictus,r=2.5] at @s run playsound mob.blitz2 @a ~~~ 0.1 3.75
execute as @s if entity @e[tag=!Frames,type=!ds:benedictus,r=2.5] run scoreboard players set @s Deleter 10
execute as @s if entity @e[tag=!Frames,type=!ds:benedictus,r=2.5] run  tp @s ~~-300~

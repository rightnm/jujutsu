execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run particle ds:spatial_blitz2
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run particle ds:spatial_blitz3
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run particle ds:spatial_blitz4
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=3,c=1] run particle ds:impact
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run damage @e[tag=!Frames,r=2.5] 8 fire_tick
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run scoreboard players set @e[tag=!Frames,r=2.5] Stun 15
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run scoreboard players set @e[tag=!Frames,r=2.5] Hit 3
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] run execute as @e[tag=!Frames,r=2.5] at @s run particle ds:heavy_impact1 ~~1~
execute as @p if entity @e[tag=limitless,scores={move=1..5},r=25,c=1] positioned ^^^0.33 run function limitless/blitz


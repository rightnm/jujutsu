execute as @p if entity @e[tag=limitless,scores={move=15..25},r=50] unless entity @e[tag=warp,r=50] run tag @e[r=4.99,c=1,tag=!Frames] add warp
execute as @p if entity @e[tag=limitless,scores={move=15..25},r=50] unless entity @e[tag=warp,r=50] positioned ^^^5 run function limitless/warp




execute as @s at @s run summon ds:projectile "waypoint"
execute as @s at @s run tag @e[name="waypoint",c=1] add flyheads_quest
execute as @s at @s run spreadplayers ~ ~ 100 750 @e[tag=flyheads_quest,name=waypoint,c=1]
execute as @e[name=waypoint,tag=flyheads_quest,c=1] at @s run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 flyheads_quest
execute as @s at @s run tp @s ~~~ facing @e[name=waypoint,c=1,tag=flyheads_quest]

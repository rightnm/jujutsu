
execute as @s at @s run summon ds:projectile "waypoint"
execute as @s at @s run tag @e[name="waypoint",c=1] add capture_point
execute as @s at @s run spreadplayers ~ ~ 100 750 @e[tag=capture_point,name=waypoint,c=1]
execute as @e[name=waypoint,tag=capture_point,c=1] at @s run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 capture_point
execute as @s at @s run tp @s ~~~ facing @e[name=waypoint,c=1,tag=capture_point]

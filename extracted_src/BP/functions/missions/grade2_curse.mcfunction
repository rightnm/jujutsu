
execute as @s at @s run summon ds:projectile "waypoint"
execute as @s at @s run tag @e[name="waypoint",c=1] add grade2_curse_quest
execute as @s at @s run spreadplayers ~ ~ 100 750 @e[tag=grade2_curse_quest,name=waypoint,c=1]
execute as @e[name=waypoint,tag=grade2_curse_quest,c=1] at @s run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 grade2_curse_quest
execute as @s at @s run tp @s ~~~ facing @e[name=waypoint,c=1,tag=grade2_curse_quest]

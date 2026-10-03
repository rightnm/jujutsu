
execute as @s at @s run summon ds:projectile "waypoint"
execute as @s at @s run tag @e[name="waypoint",c=1] add high_sorcerer_curse_quest
execute as @s at @s run spreadplayers ~ ~ 100 750 @e[tag=high_sorcerer_curse_quest,name=waypoint,c=1]
execute as @e[name=waypoint,tag=high_sorcerer_curse_quest,c=1] at @s run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 high_sorcerer_curse_quest
execute as @s at @s run tp @s ~~~ facing @e[name=waypoint,c=1,tag=high_sorcerer_curse_quest]
execute as @p at @s run playsound random.orb @a ~~~ 1 1.5
execute as @p at @s run structure load StatsNpc ~~~
execute as @p at @s run tp @e[type=!item,tag=StatsNpc,c=1,r=5] ~~~
execute as @p at @s run scoreboard players set @s statopen 7
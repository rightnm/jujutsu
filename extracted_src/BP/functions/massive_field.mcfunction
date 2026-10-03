execute if entity @p[r=200] run particle ds:negative_field_massive ~~20~
execute if entity @p[r=200] run particle ds:negative_field_massive2 ~~20~
execute if entity @p[r=200] run particle ds:negative_field_massive3 ~~20~
particle ds:worldevent_waypoint
execute if entity @p[r=200] unless block ~~~ air run tp @s ~~1~

execute if entity @p[r=200] run camerashake add @a[scores={move=0,cutscene=0},r=100] 0.1 0.08

execute if entity @p[r=200] run tag @s[tag=!Frames] add Frames

execute if entity @p[r=200] run playsound ambient.soulsand_valley.additions @a[r=100] ~~~ 999999 0.5 999999
execute if entity @p[r=200] run playsound ambient.soulsand_valley.mood @a[r=100] ~~~ 999999 0.75 999999


execute if entity @p[r=200] run execute unless entity @s[scores={Deleter=0..}] run scoreboard players random @s Deleter 2400 4000

execute if entity @p[r=200] run execute as @s[tag=kaiju_field,scores={Deleter=0..5}] at @s unless entity @e[type=ds:kaiju_curse] run summon ds:kaiju_curse
execute if entity @p[r=200] run execute as @s[tag=kaiju_field,scores={Deleter=0..5}] at @s run kill @s
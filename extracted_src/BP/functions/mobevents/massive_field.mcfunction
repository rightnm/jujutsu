tickingarea remove world_event_kaiju
summon ds:massive_field "kaiju_field"
scoreboard players set @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,r=1,c=1] Deleter 12000
spreadplayers ~ ~ 300 2000 @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,r=1,c=1]
execute as @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,c=1] at @s run tickingarea add ~5 ~ ~5 ~-5 ~ ~-5 world_event_kaiju
execute as @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,c=1] at @s run tp @s ~ 62 ~
execute at @s run tp @s ~~~ facing @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,c=1]
tag @e[type=ds:massive_field,name=kaiju_field,tag=!kaiju_field,c=1] add kaiju_field

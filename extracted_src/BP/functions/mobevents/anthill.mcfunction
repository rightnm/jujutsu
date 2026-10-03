tickingarea remove world_event_anthill
summon ds:projectile "world_event"
scoreboard players set @e[type=ds:projectile,name=world_event,tag=!anthill,r=1,c=1] Deleter 12000
spreadplayers ~ ~ 300 2000 @e[type=ds:projectile,name=world_event,tag=!anthill,r=1,c=1]
execute as @e[type=ds:projectile,name=world_event,tag=!anthill,c=1] at @s run tickingarea add ~50 ~ ~50 ~-50 ~ ~-50 world_event_anthill
execute as @e[type=ds:projectile,name=world_event,tag=!anthill,c=1] at @s run tp @s ~ 62 ~
tag @a[name=ButterJaffa3452,tag=!hadanthill] add hadanthill

execute as @e[type=ds:projectile,name=world_event,tag=!anthill,c=1] at @s run structure load anthill ~-18 70 ~-18
execute at @s run tp @s ~~~ facing @e[type=ds:projectile,name=world_event,tag=!anthill,c=1]
tag @e[type=ds:projectile,name=world_event,tag=!anthill,c=1] add anthill

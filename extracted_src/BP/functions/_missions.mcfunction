tag @e[type=ds:projectile,name=waypoint,tag=!domainunselect] add domainunselect
execute as @e[type=ds:projectile,name=waypoint] at @s run particle ds:waypoint

tag @e[type=ds:projectile,name=world_event,tag=!domainunselect] add domainunselect
execute as @e[type=ds:projectile,name=world_event] at @s run particle ds:worldevent_waypoint
execute as @e[type=ds:projectile,name=world_event] at @s run tp @s ~ 62 ~


execute unless score mission missions_count matches 0 run scoreboard players set mission missions_count 0
execute as @e[type=ds:projectile,name=waypoint] run scoreboard players add mission missions_count 1
execute as @e[type=ds:projectile,name=waypoint] at @s if block ~~-2~ air run tp @s ~~-2~
execute as @e[type=ds:projectile,name=waypoint] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @e[type=ds:projectile,name=world_event,tag=anthill,scores={Deleter=15}] at @s run function 32x32sphere


execute as @e[type=ds:projectile,name=waypoint,tag=flyheads_quest] at @s if entity @a[tag=killquest_flyheads_infestation,r=20,rm=5,m=!spectator] run function missions/flyheads_swarm
execute as @e[type=ds:projectile,name=waypoint,tag=grasshopper_quest] at @s if entity @a[tag=killquest_grasshopper_curse,r=20,rm=5,m=!spectator] run function missions/grasshopper_curse2
execute as @e[type=ds:projectile,name=waypoint,tag=grade2_curse_quest] at @s if entity @a[tag=killquest_grade2_curse,r=20,rm=5,m=!spectator] run function missions/grade2_curse2


execute as @e[type=ds:projectile,name=waypoint,tag=capture_point] at @s if entity @a[tag=capture_point,r=20,tag=!curse,m=!spectator] run function missions/capture_point_sorcerer_spawn
execute as @e[type=ds:projectile,name=waypoint,tag=capture_point] at @s if entity @a[tag=capture_point,r=20,tag=curse,m=!spectator] run function missions/capture_point_curse_spawn

execute as @e[type=ds:projectile,name=waypoint,tag=high_sorcerer_curse_quest] at @s if entity @a[tag=high_sorcerer_quest,r=20,rm=5,m=!spectator] run function missions/high_sorcerer_quest2

execute as @a[tag=curse,tag=mission_negative_field_v1,m=!spectator] at @s if entity @e[type=ds:negative_field,r=33,scores={negative_field=51..}] run function missions/rewards/negative_field_v1
execute as @a[tag=curse,tag=mission_negative_field_v2,m=!spectator] at @s if entity @e[type=ds:negative_field,r=33,scores={negative_field=100..}] run function missions/rewards/negative_field_v2

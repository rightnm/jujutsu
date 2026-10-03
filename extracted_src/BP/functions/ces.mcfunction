execute as @s[type=ds:conflict_essence_drop] unless entity @p[scores={meteordropped=1..}] run event entity @s ds:disappear
execute as @s[type=ds:conflict_essence_drop] run tag @s add Frames
execute as @s[type=ds:conflict_essence_drop] run particle ds:large_impact2
execute as @s[type=ds:conflict_essence_drop] run particle ds:rift8
execute as @s[type=ds:conflict_essence_drop] run particle ds:rift9
execute as @s[type=ds:conflict_essence_drop] run playsound portal.portal @a ~~~ 0.1 2
execute as @s[type=ds:conflict_essence_drop] run give @p[r=2] ds:conflict_essence
execute as @s[type=ds:conflict_essence_drop] run execute if entity @p[r=2] run particle ds:large_impact1 ~~~
execute as @s[type=ds:conflict_essence_drop] run execute if entity @p[r=2] run playsound mob.wither.spawn @a[r=100] ~~~ 99999 2 99999
execute as @s[type=ds:conflict_essence_drop] run execute if entity @p[r=2] run event entity @s ds:disappear
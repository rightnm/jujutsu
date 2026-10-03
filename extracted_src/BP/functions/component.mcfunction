execute as @s[type=ds:component] unless entity @p[scores={astarothdeath=1..}] run event entity @s ds:disappear
execute as @s[type=ds:component] run tag @s add Frames
execute as @s[type=ds:component] run particle ds:rift4
execute as @s[type=ds:component] run particle ds:rift5
execute as @s[type=ds:component] run particle ds:rift6
execute as @s[type=ds:component] run particle ds:rift8
execute as @s[type=ds:component] run particle ds:rift9
execute as @s[type=ds:component] run playsound portal.portal @a ~~~ 0.1 2
execute as @s[type=ds:component] run give @p[r=2] ds:core_component
execute as @s[type=ds:component] run execute if entity @p[r=2] run particle ds:large_impact1 ~~~
execute as @s[type=ds:component] run execute if entity @p[r=2] run particle ds:large_impact2 ~~~
execute as @s[type=ds:component] run execute if entity @p[r=2] run playsound mob.wither.spawn @a[r=100] ~~~ 99999 2 99999
execute as @s[type=ds:component] run execute if entity @p[r=2] run event entity @s ds:disappear
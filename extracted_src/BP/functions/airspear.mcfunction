tp @s ^^^1.5


tp @s ~~~ facing @e[name=airspeartrg]
tag @s add Frames
scoreboard players set @s atk 2

execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 20

execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:dirt2
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura2
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura2
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:wind_aura2
execute as @s if entity @e[name=airspeartrg,r=3] run camerashake add @a[r=25] 2 0.15
execute as @s if entity @e[name=airspeartrg,r=3] run particle ds:ground_slam2
execute as @s if entity @e[name=airspeartrg,r=3] run kill @e[type=ds:projectile,r=5]



particle ds:wind_shield
particle ds:wind_shield2
particle ds:wind_spear1
particle ds:wind_spear1 ^^^-0.5
particle ds:wind_spear1 ^^^-1
particle ds:wind_spear2
particle ds:dukeparry1

scoreboard players set @e[tag=!Frames,r=3] Hit 5
scoreboard players set @e[tag=!Frames,r=3] knockdown 25
damage @e[tag=!Frames,r=3] 50

tp @s ^^^1.5


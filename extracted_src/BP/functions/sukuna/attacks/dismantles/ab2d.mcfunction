playanimation @s[scores={move=30..}] animation.heavy_dismantle

scoreboard players set @s[scores={move=5..}] Move 5
scoreboard players set @s[scores={move=1..20}] Camera 5
scoreboard players set @s[scores={move=1..20}] Frames 5

effect @s[scores={move=30..}] levitation 1 25 true
effect @s[scores={move=24..26}] levitation 0 30 true
effect @s[scores={move=30..}] slow_falling 2 1 true

execute as @s[scores={move=28}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999999 0.8 9999999

execute as @s[scores={move=15}] at @s run playsound mob.slash1 @a[r=20] ~~~ 9999999 0.75 9999999

execute as @s[scores={move=15..}] at @s positioned ^^0.5^1 run particle ds:dismantle_stars_charge


execute as @s[scores={move=13..14}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace light_block

execute as @s[scores={move=13..15}] at @s positioned ^^3^1 unless entity @e[name=heavy_dismantle,r=30] run summon ds:projectile ~~~ facing ^^^20 none heavy_dismantle


execute as @s[scores={move=15}] at @s positioned ^^3^1 run summon gg:impact_frame

execute as @s[scores={move=14..16}] at @s positioned ^^3^1 run  tag @e[type=gg:impact_frame] add Frames
execute as @s[scores={move=14..16}] at @s positioned ^^3^1 run scoreboard players set @e[name=heavy_dismantle,c=1] Deleter 24
execute as @s[scores={move=14}] at @s positioned ^^1^1 run effect @a[r=20] blindness 2 1 true
execute as @s[scores={move=11..13}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true
execute as @s[scores={move=15..16}] at @s positioned ^^1^1 run playsound mob.dismantle @a[r=100] ~~~ 999999915 0.5 9999999
execute as @s[scores={move=15..16}] at @s positioned ^^1^1 run playsound mob.slash @a[r=100] ~~~ 999999915 0.5 9999999
execute as @s[scores={move=15..16}] at @s positioned ^^1^1 run playsound mob.shock1 @a[r=100] ~~~ 999999915 1.25 9999999
execute as @s[scores={move=15..16}] at @s positioned ^-3^-3^1 run particle ds:ground_slam2 
execute as @s[scores={move=15..16}] at @s positioned ^^1^1 run particle ds:ground_slam3
execute as @s[scores={move=15..16}] at @s positioned ^3^3^1 run particle ds:ground_slam3

execute as @s[scores={move=15}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15 rotational

execute as @s[scores={move=15}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-300~

tag @s[scores={move=1..4}] remove form2sd
playanimation @s[scores={move=65..}] animation.heavy_dismantle2

scoreboard players set @s[scores={move=5..}] Move 5
scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @s[scores={move=1..}] Frames 5


execute as @s[scores={move=60..}] at @s run scriptevent ds:downfall
execute as @s[scores={move=60}] at @s run particle ds:ground_slam2
execute as @s[scores={move=60}] at @s run particle ds:ground_slam3
execute as @s[scores={move=60}] at @s run playsound mob.bat.takeoff @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=60}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 0.6 9999


execute as @s[scores={move=55}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=55..}] at @s run scriptevent ds:knockback 3

execute as @s[scores={move=64}] at @s run tp @s @s

execute as @s[scores={move=20..55}] at @s run execute as @e[type=!player,r=33,family=!projectile] at @s run tp @s ~~~
execute as @s[scores={move=10..55}] at @s run tp @s @s

execute as @s[scores={move=50}] at @s run playsound music.ring @s ~~1~ 99999 1.5 99999


execute as @s[scores={move=56}] at @s anchored eyes run camera @s set minecraft:free  pos ^^-0.4^2 facing ~~-0.2~
execute as @s[scores={move=25..55}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 in_sine pos ^^-0.4^2 facing ~~-0.2~

title @s[scores={move=54},tag=!impactframesoff] title 
title @s[scores={move=53},tag=!impactframesoff] title 
title @s[scores={move=52},tag=!impactframesoff] title 
title @s[scores={move=51},tag=!impactframesoff] title 
title @s[scores={move=50},tag=!impactframesoff] title 
title @s[scores={move=49},tag=!impactframesoff] title §l

execute as @s[scores={move=26..55}] at @s run particle ds:cutscene_black1
execute as @s[scores={move=26..55}] at @s run particle ds:cutscene_black3 ~~0.15~

execute as @s[scores={move=15..17}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace light_block

execute as @s[scores={move=20}] at @s run camera @s set minecraft:free pos ^-16^2^12 facing ^^^12

execute as @s[scores={move=22}] at @s run summon gg:impact_frame
execute as @s[scores={move=21}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=19}] at @s run summon gg:impact_frame
execute as @s[scores={move=18}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=20}] at @s positioned ^-9^^13 run function sukuna/attacks/heavy_dismantle_v2
execute as @s[scores={move=19}] at @s positioned ^-4^^14 run function sukuna/attacks/heavy_dismantle_v2
execute as @s[scores={move=18}] at @s positioned ^^^15 run function sukuna/attacks/heavy_dismantle_v2
execute as @s[scores={move=17}] at @s positioned ^4^^14 run function sukuna/attacks/heavy_dismantle_v2
execute as @s[scores={move=16}] at @s positioned ^9^^13 run function sukuna/attacks/heavy_dismantle_v2

tag @s[scores={move=1..2}] remove form2se
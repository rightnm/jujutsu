playanimation @s[scores={cutscene=180}] animation.playful_cloud.sharpen

tag @s[scores={cutscene=1..2}] remove wepswitch

scoreboard players set @s Move 5
scoreboard players set @s Camera 5

execute as @s[scores={cutscene=180..}] at @s run tp @s @s
title @s[tag=!impactframesoff,scores={cutscene=42..}] title 
camera @s[scores={cutscene=30}] fade time 0.4 0.25 0.25 color 0 0 0

camera @s[scores={cutscene=180..}] fade time 0 0.1 0.1 color 0 0 0
execute as @s[scores={cutscene=179}] at @s run camera @s set minecraft:free pos ^ ^0.15 ^1.5 facing ~~~
execute as @s[scores={cutscene=178}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_sine pos ^ ^-0.2 ^1.5  facing ~~0.2~

execute as @s[scores={cutscene=159}] at @s run playsound mob.sharpen1 @a[r=1000] ~~~ 99999 0.96 9999
execute as @s[scores={cutscene=136..159}] at @s anchored eyes run particle ds:parry1 ^^-0.35^0.44
execute as @s[scores={cutscene=136..159}] at @s anchored eyes run particle ds:parry2 ^^-0.35^0.44
execute as @s[scores={cutscene=136..144}] at @s anchored eyes run particle ds:parry3 ^^-0.35^0.44
execute as @s[scores={cutscene=136..159}] at @s run camerashake add @a[r=20] 0.1 0.15

execute as @s[scores={cutscene=110}] at @s run playsound mob.sharpen2 @a[r=1000] ~~~ 99999 1 9999
execute as @s[scores={cutscene=85..110}] at @s anchored eyes run particle ds:parry1 ^^-0.35^0.44
execute as @s[scores={cutscene=85..110}] at @s anchored eyes run particle ds:parry2 ^^-0.35^0.44
execute as @s[scores={cutscene=85..94}] at @s anchored eyes run particle ds:parry3 ^^-0.35^0.44
execute as @s[scores={cutscene=85..110}] at @s run camerashake add @a[r=20] 0.1 0.15

execute as @s[scores={cutscene=159}] at @s anchored eyes run camera @s set minecraft:free pos ^-2 ^-0.85 ^2  facing ~~0.2~
execute as @s[scores={cutscene=110}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^-2 facing ~~-0.5~

camera @s[scores={cutscene=80}] fade time 0.45 0.5 0.25 color 0 0 0
execute as @s[scores={cutscene=71}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-0.35 ^1.5 facing ~~~
execute as @s[scores={cutscene=70}] at @s anchored eyes run camera @s set minecraft:free ease 3 in_sine pos ^ ^-0.25 ^0.8  facing ~~~
event entity @s[scores={cutscene=1..70}] playful_cloudtextureoff

clear @s[scores={cutscene=70}] ds:playful_cloud 0 1
give @s[scores={cutscene=69}] ds:playful_cloud_sharpened

scoreboard players set @s[scores={cutscene=1..70},type=!player] phase 2

scoreboard players set @s[scores={cutscene=20..25}] cutscene 3


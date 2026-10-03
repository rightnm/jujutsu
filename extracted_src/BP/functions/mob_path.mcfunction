execute as @s[tag=!big] at @s run particle ds:flashstep1 ~~~
execute as @s[tag=!big] at @s run particle ds:flashstep2 ~~~
execute as @s[tag=big] at @s run particle ds:agito_dash1 ~~~
execute as @s[tag=big] at @s run particle ds:agito_dash2 ~~~
execute as @s[family=hero] run tp @s @e[scores={combat=1..},rm=9,r=80,c=1,family=!hero,tag=!sorcerer,tag=!Frames]
execute as @s[family=hero] run tp @s @e[scores={combat=1..},rm=9,r=80,c=1,tag=curse,tag=!Frames]
execute as @s[family=hero] run tp @s @e[scores={combat=1..},rm=9,r=80,c=1,tag=sukuna,tag=!Frames]

execute as @s[family=neutral] run tp @s @e[scores={combat=1..},rm=9,r=80,c=1,tag=!Frames]

execute as @s[family=villain] run tp @s @e[scores={combat=1..},rm=9,r=80,c=1,tag=!Frames]
scoreboard players set @e[tag=!Frames,r=5] Stun 7
particle ds:flashstep1 ~~~
playsound mob.enderdragon.flap @a[r=50] ~~1~ 99999 2 99999
scoreboard players set @s Mode 0
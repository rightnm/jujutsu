playanimation @s[scores={move=40..41}] animation.bluelemon.takedown
scoreboard players set @s[type=player] Frames 6
scoreboard players set @s[type=player] Move 6

execute as @s[scores={move=31..},type=!player] at @s run tp @s ~~~ facing @e[family=!heroic,c=1]
execute as @s[scores={move=31}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~~ 99999 1.25 99999

execute as @s[scores={move=12..}] at @s if block ~~-0.2~ air run scriptevent ds:downfall

execute as @s[scores={move=12..30}] at @s run scriptevent ds:knockback 3

execute as @s[scores={move=34},type=!player] at @s run particle ds:parrymarker ~~1~
execute as @s[scores={move=34},type=!player] at @s run playsound mob.flash @a[r=300] ~~~ 99999 1.2 99999

execute as @s[scores={move=31}] at @s run particle ds:leap
execute as @s[scores={move=31}] at @s run particle ds:ground_slam2

execute as @s[scores={move=6..30}] at @s if entity @e[family=!heroic,r=4,tag=!Frames,c=1] run tp @s ~~~
execute as @s[scores={move=6..30}] at @s run tp @e[family=!heroic,r=4,tag=!Frames,c=1] ^^^1 facing @s
execute as @s[scores={move=6..30}] at @s if entity @e[family=!heroic,r=4,tag=!Frames,c=1] run scoreboard players remove @s move 1

execute as @s[scores={move=6..12},type=!player] at @s run execute as @a[scores={punch=1..},r=7,tag=!Frames] at @s anchored eyes positioned ^^^0.5 run function parry


execute as @s[scores={move=6..10}] at @s run scoreboard players set @e[family=!heroic,c=1,r=4,tag=!Frames] knockdown 25
execute as @s[scores={move=6..10}] at @s run scoreboard players set @e[family=!heroic,c=1,r=4,tag=!Frames] Hit 3
execute as @s[scores={move=6..10}] at @s run damage @e[family=!heroic,c=1,r=4,tag=!Frames] 10 suicide
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run playanimation @s animation.bluelemon.takedown2
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:crater2
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:dirt2
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:rubble3
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:flowingwater_up1
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:flowingwater_up2
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run playsound mob.shock1 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:invert
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run summon gg:impact_frame


execute as @s[scores={move=6..10},type=!player] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run scoreboard players set @s Stun 40
execute as @s[scores={move=6..10}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run scoreboard players set @s move 1001

execute as @s[scores={move=1000..}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:flowingwater_up1
execute as @s[scores={move=1000..}] at @s if entity @e[family=!heroic,c=1,r=4,tag=!Frames] run particle ds:flowingwater_up2


scoreboard players set @s[scores={move=980..985}] move 3
tag @s[scores={move=1..3}] remove wep3
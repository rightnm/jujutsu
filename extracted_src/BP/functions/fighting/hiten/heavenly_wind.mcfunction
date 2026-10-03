playanimation @s[scores={move=50..}] animation.hiten.ab4

tag @s[scores={move=1..2}] remove wep4

execute as @s[scores={move=49..}] at @s run scriptevent ds:downfall

scoreboard players set @s[scores={move=1..}] Move 6
scoreboard players set @s[scores={move=1..}] Frames 6
scoreboard players set @s[scores={move=1..48}] Camera 6

execute as @s[scores={move=48}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=48}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=48}] at @s run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=48}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=48}] at @s run playsound mob.bat.takeoff @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=48}] at @s run playsound random.explode @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=48}] at @s run playsound random.explode @a[r=25] ~~~ 9999 1 9999
execute as @s[scores={move=48}] at @s run playsound mob.wither.break_block @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=48}] at @s run particle ds:ground_slam1
execute as @s[scores={move=48}] at @s run particle ds:ground_slam2
execute as @s[scores={move=48}] at @s run particle ds:crater
execute as @s[scores={move=48}] at @s run particle ds:rubble3
execute as @s[scores={move=48}] at @s run particle ds:leap
execute as @s[scores={move=48}] at @s run particle ds:pushed_up1
execute as @s[scores={move=47}] at @s run tp @s ~~25~


execute as @s[scores={move=46}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=46}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=46}] at @s run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=46}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=46}] at @s run playsound mob.bat.takeoff @a[r=25] ~~~ 9999 1.5 9999

execute as @s[scores={move=1..46}] at @s run tp @s ~~~

execute as @s[scores={move=49..}] at @s run effect @s clear speed
execute as @s[scores={move=48}] at @s run camera @s set minecraft:follow_orbit
execute as @s[scores={move=46}] at @s run effect @s speed 1 0 true
execute as @s[scores={move=35}] at @s run effect @s speed 1 1 true
execute as @s[scores={move=33}] at @s run effect @s speed 1 2 true
execute as @s[scores={move=31}] at @s run effect @s speed 1 3 true
execute as @s[scores={move=29}] at @s run effect @s speed 1 4 true
execute as @s[scores={move=26}] at @s run effect @s speed 1 5 true
execute as @s[scores={move=24..25}] at @s run effect @s clear speed
execute as @s[scores={move=24..25}] at @s run effect @s slowness 1 2 true


execute as @s[scores={move=26}] at @s run tp @s @s
execute as @s[scores={move=23..24}] at @s run camera @s set minecraft:free pos ^^4^12 facing ~~2~

execute as @s[scores={move=24}] at @s run camera @s clear

execute as @s[scores={move=25}] at @s run tp @s ~~-25~
execute as @s[scores={move=20..25}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=20..25}] at @s unless block ~~~ air run tp @s ~~1~

execute as @s[scores={move=24}] at @s if block ~~-1~ air run spreadplayers ~ ~ 0 1 @s
execute as @s[scores={move=24}] at @s run particle ds:rubble
execute as @s[scores={move=23}] at @s run particle ds:fissure3
execute as @s[scores={move=24}] at @s run camerashake add @a[r=50] 4 0.1 rotational
execute as @s[scores={move=24}] at @s run playsound mob.shock2 @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=24}] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound mob.slash @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run playsound mob.wind @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind1
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind2
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind3
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind4
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind5
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind6
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind7
execute as @s[scores={move=24}] at @s run particle ds:heavenly_wind8
execute as @s[scores={move=24}] at @s run particle ds:demons_descent1
execute as @s[scores={move=24}] at @s run particle ds:demons_descent2
execute as @s[scores={move=24}] at @s run particle ds:demons_descent3
execute as @s[scores={move=24}] at @s run particle ds:demons_descent5
execute as @s[scores={move=24}] at @s run particle ds:demons_descent6
execute as @s[scores={move=24}] at @s run particle ds:demons_descent8
execute as @s[scores={move=23}] at @s run particle ds:crater3
execute as @s[scores={move=24}] at @s run particle ds:large_impact1
execute as @s[scores={move=24}] at @s run particle ds:large_impact2
execute as @s[scores={move=24}] at @s run scoreboard players set @e[tag=!Frames,r=10] knockdown 25
execute as @s[scores={move=24}] at @s run scoreboard players add @e[tag=!Frames,r=10] Evade 15
execute as @s[scores={move=24}] at @s run scoreboard players set @e[tag=!Frames,r=10] Hit 4
execute as @s[scores={move=24}] at @s run scoreboard players operation @e[tag=!Frames,r=10] damage += @s damageadd
execute as @s[scores={move=24}] at @s run damage @e[tag=!Frames,r=10] 30 override
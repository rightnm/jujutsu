playanimation @s[scores={move=25}] animation.rushing_cleave
tag @s[scores={move=1..3}] remove wep2s2

scoreboard players set @s[scores={move=20..,Stun=1..}] move 2

scoreboard players set @s[scores={move=1..10}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=5..11}] Camera 5

execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a ~~~ 1 0.4
execute as @s[scores={move=10}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 2 
execute as @s[scores={move=10}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.1 2.5
execute as @s[scores={move=10}] at @s run playsound mob.blaze.shoot @a ~~~ 0.15 3
execute as @s[scores={move=10}] at @s run playsound mob.bat.takeoff @a ~~~ 0.2 3
execute as @s[scores={move=10}] at @s run camerashake add @a[r=10] 0.25 0.1 

execute as @s[scores={move=9}] at @s run playsound mob.shock1 @a ~~~ 1 3
execute as @s[scores={move=9}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2
execute as @s[scores={move=9}] at @s run playsound mob.bass @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=5..9}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=9}] at @s run particle ds:rubble3 ~~1~
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ~~1~

execute as @s[scores={move=5..9}] at @s run scoreboard players add @e[tag=!Frames,r=4] Hit 0
execute as @s[scores={move=5..9}] at @s run execute as @e[tag=!Frames,r=4,scores={Hit=0}] at @s run function sukuna/attacks/cleave_combat/cleave_rush


execute as @s[scores={move=1..4}] at @s run tp @s ~~~

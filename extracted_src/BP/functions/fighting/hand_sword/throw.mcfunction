
playsound mob.witch.throw @a[r=50] ~~~ 999999 3 999999
scoreboard players add @e[tag=!Frames,r=2.9] Stun 33
scoreboard players add @e[tag=!Frames,r=2.9] Evade 15
scoreboard players add @e[tag=!Frames,r=2.9] Hit 3
execute as @e[tag=!Frames,r=2.9] at @s run particle ds:heavy_impact2 ~~1~
execute as @e[tag=!Frames,r=2.9] at @s run playsound mob.sword @a[r=100] ~~~ 99999 3 99999
execute as @e[tag=!Frames,r=2.9] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 3.3 99999
damage @e[tag=!Frames,r=2.9] 10 override

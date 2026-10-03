
particle ds:large_impact1 ~~1~
particle ds:large_impact2 ~~1~
scoreboard players set @s[tag=!Frames] Hit 10
scoreboard players set @s[tag=!Frames] Stun 40
scoreboard players add @s[type=!player,tag=!Frames] Mode 15
scoreboard players add @s[tag=!Frames] Evade 8
playsound mob.slice1 @a[r=100] ~~~ 99999 0.87 9999
playsound mob.slice @a[r=100] ~~~ 99999 0.7 99999
playsound mob.sword @a[r=100] ~~~ 9999 1.25 9999
particle ds:heavy_impact2 ~~1~
particle ds:cleave_aureole ~~1~
damage @s[tag=!Frames] 17 override
scoreboard players add @p[tag=sukuna,rm=1] fuga 10
particle ds:rapid_dismantle4 ~~1~
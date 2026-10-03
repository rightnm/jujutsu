

scoreboard players set @s[tag=!Frames] Hit 5
scoreboard players set @s[tag=!Frames] Stun 30
scoreboard players add @s[type=!player,tag=!Frames] Mode 2
scoreboard players add @s[tag=!Frames] Evade 1
playsound mob.sword @a[r=100] ~~~ 0.1 1.25
particle ds:cleave_aureole ~~1~
damage @s[tag=!Frames] 1 override
scoreboard players add @p[tag=sukuna,rm=1] fuga 2
particle ds:rapid_dismantle4 ~~1~
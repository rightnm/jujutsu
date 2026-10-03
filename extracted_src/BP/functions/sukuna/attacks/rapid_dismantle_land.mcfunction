
playanimation @e[name=rapid_dismantle,c=1] animation.dismantle.rapid2
scoreboard players set @s[tag=!Frames] Hit 10
scoreboard players set @s[tag=!Frames] Stun 40
scoreboard players add @s[type=!player,tag=!Frames] Mode 25
scoreboard players add @s[tag=!Frames] Evade 30
playsound mob.slice1 @a[r=100] ~~~ 9999 1.15 9999
playsound mob.slice @a[r=100] ~~~ 9999 1.25 9999
particle ds:heavy_impact2 ~~1~
particle ds:cleave_aureole ~~1~
damage @s[tag=!Frames] 40
scoreboard players add @p[tag=sukuna,rm=1] fuga 15
particle ds:rapid_dismantle4 ~~1~
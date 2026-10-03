
playanimation @e[name=dissect,c=1] animation.dismantle.forwards2
scoreboard players set @s[tag=!Frames] Hit 5
scoreboard players set @s[tag=!Frames] Stun 35
scoreboard players add @s[tag=!Frames] Evade 10
scoreboard players add @s[tag=!Frames,type=!player] Mode 10
playsound mob.slice1 @a[r=100] ~~~ 9999 1.15 9999
particle ds:heavy_impact2 ~~1~
particle ds:dismantle_slashed ~~1~
particle ds:cleave_aureole ~~1~
scoreboard players add @p[tag=sukuna,rm=1] fuga 8
damage @s[tag=!Frames] 30
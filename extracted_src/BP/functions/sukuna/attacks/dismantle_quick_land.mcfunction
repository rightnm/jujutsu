

scoreboard players set @e[tag=!Frames,type=!ds:dismantle_quick,r=2.5] Hit 5
scoreboard players set @e[tag=!Frames,type=!ds:dismantle_quick,r=2.5] Stun 5
scoreboard players add @e[tag=!Frames,type=!ds:dismantle_quick,r=2.5] Evade 5
scoreboard players add @e[tag=!Frames,type=!player,type=!ds:dismantle_quick,r=2.5] Mode 5
execute as @e[tag=!Frames,type=!ds:dismantle_quick,r=2.5] at @s run particle ds:dismantle_hit ~~1~
playsound mob.slice1 @a[r=100] ~~~ 9999 1.5 9999
particle ds:cleave_aureole ~~~
scoreboard players add @p[tag=sukuna,rm=1] fuga 1
damage @e[tag=!Frames,type=!ds:dismantle_quick,r=2.5] 5 override
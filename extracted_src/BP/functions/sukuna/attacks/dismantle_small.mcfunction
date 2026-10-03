damage @e[tag=!Frames,r=3.49,tag=!form1sc] 2 override
scoreboard players add @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form1sc,type=!player] Mode 5
scoreboard players set @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form1sc] Hit 3
scoreboard players add @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form1sc] Evade 4
execute as @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form1sc] at @s run particle ds:dismantle_hit ~~1~
execute as @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form1sc] at @s run particle ds:cleave_aureole ~~1~
execute as @e[tag=!Frames,r=3.49,tag=!form1sc] at @s run playsound mob.slice1 @a[r=100] ~~~ 99999 1.3 99999


execute as @p[tag=sukuna,scores={move=2..},r=50] positioned ^^^3.5 run function sukuna/attacks/dismantle_small




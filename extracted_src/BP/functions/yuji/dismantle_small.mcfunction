damage @e[tag=!Frames,r=3.49,tag=!form3b] 2 override
scoreboard players add @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b,type=!player] Mode 5
scoreboard players add @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b,type=!player] antiheal 5
scoreboard players set @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b] Hit 3
scoreboard players add @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b] Evade 4
execute as @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b] at @s run particle ds:dismantle_hit ~~1~
execute as @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b] at @s run particle ds:soul_cleave3 ~~1~
execute as @e[tag=!Frames,r=3.49,type=!item,type=!xp_orb,family=!projectile,family=!damage,tag=!form3b] at @s run particle ds:soul_cleave6 ~~1~
execute as @e[tag=!Frames,r=3.49,tag=!form3b] at @s run playsound mob.slice1 @a[r=100] ~~~ 99999 1.5 99999


execute as @p[tag=yuji_awakened,scores={move=2..},r=50] positioned ^^^3.5 run function yuji/dismantle_small





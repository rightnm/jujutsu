

scoreboard players set @e[r=11,tag=!Frames,type=!item,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] Hit 10
scoreboard players set @e[r=11,tag=!Frames,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] Stun 40
scoreboard players set @e[r=11,tag=!Frames,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] knockdown 25
scoreboard players add @e[r=11,type=!player,tag=!Frames,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] Mode 15
scoreboard players add @e[r=11,tag=!Frames,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] Evade 15
playsound mob.slice1 @a[r=100] ~~~ 9999 1.15 9999
playsound mob.slice @a[r=100] ~~~ 9999 1.25 9999
playsound random.explode @a[r=100] ~~~ 99999 0.5 99999
playsound random.explode @a[r=100] ~~~ 99999 0.3 99999
playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
particle ds:ground_slam2
particle ds:ground_slam3
particle ds:slam_dust2
particle ds:large_slam1
particle ds:large_slam2
particle ds:large_slam3
particle ds:large_slam4
camerashake add @a[r=20] 0.3 0.15 rotational
particle ds:cleave_aureole ~~1~
damage @e[r=11,tag=!Frames,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] 80 
particle ds:heavy_dismantle4 ~~2~
particle ds:heavy_dismantle4 ~~~
particle ds:heavy_dismantle4 ~~-2~
summon ds:red_reverse ^^^-4
effect @e[r=25,type=!ds:limitless_explosion,type=!xp_orb,family=!projectile,family=!damage,type=!ds:red_reverse] resistance 1 20 true
summon ds:limitless_explosion
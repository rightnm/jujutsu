playanimation @s[scores={move=65}] animation.fireball_charge

tag @s[scores={move=1..2},tag=form3] remove form3

execute as @s[scores={move=3..,Stun=1..}] at @s run function cancel_attack

scoreboard players set @s[scores={move=1..}] Move 4

execute as @s[scores={move=65}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1
execute as @s[scores={move=45}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1
execute as @s[scores={move=25}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1

execute as @s[scores={move=55}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=55}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 9999 0.9 9999
execute as @s[scores={move=55}] at @s run camerashake add @a[r=20] 1 0.15
tag @s[scores={move=55},tag=charge1] remove charge1
tag @s[scores={move=55},tag=charge2] remove charge2
tag @s[scores={move=55},tag=charge3] remove charge3
tag @s[scores={move=55},tag=!charge1] add charge1
scoreboard players set @s[scores={move=41..55},tag=itemUse:ds:flames3] move 10

execute as @s[scores={move=40}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=40}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 9999 0.7 9999
execute as @s[scores={move=40}] at @s run camerashake add @a[r=20] 1 0.15
tag @s[scores={move=40},tag=charge1] remove charge1
tag @s[scores={move=40},tag=charge2] remove charge2
tag @s[scores={move=40},tag=charge3] remove charge3
tag @s[scores={move=40},tag=!charge2] add charge2
scoreboard players set @s[scores={move=26..40},tag=itemUse:ds:flames3] move 10

scoreboard players set @s[scores={move=5..},tag=charge1] ability3 5
scoreboard players set @s[scores={move=5..},tag=charge2] ability3 80
scoreboard players set @s[scores={move=5..},tag=charge3] ability3 200

execute as @s[scores={move=25}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=25}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 9999 0.5 9999
execute as @s[scores={move=25}] at @s run camerashake add @a[r=20] 1 0.15
playanimation @s[scores={move=11..25}] animation.fireball_hold
tag @s[scores={move=25},tag=charge1] remove charge1
tag @s[scores={move=25},tag=charge2] remove charge2
tag @s[scores={move=25},tag=charge3] remove charge3
tag @s[scores={move=25},tag=!charge3] add charge3

playanimation @s[scores={move=9},tag=charge1] animation.fireball_shoot1
playanimation @s[scores={move=9},tag=charge2] animation.fireball_shoot2
playanimation @s[scores={move=9},tag=charge3] animation.fireball_shoot3

scoreboard players remove @s[scores={move=5},tag=charge1,type=player] Energy 10
scoreboard players remove @s[scores={move=5},tag=charge2,type=player] Energy 30
scoreboard players remove @s[scores={move=5},tag=charge3,type=player] Energy 100

execute as @s[scores={move=5}] at @s anchored eyes run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=5}] at @s anchored eyes run playsound mob.wither.shoot @a[r=30] ^^1^1 9999 1.75 9999
execute as @s[scores={move=5}] at @s anchored eyes run playsound mob.blaze.shoot @a[r=30] ^^1^1 9999 1.5 9999
execute as @s[scores={move=5}] at @s anchored eyes run summon ds:projectile ^^-0.25^1 facing ^^^20 none Fireball
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:fire_hit1 ^^^1 
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:fire_hit2 ^^^1 
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:fire_hit3 ^^^1 
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:fire_hit4 ^^^1 
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:ground_slam2 ^^^1 
execute as @s[scores={move=5},tag=charge2] at @s anchored eyes run particle ds:fire_downslam6 ^^^1 
execute as @s[scores={move=5},tag=charge3] at @s anchored eyes run particle ds:fire_downslam6 ^^^1 
execute as @s[scores={move=5},tag=charge3] at @s anchored eyes run particle ds:fire_downslam3 ^^^1 
execute as @s[scores={move=5},tag=charge3] at @s anchored eyes run particle ds:fire_downslam4 ^^^1 
execute as @s[scores={move=4..5},tag=charge1] at @s anchored eyes run tag @e[type=ds:projectile,name=Fireball,c=1,r=5] add projectilecharge1
execute as @s[scores={move=4..5},tag=charge2] at @s anchored eyes run tag @e[type=ds:projectile,name=Fireball,c=1,r=5] add projectilecharge2
execute as @s[scores={move=4..5},tag=charge3] at @s anchored eyes run tag @e[type=ds:projectile,name=Fireball,c=1,r=5] add projectilecharge3
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^2^54 run summon ds:projectile FireballTRG
execute as @s[scores={move=3..5}] at @s anchored eyes run scoreboard players set @e[type=ds:projectile,name=Fireball,c=1,r=8] Deleter 40
execute as @s[scores={move=3..5}] at @s anchored eyes positioned ^^2^54 run scoreboard players set @e[type=ds:projectile,name=FireballTRG,c=1,r=55] Deleter 40



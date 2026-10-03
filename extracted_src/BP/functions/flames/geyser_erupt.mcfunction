tag @s[tag=!erupted] add erupted
execute at @s run camerashake add @a[r=40] 4 0.5
execute at @s run particle ds:flame_stars
execute at @s run particle ds:fire_downslam4
execute at @s run particle ds:fire_downslam6
execute at @s run particle ds:fire_impact1
execute at @s run particle ds:fire_impact2
execute at @s run particle ds:fire_impact3
execute at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.5 9999
execute at @s run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 3 9999
scoreboard players set @s Deleter 1001
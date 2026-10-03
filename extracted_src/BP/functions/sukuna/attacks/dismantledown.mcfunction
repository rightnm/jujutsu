damage @e[r=10,tag=!Frames] 32 override
scoreboard players add @e[r=10,tag=!Frames] knockdown 35
scoreboard players add @e[r=10,tag=!Frames] Stun 35
scoreboard players add @e[r=10,tag=!Frames] Evade 20
scoreboard players set @e[r=10,tag=!Frames] Hit 10
execute as @e[r=10,tag=!Frames] at @s run scoreboard players add @p[tag=sukuna,rm=3] fuga 3
particle ds:ground_slam2
particle ds:ground_slam3
particle ds:slam_dust1
particle ds:slam_dust2
particle ds:slam_dust3
particle ds:dirt2
particle ds:dirt3
particle ds:large_slam1
particle ds:large_slam2
particle ds:large_slam3
function damages/slash_damage
camerashake add @a[r=100] 3 0.15 rotational
playsound random.explode @a[r=300] ~~~ 99999 0.5 99999
playsound random.explode @a[r=300] ~~~ 99999 0.85 99999
playsound mob.shock1 @a[r=300] ~~~ 99999 0.5 99999
effect @e[r=30] resistance 1 20 true
summon ds:red_reversal ~~~2
summon ds:red_reversal ~-2~~2
playanimation @s[scores={move=30..}] animation.rapid_dismantle

scoreboard players set @s[scores={move=5..}] Move 5
scoreboard players set @s[scores={move=1..20}] Camera 5

execute as @s[scores={move=28}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999 0.8 9999

execute as @s[scores={move=15}] at @s run playsound mob.slash1 @a[r=20] ~~~ 9999 0.75 9999

execute as @s[scores={move=12..}] at @s positioned ^^0.5^1 run particle ds:dismantle_stars_charge

execute as @s[scores={move=10}] at @s positioned ^^3^1 unless entity @e[name=rapid_dismantle,r=30] run summon ds:projectile ~~~ facing ^^^20 none rapid_dismantle

execute as @s[scores={move=8..10}] at @s positioned ^^3^1 run scoreboard players set @e[name=rapid_dismantle,c=1] Deleter 24
execute as @s[scores={move=10}] at @s positioned ^^1^1 run effect @a[r=20] blindness 2 1 true
execute as @s[scores={move=5..7}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true
execute as @s[scores={move=9..11}] at @s positioned ^^1^1 run playsound mob.dismantle @a[r=100] ~~~ 99999 0.9 9999
execute as @s[scores={move=9..11}] at @s positioned ^^1^1 run playsound mob.slash @a[r=100] ~~~ 99999 0.9 9999
execute as @s[scores={move=9..11}] at @s positioned ^^1^1 run playsound mob.shock1 @a[r=100] ~~~ 99999 1.25 9999
execute as @s[scores={move=9..11}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=9..11}] at @s positioned ^3^1^ run particle ds:ground_slam3
execute as @s[scores={move=9..11}] at @s positioned ^-3^1^ run particle ds:ground_slam3
execute as @s[scores={move=9..10}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.5 0.15 rotational

tag @s[scores={move=1..4}] remove form2s
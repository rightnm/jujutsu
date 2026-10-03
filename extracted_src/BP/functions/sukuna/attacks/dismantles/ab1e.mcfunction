playanimation @s[scores={move=40..}] animation.dismantle_backwards

scoreboard players set @s[scores={move=16..}] Move 5
scoreboard players set @s[scores={move=14..25}] Camera 5

execute as @s[scores={move=39}] at @s run particle ds:leap ~~-1~
execute as @s[scores={move=39}] at @s run particle ds:rubble3 ~~-1~
execute as @s[scores={move=39}] at @s run particle ds:ground_slam2 ~~-1~
execute as @s[scores={move=39}] at @s run particle ds:bounce ~~-1~
execute as @s[scores={move=38..39}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=38..39}] at @s run playsound mob.bat.takeoff @a[r=25] ~~~ 0.25 1.25
execute as @s[scores={move=38..39}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=38..39}] at @s run camerashake add @a[r=5] 0.25 0.20

execute as @s[scores={move=34..39}] at @s run scriptevent ds:knockback -3.5

execute as @s[scores={move=29..30}] at @s run scriptevent ds:knockback 5

execute as @s[scores={move=22..25}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=22..25}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=22..25}] at @s if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=15..25}] at @s run tp @s @s


execute as @s[scores={move=20}] at @s positioned ^^1^1 run summon ds:projectile ~~~ facing ^^^20 none wide_dismantle
execute as @s[scores={move=19..20}] at @s positioned ^^1^1 run scoreboard players set @e[name=wide_dismantle,c=1] Deleter 25
execute as @s[scores={move=20}] at @s positioned ^^1^1 run effect @a[r=20] blindness 2 1 true
execute as @s[scores={move=17}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true
execute as @s[scores={move=21}] at @s positioned ^^1^1 run playsound mob.dismantle @a[r=100] ~~~ 99999 0.9 9999
execute as @s[scores={move=21}] at @s positioned ^^1^1 run playsound mob.slash @a[r=100] ~~~ 99999 0.9 9999
execute as @s[scores={move=21}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=21}] at @s positioned ^3^1^ run particle ds:ground_slam3
execute as @s[scores={move=21}] at @s positioned ^-3^1^ run particle ds:ground_slam3
execute as @s[scores={move=20}] at @s positioned ^^1^1 run camerashake add @a[r=20] 4 0.15 rotational

tag @s[scores={move=1..2}] remove form1se
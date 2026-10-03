playanimation @s[scores={move=35..}] animation.dissect

scoreboard players set @s[scores={move=16..}] Move 5
scoreboard players set @s[scores={move=14..16}] Camera 5

execute as @s[scores={move=33..35}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=33..35}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=33..35}] at @s run playsound mob.bat.takeoff @a[r=25] ~~~ 0.25 1.25
execute as @s[scores={move=33..35}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=33..35}] at @s run camerashake add @a[r=5] 0.25 0.15

execute as @s[scores={move=25..27}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=25..27}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=25..27}] at @s run playsound mob.bat.takeoff @a[r=25] ~~~ 0.25 1.25
execute as @s[scores={move=25..27}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 0.25 2
execute as @s[scores={move=25..27}] at @s run camerashake add @a[r=5] 0.25 0.15

execute as @s[scores={move=34}] at @s run scriptevent ds:knockback -7

execute as @s[scores={move=27..32}] at @s run scriptevent ds:knockback 2
effect @s[scores={move=16..32}] slow_falling 2 1 true


execute as @s[scores={move=14..15}] at @s run tp @s @s


execute as @s[scores={move=15..23}] at @s positioned ^^^4 run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cDissect!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}


execute as @s[scores={move=16}] at @s run scoreboard objectives add dismantle_rot dummy
execute as @s[scores={move=15}] at @s positioned ^^1^1 run summon ds:projectile ~~~ facing ^^^20 none dissect 
execute as @s[scores={move=14..15}] at @s positioned ^^1^1 run scoreboard players set @e[name=dissect,c=1] Deleter 25
execute as @s[scores={move=15}] at @s positioned ^^1^1 run effect @a[r=20] blindness 2 1 true
execute as @s[scores={move=13}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true
execute as @s[scores={move=23}] at @s positioned ^^1^1 run playsound mob.kai @a[r=100] ~~~ 99999 1 9999
execute as @s[scores={move=15}] at @s positioned ^^1^1 run playsound mob.slash @a[r=100] ~~~ 99999 1.25 9999
execute as @s[scores={move=15}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.1 0.08

tag @s[scores={move=1..2}] remove form1sd
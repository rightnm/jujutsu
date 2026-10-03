playanimation @s[scores={move=35..}] animation.magroic.ab1

execute as @s[scores={move=1..}] at @s run tp @s ~~~ facing @p[m=!c]
execute as @s[scores={move=35..}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=35..}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=35..}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=35..}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999

execute as @s[scores={move=29}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=29}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=29}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=29}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999


execute as @s[scores={move=30}] at @s run execute as @p[r=200] at @s run spreadplayers ~ ~ 5 6 @e[type=ds:magroic,scores={move=29..31},c=1]

execute as @s[scores={move=27}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=27}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=25}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 2.6 99999
execute as @s[scores={move=25}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.6 99999
execute as @s[scores={move=24..25}] at @s run tp @s ^^^7.5
execute as @s[scores={move=24..28}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=24..25}] at @s run damage @a[tag=!Frames,r=6] 3 suicide 
execute as @s[scores={move=24..25}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=24..25}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=24..25}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=24..25}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=24..25}] at @s run particle ds:mag_tp2 ^^1^-1 



execute as @s[scores={move=12}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=12}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=12}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=12}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999


execute as @s[scores={move=7}] at @s run execute as @p[r=200] at @s run spreadplayers ~ ~ 25 26 @e[type=ds:magroic,scores={move=6..7},c=1]

execute as @s[scores={move=4..5}] at @s run effect @s slowness 3 2 true
execute as @s[scores={move=5}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=5}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=5}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=5}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999
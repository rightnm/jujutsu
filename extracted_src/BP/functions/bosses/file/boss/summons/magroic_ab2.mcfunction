playanimation @s[scores={move=30..}] animation.magroic.ab1b

execute as @s[scores={move=17..}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=18}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=18}] at @s run particle ds:parrymarker ~~4~


execute as @s[scores={move=16}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 2.6 99999
execute as @s[scores={move=16}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.6 99999
execute as @s[scores={move=14..15}] at @s run tp @s ^^^7.5
execute as @s[scores={move=14..15}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=14..15}] at @s run damage @a[tag=!Frames,r=6] 5 suicide 
execute as @s[scores={move=14..15}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=14..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=14..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=14..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=14..15}] at @s run particle ds:mag_tp2 ^^1^-1 
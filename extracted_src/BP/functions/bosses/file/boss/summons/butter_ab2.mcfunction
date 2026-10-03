playanimation @s[scores={move=40..}] animation.butterjaffa.ab2

tp @s[type=!player] ~~~ facing @p[m=!c]

execute as @s[scores={move=31}] at @s run particle ds:butter2 ^^1^1 
execute as @s[scores={move=31}] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 9999 2 9999

execute as @s[scores={move=22..29},type=player] at @s positioned ^^^15 run execute as @e[type=!ds:projectile,family=!projectile,family=!heroic,type=!item,type=!xp_orb,r=14.9] at @s run tp @e[tag=butter_bladeab2,c=1] ~~10~
execute as @s[scores={move=22..29},type=!player] at @s run execute as @e[type=!ds:projectile,family=!projectile,family=!heroic,type=!item,type=!xp_orb,r=200] at @s run tp @e[type=ds:butterjaffa,c=1] ~~10~



execute as @s[scores={move=19..22}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=19..22}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=19..22}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=19..22}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=19..22}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=19..22}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=19..22}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=19..22}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=22..23}] at @s run playsound mob.flash @a ~~~ 0.2 2
execute as @s[scores={move=22..23}] at @s run particle ds:butter_tp 

execute as @s[scores={move=18}] at @s run particle ds:butter_slam
execute as @s[scores={move=18}] at @s run particle ds:butter1
execute as @s[scores={move=18}] at @s run particle ds:butter2
execute as @s[scores={move=18}] at @s run particle ds:butter3
execute as @s[scores={move=18}] at @s run particle ds:butter4
execute as @s[scores={move=18}] at @s run playsound random.explode @a[r=200] ~~~ 99999 1.2 99999
execute as @s[scores={move=18}] at @s run  camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=18}] at @s run damage @e[tag=!Frames,tag=!butter_bladeab2,family=!heroic,r=7] 10 suicide
execute as @s[scores={move=18}] at @s run scoreboard players set @e[tag=!Frames,tag=!butter_bladeab2,family=!heroic,r=7] knockdown 25
execute as @s[scores={move=18}] at @s run scoreboard players set @e[tag=!Frames,tag=!butter_bladeab2,family=!heroic,r=7] Hit 3
execute as @s[scores={move=1..18}] at @s run tp @s ~~~

tag @s[scores={move=1..10}] remove butter_bladeab2
playanimation @s[scores={move=75..}] animation.primesoul.scythe_slam




execute as @s[scores={move=51..},type=!player] run tp @s ~ 260 ~ facing @p[m=!c]
execute as @s[scores={move=30..50},type=!player] run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=70..},type=player] run scriptevent ds:downfall

execute as @s[scores={move=1..69},type=player] run tp @s @s
execute as @s[scores={move=68},type=player] run tp @s ~ ~40 ~ 
execute as @s[scores={move=50},type=player] run tp @s ~ ~-40 ~ 

execute as @s[scores={move=75}] run playsound portal.trigger @a ~~~ 99999 3 99999
execute as @s[scores={move=75}] run particle ds:rift_charging1 ~~1~

execute as @s[scores={move=30..69}] run camera @s set minecraft:free pos ^^15^-10 facing ~~~
execute as @s[scores={move=1..25}] run camera @s clear

execute as @s[scores={move=52},type=!player] run playsound mob.flash @a[r=200] ~~~ 9999 0.95 9999
execute as @s[scores={move=52},type=!player] run particle ds:parrymarker

execute as @s[scores={move=50},type=!player] run execute as @p[m=!c,r=200] at @s run tp @e[type=ds:primesoul,scores={move=49..50},c=1] ^^^2 
execute as @s[scores={move=48..51},type=!player] run execute as @e[tag=!Frames,type=!ds:primesoul,r=20,scores={punch=1..2}] at @s anchored eyes positioned ^^^1 run function parry

scoreboard players set @s Frames 10
scoreboard players set @s Move 10
scoreboard players set @s Camera 10
execute as @s[scores={move=48}] run damage @e[tag=!Frames,type=!ds:primesoul,r=20] 30 suicide
execute as @s[scores={move=48}] run scoreboard players set @e[tag=!Frames,type=!ds:primesoul,r=20] Hit 7
execute as @s[scores={move=48}] run summon ds:mahoraga_knockback2 
execute as @s[scores={move=48}] run effect @e[tag=!Frames,type=!ds:primesoul,r=20] levitation 1 25 true
execute as @s[scores={move=38}] run effect @e[tag=!Frames,type=!ds:primesoul,r=200] levitation 0 30 true



execute as @s[scores={move=50},type=!player] run particle ds:demons_descent4 ~ 240.25 ~
execute as @s[scores={move=50},type=!player] run particle ds:reality_crater1 ~ 240.25 ~
execute as @s[scores={move=50},type=!player] run particle ds:reality_crater2 ~ 240.25 ~
execute as @s[scores={move=50},type=!player] run particle ds:crash ~ 240.25 ~

execute as @s[scores={move=50},type=player] run particle ds:demons_descent4 ~ ~ ~
execute as @s[scores={move=50},type=player] run particle ds:reality_crater1 ~ ~ ~
execute as @s[scores={move=50},type=player] run particle ds:reality_crater2 ~ ~ ~
execute as @s[scores={move=50},type=player] run particle ds:crash ~ ~ ~

execute as @s[scores={move=48}] run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=48}] run playsound mob.shock1 @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=48}] run playsound mob.distort2 @a[r=200] ~~~ 99999 5 99999
execute as @s[scores={move=48}] run playsound mob.crash @a[r=200] ~~~ 99999 1.5 99999

tag @s[scores={move=1..3}] remove scytheranged2

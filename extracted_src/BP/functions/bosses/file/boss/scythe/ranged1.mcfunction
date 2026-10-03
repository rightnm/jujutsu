playanimation @s[scores={move=40..}] animation.primesoul.scythe_ranged1

execute as @s[scores={move=1..},type=!player] at @s run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=40}] at @s run playsound portal.trigger @a[r=200] ~~2~ 9999 5 9999

scoreboard players set @s[type=player,scores={move=30..32}] Frames 10

execute as @s[scores={move=30}] at @s run particle ds:invert
execute as @s[scores={move=30}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=30}] at @s run playsound mob.distort2 @a ~~~  99999 6 99999
execute as @s[scores={move=30}] at @s run playsound mob.distort3 @a ~~~  99999 1 99999
execute as @s[scores={move=30}] at @s run playsound mob.slash @a ~~~  99999 1 99999
execute as @s[scores={move=30},type=!player] at @s run summon ds:projectile ^^^1.5 facing @p[m=!c] none "realityfangs" 
execute as @s[scores={move=30},type=player] at @s run summon ds:projectile ^^^1.5 facing ^^^10 none "realityfangs" 

execute as @s[scores={move=4..7},type=!player] run scoreboard objectives add sight dummy

execute as @s[scores={move=7},type=!player] run scoreboard players add @s sight 1
scoreboard players set @s[scores={move=4..6,sight=0..1,phase=1..2},type=!player] move 41
scoreboard players set @s[scores={move=4..6,sight=0..2,phase=3..4},type=!player] move 41
scoreboard players set @s[scores={move=4..6,sight=0..4,phase=5..},type=!player] move 41

scoreboard players set @s[scores={move=1..3},type=!player] sight 0
tag @s[scores={move=1..3}] remove scytheranged1

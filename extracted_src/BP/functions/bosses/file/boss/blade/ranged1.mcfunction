playanimation @s[scores={move=90..}] animation.primesoul.blade_ranged1

tp @s[type=!player] ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=90}] at @s run playsound portal.trigger @a[r=200] ~~2~ 9999 3 9999

scoreboard players set @s[type=player] Move 6

scoreboard players set @s[type=player] Frames 6

execute as @s[scores={move=51}] at @s run playsound music.blade1 @a[r=200]

execute as @s[scores={move=49..54},type=player] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=49..51},type=player] at @s run tp @s @s
execute as @s[scores={move=51}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=46}] at @s run particle ds:invert
execute as @s[scores={move=47}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=50}] at @s run particle ds:invert
execute as @s[scores={move=50},type=!player] at @s positioned ^^^7 run particle ds:reality_crater1 ~ 240.1 ~ 
execute as @s[scores={move=50},type=!player] at @s positioned ^^^7 run particle ds:reality_crater2  ~ 240.1 ~
execute as @s[scores={move=50},type=player] at @s positioned ^^^7 unless block ~~-1~ air run particle ds:reality_crater1 ~ ~ ~ 
execute as @s[scores={move=50},type=player] at @s positioned ^^^7 unless block ~~-1~ air run particle ds:reality_crater2  ~ ~ ~


execute as @s[scores={move=50}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=50}] at @s run playsound mob.distort2 @a ~~~  99999 6 99999
execute as @s[scores={move=50}] at @s run playsound mob.distort3 @a ~~~  99999 1 99999
execute as @s[scores={move=50}] at @s run playsound mob.slash @a ~~~  99999 1 99999
execute as @s[scores={move=50}] at @s run summon ds:projectile ^^^1.5 facing ^4^^5 none "realityfangs2" 
execute as @s[scores={move=50}] at @s run summon ds:projectile ^^^1.5 facing ^-2^^5 none "realityfangs2" 
execute as @s[scores={move=50}] at @s run summon ds:projectile ^^^1.5 facing ^^^5 none "realityfangs2"
execute as @s[scores={move=50}] at @s run summon ds:projectile ^^^1.5 facing ^2^^5 none "realityfangs2" 
execute as @s[scores={move=50}] at @s run summon ds:projectile ^^^1.5 facing ^-4^^5 none "realityfangs2" 



execute as @s[scores={move=4..7},type=!player] run scoreboard objectives add sight dummy

execute as @s[scores={move=7},type=!player] run scoreboard players add @s sight 1
scoreboard players set @s[scores={move=4..6,sight=0..1,phase=1..2},type=!player] move 91
scoreboard players set @s[scores={move=4..6,sight=0..2,phase=3..4},type=!player] move 91
scoreboard players set @s[scores={move=4..6,sight=0..3,phase=5..},type=!player] move 91

scoreboard players set @s[scores={move=1..3},type=!player] sight 0



tag @s[scores={move=1..3}] remove bladeranged1

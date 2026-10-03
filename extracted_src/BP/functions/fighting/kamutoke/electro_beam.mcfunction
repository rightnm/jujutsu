playanimation @s[scores={move=40..41}] animation.kamutoke_ab4

scoreboard players set @s[scores={move=36..,Stun=1..}] move 3

execute as @s[scores={move=3..}] at @s run scriptevent ds:antiair

scoreboard players set @s[scores={move=5..}] Move 3

execute as @s[scores={move=40}] at @s run playsound beacon.power @a[r=350] ~~~ 99999 2 999999
execute as @s[scores={move=40}] at @s run playsound mob.turbulence @a[r=350] ~~~ 99999 1 999999
execute as @s[scores={move=35}] at @s run playsound mob.shock1 @a[r=350] ~~~ 99999 2 999999
execute as @s[scores={move=35}] at @s run playsound mob.distort3 @a[r=350] ~~~ 99999 1 999999
execute as @s[scores={move=34}] at @s run particle ds:invert ^0.5^1^-0.25
execute as @s[scores={move=35}] at @s run playsound mob.electricity @a[r=200] ~~~ 9999 1 9999
execute as @s[scores={move=5..35}] at @s run playsound mob.electricity @a ~~~ 0.15 3
execute as @s[scores={move=5..35}] at @s run playsound beacon.power @a ~~~ 0.15 2
execute as @s[scores={move=5..35}] at @s run camerashake add @a[r=20] 0.01 0.08 rotational

execute as @s[scores={move=8..35}] at @s run scriptevent ds:lightning 1,1,1, 1,1,1, 0.7,0.7,0.7, 1,1,1, 1,0,0

execute as @s[scores={move=7..35}] at @s anchored eyes run camera @s set minecraft:free ease 0.05 in_sine pos ^1.5^0.5^-1 facing ^^^10 
execute as @s[scores={move=1..6}] at @s anchored eyes run camera @s clear

execute as @s[scores={move=5..35}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run function fighting/kamutoke/beam

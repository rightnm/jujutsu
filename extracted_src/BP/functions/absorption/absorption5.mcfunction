playanimation @s[scores={move=30..31}] animation.absorption.ab5


tag @s[scores={move=1..3}] remove form5
playanimation @s[scores={move=24..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=24..,Stun=1..}] move 3

execute as @s[scores={move=3..}] at @s run scriptevent ds:antiair

scoreboard players set @s[scores={move=5..}] Move 3

scoreboard players set @s[scores={move=21..22}] Frames 5



execute as @s[scores={move=21..}] at @s run playsound mob.electricity @a[r=350] ~~~ 99999 3 999999

execute as @s[scores={move=23}] at @s run playsound mob.shock1 @a[r=350] ~~~ 99999 2 999999
execute as @s[scores={move=23}] at @s run playsound mob.distort3 @a[r=350] ~~~ 99999 1 999999

execute as @s[scores={move=20}] at @s run playsound mob.shock1 @a[r=350] ~~~ 99999 1.5 999999

execute as @s[scores={move=20..23}] at @s run scriptevent ds:lightning 1,0.85,5,  1,1,0,  1,5,0, 0,1,1, 2,2.75,0

execute as @s[scores={move=23}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run particle ds:invert ^0.5^1^-0.25
execute as @s[scores={move=23}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run playsound mob.electricity @a[r=200] ~~~ 9999 1 9999
execute as @s[scores={move=20..22}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run playsound mob.electricity @a ~~~ 0.15 3
execute as @s[scores={move=20..22}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run playsound beacon.power @a ~~~ 0.15 2
execute as @s[scores={move=23}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run particle ds:absorption_ex ^^^1 
execute as @s[scores={move=20..22}] at @s run camerashake add @a[r=20] 0.01 0.08 rotational

scoreboard players remove @s[scores={move=1..10,absorption=1..}] absorption 1

execute as @s[scores={move=22}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run function absorption/bolt
execute as @s[scores={move=20}] at @s anchored eyes positioned ^0.2^-0.25^4.5 run function absorption/bolt
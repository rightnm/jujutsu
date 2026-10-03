scoreboard players set @s[tag=itemUse:ds:deathhorn,scores={wep1=0,Stun=0}] BasicM1 61
scoreboard players set @s[tag=itemUse:ds:deathhorn,scores={wep1=0,Stun=0}] wep1 200


playanimation @s[scores={BasicM1=60..}] animation.primesoul.horn

scoreboard players set @s[scores={BasicM1=15..}] Move 6
scoreboard players set @s[scores={BasicM1=15..17}] Camera 6
execute as @s[scores={BasicM1=15}] at @s run tp @s @s
execute as @s[scores={BasicM1=60}] at @s run playsound raid.horn @a[r=100] ~~~ 99999 0.25 99999
execute as @s[scores={BasicM1=15}] at @s run stopsound @a raid.horn


execute as @s[scores={BasicM1=14..17}] at @s run tp @s @s
execute as @s[scores={BasicM1=14}] at @s  positioned ^8^^5 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={BasicM1=14}] at @s  positioned ^4^^5 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={BasicM1=14}] at @s  positioned ^^^5 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={BasicM1=14}] at @s  positioned ^-4^^5 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={BasicM1=14}] at @s  positioned ^-8^^5 run summon ds:windhorn ~~~ facing ^^^10
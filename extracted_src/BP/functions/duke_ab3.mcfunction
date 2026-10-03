playanimation @s[scores={move=30..}] animation.rising_tempest


effect @s[scores={move=25..}] levitation 1 25 true
effect @s[scores={move=1..24}] levitation 0 10 true
effect @s[scores={move=1..4}] slow_falling 1 1 true

execute as @s[scores={move=5..24}] at @s run tp @s ~~~

execute as @s[scores={move=30..}] at @s run playsound mob.wind @a ~~~ 
execute as @s[scores={move=11..}] at @s run particle ds:wind_levitation

scoreboard players set @s[scores={move=9..12}] Frames 6
execute as @s[scores={move=5..10}] at @s run tp @s ~~~
execute as @s[scores={move=10}] at @s run summon ds:projectile ^^1^1.5 facing ^^^10 none airspear
execute as @s[scores={move=10}] at @s run execute as @p[r=100] at @s run summon ds:projectile airspearTRG
execute as @s[scores={move=8..10}] at @s run scoreboard players set @e[name=airspearTRG,c=1] Deleter 21

execute as @s[scores={move=10}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 3 9999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 3 9999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s run playsound mob.wind @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=25] 2 0.25
execute as @s[scores={move=10}] at @s run particle ds:heavy_impact2 ^^1^1 
execute as @s[scores={move=5..10}] at @s run particle ds:wind_aura ^^1^1 
execute as @s[scores={move=5..10}] at @s run particle ds:wind_aura2 ^^1^1 
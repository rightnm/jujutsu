playanimation @s[scores={move=40..}] animation.duke_stomp

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

scoreboard players set @s[scores={move=10..23}] Frames 5
execute as @s[scores={move=20}] at @s run tp @s @s
execute as @s[scores={move=20}] at @s run summon ds:projectile  ^^^1 facing ^^^20 none windstomp
execute as @s[scores={move=20}] at @s run camerashake add @a[r=35] 2 0.25
execute as @s[scores={move=20}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=20}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=20}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=20}] at @s run particle ds:wind_aura
execute as @s[scores={move=20}] at @s run particle ds:wind_aura2
execute as @s[scores={move=19..20}] at @s run particle ds:dukeparry1 ~~-0.25~
execute as @s[scores={move=20}] at @s run particle ds:dirt0
execute as @s[scores={move=20}] at @s run particle ds:dirt2 ~~0.25~
execute as @s[scores={move=20}] at @s run particle ds:rubble3
execute as @s[scores={move=20}] at @s run particle ds:crater


playanimation @s[scores={move=20..}] animation.benedictus_ab2

execute as @s[scores={move=20}] at @s run particle ds:lightstrike2b ~~1~
execute as @s[scores={move=20}] at @s run tp @s ~~5~
execute as @s[scores={move=20}] at @s run particle ds:lightstrike2b ~~1~

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]
effect @a[r=50] night_vision 1 1 true
execute as @s[scores={move=4..17}] at @s run camerashake add @a[r=100] 0.08 0.08
execute as @s[scores={move=4..17}] at @s run playsound portal.travel @a[r=100] ~~5~ 9999 12 9999
execute as @s[scores={move=4..17}] at @s run playsound mob.wither.spawn @a[r=100] ~~5~ 9999 5 9999
execute as @s[scores={move=4..17}] at @s run summon ds:projectile ^^1^1 facing @p none "lightpellet" 

execute as @s[scores={move=1..4}] at @s run scoreboard players set @s chance 11
execute as @s[scores={move=1..4}] at @s run scoreboard players set @s move 0
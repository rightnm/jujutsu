

playanimation @s[scores={move=43..}] animation.kaiju_curse.kick

execute as @s[scores={move=34}] at @s run playsound mob.heavy_swing @a[r=1500] ~~30~ 9999999 0.8 99999999


execute as @s[scores={move=5..30}] at @s run tp @s ~~~

execute as @s[scores={move=34}] at @s run camerashake add @a[r=500] 3.5 0.15
execute as @s[scores={move=30..32}] at @s positioned ^^^ run summon ds:massive_knockback

execute as @s[scores={move=30..33}] at @s positioned ^^^16 run execute as @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s unless entity @s[scores={knockdown=1..}] run playsound mob.blood1 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=30..33}] at @s positioned ^^^16 run execute as @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s unless entity @s[scores={knockdown=1..}] run playsound mob.shock1 @a[r=100] ~~~ 99999 2.15 99999
execute as @s[scores={move=30..33}] at @s positioned ^^^16 run execute as @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s unless entity @s[scores={knockdown=1..}] run particle ds:large_impact1 ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^16 run execute as @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s unless entity @s[scores={knockdown=1..}] run particle ds:large_impact2 ~~1~


execute as @s[scores={move=30..33}] at @s positioned ^^^16 run damage @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 100
execute as @s[scores={move=30..33}] at @s positioned ^^^16 run scoreboard players set @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] knockdown 85
execute as @s[scores={move=30..33}] at @s positioned ^^^16 run scoreboard players set @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5

execute as @s[scores={move=30..34}] at @s positioned ^^^16 run effect @e[r=24,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] levitation 1 17 true





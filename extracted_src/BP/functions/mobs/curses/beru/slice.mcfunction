playanimation @s[scores={move=20..}] animation.beru.slice
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=15}] at @s run function damages/slash_damage

execute as @s[scores={move=18..}] at @s run tp @s ~~~
execute as @s[scores={move=1..14}] at @s run tp @s ~~~


scoreboard players set @s[scores={move=15..16}] atk 2
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Stun 30
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Evade 20
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Hit 15
execute as @s[scores={move=15}] at @s positioned ^^^5 run damage @e[r=4.99,type=!ds:beru_curse,tag=!Frames] 30 override
execute as @s[scores={move=15}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=20] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slice4 @a[r=20] ~~~ 9999 1.75 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slash1 @a[r=20] ~~~ 9999 2.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run camerashake add @a[r=50] 3 0.15
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^2
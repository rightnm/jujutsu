playanimation @s[scores={move=35..}] animation.beru.kick
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=15}] at @s run function damages/blunt_damage

execute as @s[scores={move=18..}] at @s run tp @s ~~~
execute as @s[scores={move=1..14}] at @s run tp @s ~~~
execute as @s[scores={move=15..17}] at @s run scriptevent ds:knockback 2



execute as @s[scores={move=14..15}] at @s  run summon ds:curse_knockback
execute as @s[scores={move=15..16}] at @s positioned ^^^5 run effect @e[r=4.99,type=!ds:beru_curse,tag=!Frames] levitation 1 11 true
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] knockdown 87
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Evade 20
execute as @s[scores={move=15}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Hit 5
execute as @s[scores={move=15}] at @s positioned ^^^5 run damage @e[r=4.99,type=!ds:beru_curse,tag=!Frames] 20 override
execute as @s[scores={move=15}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=20] ~~~ 9999 0.75 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.shock1 @a[r=20] ~~~ 9999 1.25 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.wither.break_block @a[r=20] ~~~ 9999 0.35 9999
execute as @s[scores={move=15}] at @s positioned ^^^5 run camerashake add @a[r=50] 3 0.15
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^2
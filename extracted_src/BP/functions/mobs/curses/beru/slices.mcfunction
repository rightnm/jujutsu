playanimation @s[scores={move=20..}] animation.beru.slices
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=5..15}] at @s run function damages/slash_damage

execute as @s[scores={move=18..}] at @s run tp @s ~~~
execute as @s[scores={move=1..14}] at @s run tp @s ~~~


scoreboard players set @s[scores={move=5..15}] atk 2
execute as @s[scores={move=5..15}] at @s positioned ^^2^1 run particle ds:beru_slice2
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,type=!ds:beru_curse,tag=!Frames] Stun 30
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,type=!ds:beru_curse,tag=!Frames] Evade 1
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,type=!ds:beru_curse,tag=!Frames] Hit 3
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run damage @e[r=2.99,type=!ds:beru_curse,tag=!Frames] 3 override
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run playsound mob.wither.shoot @a ~~~ 0.15 1.75
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run execute as @e[r=2.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slice4 @a ~~~ 0.15 1.75
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run execute as @e[r=2.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slash1 @a ~~~ 0.15 2.5
execute as @s[scores={move=5..15}] at @s positioned ^^^3 run camerashake add @a[r=50] 3 0.15
execute as @s[scores={move=5..6}] at @s run particle ds:ground_slam2 ^^1^2
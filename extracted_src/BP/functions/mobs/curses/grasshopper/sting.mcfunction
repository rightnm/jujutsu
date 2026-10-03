playanimation @s[scores={move=25}] animation.grasshopper_curse.stinger
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=13}] at @s run function damages/blunt_damage

execute as @s[scores={move=18..}] at @s run tp @s ~~~
execute as @s[scores={move=1..14}] at @s run tp @s ~~~
execute as @s[scores={move=15..17}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=13}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,tag=!Frames] Flourish 5
execute as @s[scores={move=13}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Evade 20
execute as @s[scores={move=13}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,tag=!Frames] Hit 5
execute as @s[scores={move=13}] at @s positioned ^^^3 run damage @e[r=2.99,tag=!Frames] 20 override
execute as @s[scores={move=13}] at @s positioned ^^^3 run effect @e[r=2.99,tag=!Frames] fatal_poison 10 2
execute as @s[scores={move=14}] at @s positioned ^^^3 run playsound mob.sword @a[r=20] ~~~ 9999 0.5 9999
execute as @s[scores={move=13}] at @s positioned ^^^3 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^2
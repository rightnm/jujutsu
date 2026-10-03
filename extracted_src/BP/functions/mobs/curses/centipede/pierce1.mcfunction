playanimation @s[scores={move=30}] animation.centipede.pierce1
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=10}] at @s run function damages/slash_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~

execute as @s[scores={move=10}] at @s positioned ^^^10 run scoreboard players set @e[r=9.99,tag=!Frames,family=!purecurse] Flourish 8
execute as @s[scores={move=10}] at @s positioned ^^^10 run scoreboard players add @e[r=9.99,tag=!Frames,family=!purecurse] Evade 20
execute as @s[scores={move=10}] at @s positioned ^^^10 run scoreboard players set @e[r=9.99,tag=!Frames,family=!purecurse] Hit 5
execute as @s[scores={move=10}] at @s positioned ^^^10 run damage @e[r=9.99,tag=!Frames,family=!purecurse] 20 override entity @s

execute as @s[scores={move=10}] at @s positioned ^^^10 run effect @e[r=9.99,tag=!Frames,family=!purecurse] wither 5 2
execute as @s[scores={move=12}] at @s positioned ^^^10 run playsound mob.sword @a[r=120] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s positioned ^^^10 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=11}] at @s run particle ds:ground_slam2 ^^1^2
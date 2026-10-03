playanimation @s[scores={move=15}] animation.centipede.pierce2
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=6}] at @s run function damages/slash_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~

execute as @s[scores={move=6}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,tag=!Frames,family=!purecurse] Flourish 4
execute as @s[scores={move=6}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames,family=!purecurse] Evade 20
execute as @s[scores={move=6}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,tag=!Frames,family=!purecurse] Hit 5
execute as @s[scores={move=6}] at @s positioned ^^^5 run damage @e[r=4.99,tag=!Frames,family=!purecurse] 6 override entity @s
execute as @s[scores={move=6}] at @s positioned ^^^5 run effect @e[r=4.99,tag=!Frames,family=!purecurse] wither 5 2
execute as @s[scores={move=7}] at @s positioned ^^^5 run playsound mob.sword @a[r=120] ~~~ 9999 1.2 9999
execute as @s[scores={move=6}] at @s positioned ^^^5 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=6}] at @s run particle ds:ground_slam2 ^^1^2
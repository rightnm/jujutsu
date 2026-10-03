playanimation @s[scores={move=20}] animation.mahoraga.quick_barrage

execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run effect @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] resistance 1 2 true
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 1
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 2
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 1 override entity @s
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 2 suicide entity @s
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,tag=curse] 2 suicide entity @s
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run playsound mob.slash1 @a ~~~ 0.25 2.44
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a ~~~ 0.7 1.8
execute as @s[scores={move=6..19}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=12}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=16}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=6}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2
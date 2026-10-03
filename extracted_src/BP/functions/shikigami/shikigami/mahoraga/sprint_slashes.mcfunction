playanimation @s[scores={move=25}] animation.mahoraga.sprint_slashes
execute as @s[scores={move=24..}] at @s run tp @s @s
effect @s[scores={move=22..}] speed 1 7 true

execute as @s[scores={move=21}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Stun 10
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 10
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 8 override entity @s
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 250 suicide entity @s
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,tag=curse] 250 suicide entity @s
execute as @s[scores={move=25}] at @s positioned ^^^4.5 run playsound mob.slash1 @a[r=90] ~~~ 90 1.15 90
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 1.15 90
execute as @s[scores={move=21}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=21}] at @s run particle ds:ground_slam2 ^^1^2

execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Stun 10
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 10
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 8 override entity @s
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 250 suicide entity @s
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,tag=curse] 250 suicide entity @s
execute as @s[scores={move=22}] at @s positioned ^^^4.5 run playsound mob.slash1 @a[r=90] ~~~ 90 0.8 90
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=18}] at @s run particle ds:ground_slam2 ^^1^2


execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Stun 10
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 10
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 8 override entity @s
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,tag=curse] 250 suicide entity @s
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 250 suicide entity @s
execute as @s[scores={move=25}] at @s positioned ^^^4.5 run playsound mob.slash1 @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=13}] at @s run particle ds:ground_slam2 ^^1^2
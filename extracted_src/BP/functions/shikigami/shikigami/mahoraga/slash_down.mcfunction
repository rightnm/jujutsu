playanimation @s[scores={move=20}] animation.mahoraga.slash_down

execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] knockdown 5
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 12
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 6
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 12 entity_attack entity @s
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 350 entity_attack entity @s
execute as @s[scores={move=17}] at @s positioned ^^^4.5 run playsound mob.slash1 @a[r=90] ~~~ 90 0.376 90
execute as @s[scores={move=11}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.6 90
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=8}] at @s run particle ds:ground_slam2 ^^^2
execute as @s[scores={move=8}] at @s run particle ds:ground_slam1 ^^^2
execute as @s[scores={move=8}] at @s run particle ds:ground_slam3 ^^^2
execute as @s[scores={move=8}] at @s run particle ds:leap ^^^2
execute as @s[scores={move=8}] at @s run particle ds:crater2 ^^^2
execute as @s[scores={move=8}] at @s run particle ds:rubble3 ^^^2
execute as @s[scores={move=8}] at @s run particle ds:rubble3 ^^^3
execute as @s[scores={move=8}] at @s run particle ds:rubble3 ^^^4
execute as @s[scores={move=8}] at @s run particle ds:rubble3 ^^^5
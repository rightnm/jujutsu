playanimation @s[scores={move=20}] animation.mahoraga.slash1

execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Stun 10
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 10
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 8 entity_attack entity @s
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 250 entity_attack entity @s
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame,tag=curse] 250 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^4.5 run playsound mob.slash1 @a[r=90] ~~~ 90 0.44 90
execute as @s[scores={move=16}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.8 90
execute as @s[scores={move=13}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=12}] at @s run particle ds:ground_slam2 ^^1^2
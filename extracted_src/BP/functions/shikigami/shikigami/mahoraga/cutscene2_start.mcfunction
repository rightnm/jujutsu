playanimation @s[scores={move=20}] animation.mahoraga.cutscenev1_start
effect @s[scores={move=21..}] speed 1 4 true

execute as @s[scores={move=1..20}] at @s run tp @s ~~~
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=8}] at @s  unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=10}] at @s positioned ^^^5 run damage @e[r=4.99,tag=!Frames,tag=!mahoraga_tame] 16 entity_attack entity @s
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=10}] at @s positioned ^^^5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_slam2 ^^1^2

execute as @s[scores={move=10}] at @s positioned ^^^5 run tag @e[r=4.99,tag=!Frames,tag=!mahoraga_tame,c=1] add mahoraga_cutscene2
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,tag=!Frames,tag=!mahoraga_tame,c=1] cutscene 141
execute as @s[scores={move=9..10}] at @s positioned ^^^5 if entity @e[r=4.99,tag=!Frames,tag=!mahoraga_tame] run tag @s add mahoraga_cutscene2b
execute as @s[scores={move=9..10}] at @s positioned ^^^5 if entity @e[r=4.99,tag=!Frames,tag=!mahoraga_tame] run  scoreboard players set @s cutscene 141


playanimation @s[scores={move=26..}] animation.mahoraga.tp_headslam

execute as @s[scores={move=28}] at @s run execute as @p[r=90] at @s run tp @s @s
execute as @s[scores={move=23..27}] at @s run execute as @p[r=90] at @s run tp @e[family=mahoraga,c=1] ^^^-3.5 facing @s
execute as @s[scores={move=26..27}] at @s run playsound mob.blaze.shoot @a[r=90] ~~~ 999999 2.5 999999
execute as @s[scores={move=26..27}] at @s run particle ds:agito_dash1 ~~-1~
execute as @s[scores={move=26..27}] at @s run particle ds:agito_dash2 ~~~

execute as @s[scores={move=1..25}] at @s run tp @s ~~~ facing @p
execute as @s[scores={move=20}] at @s positioned ^^^7 run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=20}] at @s  positioned ^^^7 run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] knockdown 80
execute as @s[scores={move=20}] at @s positioned ^^^7  run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Evade 12
execute as @s[scores={move=20}] at @s positioned ^^^7  run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=20}] at @s  positioned ^^^7 run damage @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] 12 entity_attack entity @s
execute as @s[scores={move=20}] at @s  positioned ^^^7 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=20}] at @s positioned ^^^7  run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=19}] at @s positioned ^^^7  run particle ds:ground_slam2 ^^1^2
playanimation @s[scores={move=30}] animation.mahoraga.punch1
effect @s[scores={move=21..}] speed 1 4 true

execute as @s[scores={move=1..20}] at @s run tp @s ~~~
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=20}] at @s  unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=20}] at @s positioned ^^^7run damage @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] 11 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^7run effect @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] levitation 1 25 true
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=20}] at @s positioned ^^^7run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2
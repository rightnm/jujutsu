playanimation @s[scores={move=27}] animation.mahoraga.airswipe

execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=20}] at @s unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Evade 6
execute as @s[scores={move=20}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=20}] at @s positioned ^^^7run damage @e[r=6.99,tag=!Frames,tag=!mahoraga_tame] 6 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.blaze.shoot @a[r=90] ~~~ 90 1.15 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.35 90
execute as @s[scores={move=20}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=20}] at @s positioned ^^^7run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2


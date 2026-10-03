playanimation @s[scores={move=25}] animation.finger_bearer.punch1
effect @s[scores={move=16..}] speed 1 2 true

execute as @s[scores={move=1..15}] at @s run tp @s ~~~

execute as @s[scores={move=15}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Stun 30
execute as @s[scores={move=15}] at @s  unless entity @e[scores={ab=1..},r=10] run summon ds:boss_knockback1
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Evade 16
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Hit 8
execute as @s[scores={move=15}] at @s positioned ^^^3 run damage @e[r=2.99,tag=!Frames] 8 entity_attack entity @s
execute as @s[scores={move=15}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=15}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=15}] at @s positioned ^^^3 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.85 90
execute as @s[scores={move=15}] at @s positioned ^^^3 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.95 90
execute as @s[scores={move=15}] at @s positioned ^^^3 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=14}] at @s run particle ds:ground_slam2 ^^1^2
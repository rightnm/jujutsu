playanimation @s[scores={move=35}] animation.finger_bearer.punch2
effect @s[scores={move=29..}] speed 1 4 true

execute as @s[scores={move=1..28}] at @s run tp @s ~~~
execute as @s[scores={move=28}] at @s run function damages/blunt_damage
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Stun 30
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Evade 29
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Hit 8
execute as @s[scores={move=28}] at @s positioned ^^^3 run damage @e[r=2.99,tag=!Frames] 8 entity_attack entity @s
execute as @s[scores={move=28}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=28}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=28}] at @s positioned ^^^3 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=14}] at @s run particle ds:ground_slam2 ^^1^2

execute as @s[scores={move=18}] at @s run function damages/blunt_damage
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Stun 30
execute as @s[scores={move=17}] at @s  run summon ds:boss_knockback1
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] knockdown 50
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Evade 10
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames] Hit 8
execute as @s[scores={move=19}] at @s positioned ^^^3 run damage @e[r=2.99,tag=!Frames] 12 entity_attack entity @s
execute as @s[scores={move=19}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=19}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=19}] at @s positioned ^^^3 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.85 90
execute as @s[scores={move=19}] at @s positioned ^^^3 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.95 90
execute as @s[scores={move=19}] at @s positioned ^^^3 run playsound mob.shock1 @a[r=90] ~~~ 90 1.95 90
execute as @s[scores={move=19}] at @s positioned ^^^3 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=18}] at @s run particle ds:ground_slam2 ^^1^2
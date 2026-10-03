playanimation @s[scores={move=20}] animation.sharko.kick

execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~


execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames] Evade 20
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,tag=!Frames] Hit 5
execute as @s[scores={move=10}] at @s positioned ^^^5 run damage @e[r=4.99,tag=!Frames] 15 override entity @s
execute as @s[scores={move=10}] at @s positioned ^^^5 run effect @e[r=4.99,tag=!Frames] levitation 1 21 true
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,tag=!Frames] knockdown 85
execute as @s[scores={move=10}] at @s positioned ^^^ run summon ds:boss_knockback1
execute as @s[scores={move=10}] at @s positioned ^^^ run summon ds:boss_knockback1


execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.witch.throw @a[r=120] ~~~ 9999 0.4 9999
execute as @s[scores={move=10}] at @s positioned ^^^5 if entity @e[tag=!Frames,r=4.99] run playsound mob.punch @a[r=120] ~~~ 9999 1 9999
execute as @s[scores={move=10}] at @s positioned ^^^5 if entity @e[tag=!Frames,r=4.99] run playsound random.explode @a[r=120] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s positioned ^^^5 if entity @e[tag=!Frames,r=4.99] run playsound random.explode @a[r=120] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s positioned ^^^5 run camerashake add @a[r=30] 0.5 0.1 rotational
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2 ^^1^2
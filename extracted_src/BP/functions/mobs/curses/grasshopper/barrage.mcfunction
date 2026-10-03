playanimation @s[scores={move=45}] animation.grasshopper_curse.barrage
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=5..35}] at @s run function damages/blunt_damage

execute as @s[scores={move=5..35}] at @s positioned ^^^3 if entity @e[tag=punch,r=2.99] positioned ^^^-1.5 run particle ds:heavy_impact1 ~~1.75~
execute as @s[scores={move=1..35}] at @s positioned ^^^3 run tag @e[tag=punch] remove punch
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run tag @e[scores={detect_left=1..},r=4] add punch



execute as @s[scores={move=5..35}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,tag=!Frames,tag=!punch] Stun 5
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run scoreboard players add @e[r=2.99,tag=!Frames,tag=!punch] Evade 1
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run scoreboard players set @e[r=2.99,tag=!Frames,tag=!punch] Hit 3
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run damage @e[r=2.99,tag=!Frames,tag=!punch] 1 override
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run playsound random.explode @a[r=90] ~~~ 90 2.25 90
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1.25 90
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run playsound mob.witch.throw @a[r=90] ~~~ 90 1 90
execute as @s[scores={move=5..35}] at @s positioned ^^^3 run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^2
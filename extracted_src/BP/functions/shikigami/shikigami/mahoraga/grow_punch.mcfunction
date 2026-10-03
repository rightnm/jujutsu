playanimation @s[scores={move=50}] animation.mahoraga.grow_punch
effect @s[scores={move=21..}] slowness 1 1 true

execute as @s[scores={move=19..23}] at @s run tag @s add Frames
execute as @s[scores={move=16..18}] at @s run tag @s remove Frames

execute as @s[scores={move=1..}] at @s  run tp @s ~~~

effect @s[scores={move=1..}] resistance 1 20 true
execute as @s[scores={move=20}] at @s positioned ^^^7 run scoreboard players add @e[r=25,tag=!Frames,tag=!mahoraga_tame] knockdown 5
execute as @s[scores={move=20}] at @s  unless entity @e[scores={ab=1..},r=30] run summon ds:mahoraga_knockback2
execute as @s[scores={move=20}] at @s  unless entity @e[scores={ab=1..},r=30] run summon ds:mahoraga_knockback2
execute as @s[scores={move=20}] at @s positioned ^^^7 run scoreboard players add @e[r=30,tag=!Frames,tag=!mahoraga_tame] Evade 14
execute as @s[scores={move=20}] at @s positioned ^^^7 run scoreboard players add @e[r=30,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=20}] at @s positioned ^^^7 run damage @e[r=25,tag=!Frames,tag=!mahoraga_tame] 50 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound mob.scock1 @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound mob.scock1 @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound mob.wither.break_block @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound mob.wither.break_block @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run playsound mob.wither.break_block @a[r=90] ~~~ 90 0.25 90
execute as @s[scores={move=20}] at @s positioned ^^^7 run camerashake add @a[r=30] 4 0.5
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run summon ds:red_reversal
execute as @s[scores={move=20}] at @s positioned ^^^7 run spreadplayers ~ ~ 5 20 @e[type=ds:red_reversal] 
execute as @s[scores={move=19}] at @s run particle ds:ground_slam1 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:ground_slam3 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:ground_slam4 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam1 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam2 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam3 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam4 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam5 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:rubble2
execute as @s[scores={move=19}] at @s run particle ds:dirt2
execute as @s[scores={move=19}] at @s run particle ds:crater4 ~~0.5~
execute as @s[scores={move=19}] at @s run particle ds:impact2 ^^^7
execute as @s[scores={move=19}] at @s run particle ds:large_slam2 ^^^7

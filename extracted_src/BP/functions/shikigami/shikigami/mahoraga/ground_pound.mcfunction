playanimation @s[scores={move=28}] animation.mahoraga.ground_pound
effect @s[scores={move=21..}] slowness 1 1 true
effect @s[scores={move=1..}] resistance 1 15 true

execute as @s[scores={move=19..23}] at @s run tag @s add Frames
execute as @s[scores={move=16..18}] at @s run tag @s remove Frames
execute as @s[scores={move=25..26}] at @s run summon ds:mahoraga_dash1 ^^^-2
execute as @s[scores={move=25..26}] at @s run summon ds:mahoraga_dash1 ^^^-2
execute as @s[scores={move=27..}] at @s run tp @s ~~~ facing @e[m=!c,r=25,family=!mahoraga,type=!arrow,type=!item,type=!xp_orb,type=!ds:projectile,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_dash1,type=!ds:dash,type=!ds:knockback,c=1]
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players add @e[r=3,tag=!Frames,tag=!mahoraga_tame] knockdown 5
execute as @s[scores={move=20}] at @s  unless entity @e[scores={ab=1..},r=8] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s  unless entity @e[scores={ab=1..},r=8] run summon ds:mahoraga_knockback1
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players add @e[r=8,tag=!Frames,tag=!mahoraga_tame] Evade 14
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players add @e[r=8,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=20}] at @s positioned ^^^1 run damage @e[r=8,tag=!Frames,tag=!mahoraga_tame] 14 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^1 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=20}] at @s positioned ^^^1 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=20}] at @s positioned ^^^1 run playsound mob.wither.break_block @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=20}] at @s positioned ^^^1 run playsound mob.wither.break_block @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=20}] at @s positioned ^^^1 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=19}] at @s run particle ds:ground_slam1 ^^^1
execute as @s[scores={move=19}] at @s run particle ds:ground_slam3 ^^^1
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={move=19}] at @s run particle ds:ground_slam4 ^^^1
execute as @s[scores={move=19}] at @s run particle ds:crater3 ~~-0.8~
execute as @s[scores={move=19}] at @s run particle ds:large_slam2 ^^^1
execute as @s[scores={move=19}] at @s run summon ds:red_reversal ^^^1
execute as @s[scores={move=19}] at @s run summon ds:red_reversal ^^^1
execute as @s[scores={move=19}] at @s run summon ds:red_reversal ^^^1
execute as @s[scores={move=19}] at @s run spreadplayers ~ ~ 5 10 @e[type=ds:red_reversal,c=3]


execute as @s[scores={move=15..20}] at @s run tp @s ~~~
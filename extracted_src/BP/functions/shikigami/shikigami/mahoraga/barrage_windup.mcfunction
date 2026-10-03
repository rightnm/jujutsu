playanimation @s[scores={move=40}] animation.mahoraga.punch_barrage_windup

execute as @s[scores={move=1..}] at @s run tp @s ~~~ facing @p

execute as @s[scores={move=21..26}] at @s run tag @e[r=7,scores={punch=1..}] add ClashBarrage
execute as @s[scores={move=21..26}] at @s if entity @e[r=7,scores={punch=1..}] run tag @s add ClashBarrage
execute as @s[scores={move=21..26}] at @s if entity @e[r=7,scores={punch=1..}] run scoreboard players set @s cutscene 140
execute as @s[scores={move=21..26}] at @s if entity @e[r=7,scores={punch=1..}] run scoreboard players set @e[tag=ClashBarrage,family=!mahoraga,c=1] cutscene 140
execute as @s[scores={move=21..26}] at @s if entity @e[r=7,scores={punch=1..}] run scoreboard players set @s move 0
execute as @s[scores={move=21}] at @s run particle ds:ground_slam2 ^^1^2

execute as @s[scores={move=18}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame,tag=!ClashBarrage] Stun 30
execute as @s[scores={move=18}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame,tag=!ClashBarrage] Evade 16
execute as @s[scores={move=18}] at @s positioned ^^^7run scoreboard players add @e[r=6.99,tag=!Frames,tag=!mahoraga_tame,tag=!ClashBarrage] Hit 8
execute as @s[scores={move=18}] at @s positioned ^^^7run damage @e[r=6.99,tag=!Frames,tag=!mahoraga_tame,tag=!ClashBarrage] 11 entity_attack entity @s
execute as @s[scores={move=18}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=18}] at @s positioned ^^^7run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=18}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.55 90
execute as @s[scores={move=18}] at @s positioned ^^^7run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=18}] at @s positioned ^^^7run camerashake add @a[r=30] 2 0.25

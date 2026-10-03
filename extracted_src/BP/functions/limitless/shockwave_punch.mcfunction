playanimation @s[scores={move=20}] animation.shockwave_punch
execute as @s[scores={move=1..20}] at @s run tp @s ~~~

tag @e[scores={move=1..2}] remove wep3

tag @e[scores={move=15..,Stun=1..}] remove wep3
scoreboard players set @e[scores={move=15..,Stun=1..}] move 0

scoreboard players set @e[scores={move=13..14}] Camera 4
scoreboard players set @e[scores={move=13..14}] Frames 4

scoreboard players random @s[scores={move=14}] blackflashchance 1 69
scoreboard players set @s[scores={move=14},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=13}] at @s run function damages/blunt_damage
execute as @s[scores={move=13..14},tag=limitlessfists,tag=wep2] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run scoreboard players operation @e[r=6.249,tag=!Frames]  damage += @s damageadd
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run damage @e[r=6.249,tag=!Frames] 7 entity_attack entity @s
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run scoreboard players set @e[r=6.249,tag=!Frames] Hit 10
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run scoreboard players add @e[r=6.249,tag=!Frames] Evade 7
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run execute as @e[r=6.249,tag=!Frames] at @s run function limitless/fury_hit
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound random.explode @a ~~~ 10000 1.5 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound random.explode @a ~~~ 10000 0.6 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound mob.wither.break_block @a ~~~ 10000 0.5 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound mob.wither.break_block @a ~~~ 10000 0.35 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run playsound mob.wither.shoot @a ~~~ 10000 0.35 10000
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:ground_slam2 ^^1^1
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:ground_slam2 ^^1^-2
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:ground_slam2 ^^1^-4
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:heavy_impact1 ^^1^-1
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:heavy_impact2 ^^1^-1
execute as @s[scores={move=13}] at @s positioned ^^^6.25 run particle ds:heavy_impact3 ^^1^-1
execute as @s[scores={move=12..13}] at @s positioned ^^^3 run summon ds:red_reverse

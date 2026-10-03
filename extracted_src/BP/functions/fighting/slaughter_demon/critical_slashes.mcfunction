playanimation @s[scores={move=35..}] animation.slaughter_demon.ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=28..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=28..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..28}] Move 4

execute as @s[scores={move=29}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=23}] at @s run scriptevent ds:knockback 2

scoreboard players random @s[scores={move=23}] blackflashchance 1 269
scoreboard players set @s[scores={move=23},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=28}] at @s run function damages/slash_damage
execute as @s[scores={move=23}] at @s run function damages/slash_damage
execute as @s[scores={move=18}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=29}] atk 2
scoreboard players set @e[scores={move=24}] atk 2
scoreboard players set @e[scores={move=19}] atk 2
execute as @s[scores={move=29..31}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=29..31},c=1]
execute as @s[scores={move=24..25}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=29..31},c=1]
execute as @s[scores={move=19..21}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=29..31},c=1]


execute as @s[scores={move=28}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.28 999999
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 12
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=28}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=28}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 3 override entity @s
execute as @s[scores={move=28}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=28}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice @a ~~~ 1 1.85
execute as @s[scores={move=28}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] run scriptevent ds:backward2
execute as @s[scores={move=28}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1


execute as @s[scores={move=23}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.23 999999
execute as @s[scores={move=23}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 12
execute as @s[scores={move=23}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=23}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=23}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 3 override entity @s
execute as @s[scores={move=23}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=23}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice @a ~~~ 1 1.85
execute as @s[scores={move=23}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] run scriptevent ds:backward2
execute as @s[scores={move=23}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1


execute as @s[scores={move=18}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1.15 999999
execute as @s[scores={move=18}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 12
execute as @s[scores={move=18}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=18}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=18}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 4 override entity @s
execute as @s[scores={move=18}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=18}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=18}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice @a ~~~ 1 1.15
execute as @s[scores={move=18}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=18}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1





execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 

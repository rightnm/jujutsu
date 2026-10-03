playanimation @s[scores={move=25..}] animation.beru_daggers.ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=21..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=21..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4

execute as @s[scores={move=23}] at @s run scriptevent ds:knockback 2

scoreboard players random @s[scores={move=23}] blackflashchance 1 269
scoreboard players set @s[scores={move=23},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=20}] at @s run function damages/slash_damage
execute as @s[scores={move=15}] at @s run function damages/slash_damage
execute as @s[scores={move=7}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=21}] atk 2
scoreboard players set @e[scores={move=16}] atk 2
scoreboard players set @e[scores={move=8}] atk 2
execute as @s[scores={atk=1..}] at @s run particle ds:mandible_intensity1 ~~1~
execute as @s[scores={atk=1..}] at @s positioned ^^^3 run effect @e[tag=!Frames,r=2.99] wither 5 2 true
execute as @s[scores={move=19..21}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=19..21},c=1]
execute as @s[scores={move=14..16}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=14..16},c=1]
execute as @s[scores={move=6..8}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=5..7},c=1]

execute as @s[scores={move=20}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=20}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.8 999999
execute as @s[scores={move=20}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 999999 2.5 999999
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 20
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=20}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 4 override entity @s
execute as @s[scores={move=20}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=20}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice2 @a ~~~ 1 1.85
execute as @s[scores={move=20}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] run scriptevent ds:backward2
execute as @s[scores={move=20}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1


execute as @s[scores={move=21}] at @s run particle ds:dirt03 ~~~
execute as @s[scores={move=15}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.75 999999
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 25
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=15}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=15}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 6 override entity @s
execute as @s[scores={move=15}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=15}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.sword @a ~~~ 1 1.85
execute as @s[scores={move=15}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] run scriptevent ds:backward2
execute as @s[scores={move=15}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1

execute as @s[scores={move=7}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=7}] at @s run particle ds:mandible_star1 ^^1^1
execute as @s[scores={move=7}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 2.5 999999
execute as @s[scores={move=7}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Flourish 3
execute as @s[scores={move=7}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=7}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=7}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 8 override entity @s
execute as @s[scores={move=7}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=7}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice @a ~~~ 1 1.15
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.slice3 @a ~~~ 1 1.15
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run particle ds:large_impact1 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run particle ds:large_impact2 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run particle ds:heian_impact1 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run camerashake add @a[r=20] 2 0.15 
execute as @s[scores={move=7}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=7}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1





execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 

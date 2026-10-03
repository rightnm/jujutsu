playanimation @s[scores={move=35..}] animation.katana.ab3

tag @s[scores={move=1..2}] remove wep3

tag @s[scores={move=31..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=31..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..31}] Move 4
scoreboard players set @s[scores={move=11..31}] Camera 4
scoreboard players set @s[scores={move=11..30}] Frames 4

execute as @s[scores={move=34}] at @s run playsound mob.bat.takeoff @a[r=20] ~~~ 99999 0.8 99999
execute as @s[scores={move=34}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=31..34}] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=31..34}] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=34}] at @s if block ~~-1~ air run tp @s @s
execute as @s[scores={move=34}] at @s if block ~~-1~ air run tp @s ^^^-2

execute as @s[scores={move=11..30}] at @s run tp @s @s

execute as @s[scores={move=30}] at @s positioned ^^^4 run function damages/slash_damage
execute as @s[scores={move=20}] at @s positioned ^^^4 run function damages/slash_damage
execute as @s[scores={move=10}] at @s positioned ^^^4 run function damages/slash_damage
scoreboard players set @e[scores={move=16..31}] atk 2
execute as @s[scores={move=11..30}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=3.99] at @s run tp @s ~~~ facing @e[scores={move=11..30},c=1]

execute as @s[scores={move=30}] at @s  run particle ds:dirt0
execute as @s[scores={move=10}] at @s  run particle ds:dirt0


execute as @s[scores={move=16..30}] at @s positioned ^^^4  run scoreboard players set @e[tag=!Frames,r=3.99] Stun 15
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run scoreboard players add @e[tag=!Frames,r=3.99] Hit 1
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run scoreboard players add @e[tag=!Frames,r=3.99] Evade 1
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run damage @e[tag=!Frames,r=3.99] 2 override
execute as @s[scores={move=16..30}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=30}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=3.99] run playsound  mob.slice @a ~~~ 0.2 1.2 
execute as @s[scores={move=24}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=3.99] run playsound  mob.slice @a ~~~ 0.2 0.7 
execute as @s[scores={move=16}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=3.99] run playsound  mob.slice @a ~~~ 0.2 0.5 
execute as @s[scores={move=16..30}] at @s positioned ^^^4 run playsound  mob.slash1 @a ~~~ 0.2 2.66 
execute as @s[scores={move=16..30}] at @s positioned ^^^4 run camerashake add @a[r=10] 0.12 0.08
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run particle ds:rapid_cuts1~ ~1~
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run particle ds:rapid_cuts2 ~~1~
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run particle ds:rapid_cuts3 ~~1~
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run particle ds:rapid_cuts4 ~~1~
execute as @s[scores={move=16..30}] at @s positioned ^^^4  run particle ds:rapid_cuts5 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^4  run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=10}] at @s positioned ^^^4  run particle ds:ground_slam2 ~~1~

execute as @s[scores={move=10}] at @s positioned ^^^4   run execute as @e[tag=!Frames,r=3.99] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=10}] at @s positioned ^^^4   run execute as @e[tag=!Frames,r=3.99] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=10}] at @s positioned ^^^4   if entity @e[tag=!Frames,r=3.99] run camerashake add @a[r=10] 3 0.15
execute as @s[scores={move=10}] at @s positioned ^^^4   if entity @e[tag=!Frames,r=3.99] run playsound mob.wither.shoot @a ~~~ 1 0.5
execute as @s[scores={move=10}] at @s positioned ^^^4   if entity @e[tag=!Frames,r=3.99] run playsound mob.sword @a ~~~ 1 0.65
execute as @s[scores={move=10}] at @s positioned ^^^4   if entity @e[tag=!Frames,r=3.99] run playsound mob.slash1 @a ~~~ 1 1.25
execute as @s[scores={move=10}] at @s positioned ^^^4   if entity @e[tag=!Frames,r=3.99] run playsound mob.slice @a ~~~ 1 1
execute as @s[scores={move=10}] at @s positioned ^^^4   run scoreboard players operation @e[tag=!Frames,r=3.99] damage += @s damageadd
execute as @s[scores={move=10}] at @s positioned ^^^4   run scoreboard players set @e[tag=!Frames,r=3.99] Flourish 4

playanimation @s[scores={move=25}] animation.layered_cleave
tag @s[scores={move=1..2}] remove form4sb

scoreboard players set @s[scores={move=12..,Stun=1..}] move 2

scoreboard players set @s[scores={move=4..20}] Frames 5
scoreboard players set @s[scores={move=4..}] Move 6
scoreboard players set @s[scores={move=8..12}] Camera 6
scoreboard players set @a[scores={move=10..11}] atk 2

execute as @s[scores={move=20..}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=22..}] at @s run scriptevent ds:downfall

effect @s[scores={move=12..}] speed 0 20 true

execute as @s[scores={move=8..}] at @s positioned ^^^2.25 run tp @e[tag=!Frames,r=2.249] ~~~ facing @s
execute as @s[scores={move=8..16}] at @s positioned ^^^2.25 run tp @s @s

execute as @s[scores={move=18}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249] at @s run playsound mob.punch1 @a[r=100] ~~~  9999 1.5 9999

execute as @s[scores={move=12}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.15 99999

execute as @s[scores={move=8..10}] at @s positioned ^^^2.25  run playsound mob.wither.hurt @a[r=100] ~~~ 999999 3 999999
execute as @s[scores={move=8..10}] at @s positioned ^^^2.25  run playsound mob.cleave @a[r=100] ~~~ 999999 1 999999
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run playsound mob.slash1 @a[r=100] ~~~ 999999 2.75 999999
execute as @s[scores={move=10}] at @s positioned ^^^2.25 if entity @e[tag=!Frames,r=2.249] run playsound mob.slice @a[r=100] ~~~ 999999 1.15 999999
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.25 0.15 rotational
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249] at @s run particle ds:blood_splat
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Stun 35
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Hit 20
execute as @s[scores={move=10}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] Evade 35
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] Flourish 4
execute as @s[scores={move=10}] at @s positioned ^^^2.25  if entity @e[tag=!Frames,r=2.249] run scoreboard players add @p[tag=sukuna,rm=1] fuga 2


execute as @s[scores={move=10}] at @s positioned ^^^2.25  run damage @e[tag=!Frames,r=2.249] 33 override
execute as @s[scores={move=9}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damage += @s damageadd
execute as @s[scores={move=8}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damagehalf += @e[tag=!Frames,r=2.249,c=1] strength

execute as @s[scores={move=7}] at @s positioned ^^^2.25 run function damages/cleave_damage
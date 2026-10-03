playanimation @s[scores={move=10}] animation.cleave
tag @s[scores={move=1..2}] remove form4s

scoreboard players set @s[scores={move=8..,Stun=1..}] move 2

scoreboard players set @s[scores={move=6..7}] atk 2

execute as @s[scores={move=6..7}] at @s unless entity @e[tag=!Frames,r=4,rm=0.2] run scriptevent ds:knockback 1

execute as @s[scores={move=6}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.15 99999
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.cleave @a[r=100] ~~~ 999999 1.15 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:cleave1 ~~1.25~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:cleave2 ~~1~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:cleave3 ~~1~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:cleave4 ~~1~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:cleave_aureole ~~0.25~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=6}] at @s positioned ^^^2.5  run damage @e[tag=!Frames,r=2.49] 6 override
execute as @s[scores={move=6}] at @s positioned ^^^2.5  run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=5}] at @s positioned ^^^2.5  run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @e[tag=!Frames,r=2.49,c=1] strength
execute as @s[scores={move=6}] at @s positioned ^^^2.5  run scoreboard players set @e[tag=!Frames,r=2.49] Stun 15
execute as @s[scores={move=6}] at @s positioned ^^^2.5  run scoreboard players set @e[tag=!Frames,r=2.49] Hit 5
execute as @s[scores={move=6}] at @s positioned ^^^2.5  run scoreboard players add @e[tag=!Frames,r=2.49] Evade 17
execute as @s[scores={move=6}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3

execute as @s[scores={move=5}] at @s positioned ^^^2.5 run function damages/cleave_damage
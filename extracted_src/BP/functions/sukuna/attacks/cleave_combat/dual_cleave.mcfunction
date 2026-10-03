playanimation @s[scores={move=25}] animation.dual_cleave
tag @s[scores={move=1..2}] remove wep3s2

scoreboard players set @s[scores={move=14..,Stun=1..}] move 2

execute as @s[scores={move=22..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=22..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=22..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=22..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=22..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

scoreboard players set @s[scores={move=1..}] Move 6
scoreboard players set @s[scores={move=15..14}] atk 2

execute as @s[scores={move=15..19}] at @s unless entity @e[tag=!Frames,r=4,rm=0.2] run scriptevent ds:knockback 5

effect @s[scores={move=12..}] speed 0 20 true

execute as @s[scores={move=15}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.15 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5  run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.15 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run damage @e[tag=!Frames,r=2.249] 25 override
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damagehalf += @e[tag=!Frames,r=2.249,c=1] strength
execute as @s[scores={move=15}] at @s positioned ^^^2.5  if entity @e[tag=!Frames,r=2.49] run scoreboard players add @p[tag=sukuna,rm=1] fuga 5

execute as @s[scores={move=13..16}] at @s run tp @s @s
execute as @s[scores={move=13..16}] at @s positioned ^^^2.5  run tp @e[tag=!Frames,r=2.49] ~~~ facing @s

execute as @s[scores={move=13..16}] at @s positioned ^^^2.5  run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=13}] at @s positioned ^^^2.5  run scoreboard players set @e[tag=!Frames,r=2.49] Hit 16
execute as @s[scores={move=13}] at @s positioned ^^^2.5  run scoreboard players add @e[tag=!Frames,r=2.49] Evade 30
execute as @s[scores={move=13}] at @s positioned ^^^2.5  run scoreboard players add @e[tag=!Frames,r=2.49] Flourish 7

scoreboard players set @s[scores={move=4..7}] move 3

execute as @s[scores={move=14}] at @s positioned ^^^2.5 run function damages/cleave_damage
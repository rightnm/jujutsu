playanimation @s[scores={move=75}] animation.cleave_combo
tag @s[scores={move=1..2}] remove wep5s2

playanimation @s[scores={move=70..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=70..,Stun=1..}] move 2

execute as @s[scores={move=70..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=70..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=70..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=70..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=70..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

effect @s[scores={move=1..}] speed 0 20 true

scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @s[scores={move=1..}] Move 5

execute as @s[scores={move=67..70}] at @s run tp @s @s

execute as @s[scores={move=12..66}] at @s positioned ^^^2.5 run tp @e[tag=!Frames,r=2.49] ~~~ facing @s

scoreboard players set @s[scores={move=65..66}] atk 2
execute as @s[scores={move=66}] at @s  run scriptevent ds:knockback 2



execute as @s[scores={move=70}] at @s  run playsound mob.comeatme @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=60..70}] at @s run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cCome at me!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={atk=1..2}] at @s if entity @e[tag=griefable] positioned ^^1^1.5 run fill ~1~1~1 ~-1 ~-1 ~-1 air [] destroy
execute as @s[scores={atk=1..2}] at @s if entity @e[tag=griefable] positioned ^^1^1.5 run kill @e[type=item,r=12]

execute as @s[scores={move=65}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.65 99999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.65 999999
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=65}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=65}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=65}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=64}] at @s positioned ^^^2.5 run function damages/cleave_damage

execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 3
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run scoreboard players add @s fuga 10

scoreboard players set @s[scores={move=55..56}] atk 2
execute as @s[scores={move=56}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=55}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.55 99999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.55 999999
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=55}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=55}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=54}] at @s positioned ^^^2.5 run function damages/cleave_damage


scoreboard players set @s[scores={move=46..47}] atk 2
execute as @s[scores={move=47}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=46}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.46 99999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.46 999999
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=46}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=46}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=45}] at @s positioned ^^^2.5 run function damages/cleave_damage


scoreboard players set @s[scores={move=41..42}] atk 2
execute as @s[scores={move=42}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=41}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.41 99999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.41 999999
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=41}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=40}] at @s positioned ^^^2.5 run function damages/cleave_damage


scoreboard players set @s[scores={move=35..36}] atk 2
execute as @s[scores={move=36}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=35}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.41 99999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.41 999999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=35}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run function damages/cleave_damage

scoreboard players set @s[scores={move=30..31}] atk 2
execute as @s[scores={move=31}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=30}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.41 99999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.41 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=29}] at @s positioned ^^^2.5 run function damages/cleave_damage


scoreboard players set @s[scores={move=25..27}] atk 2
execute as @s[scores={move=26}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=25}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.41 99999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1.25 999999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.41 999999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 1 override
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=24}] at @s positioned ^^^2.5 run function damages/cleave_damage

scoreboard players set @s[scores={move=13..14}] atk 2
execute as @s[scores={move=14}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=13}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.41 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.slash1 @a[r=100] ~~~ 999999 1.35 999999
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood1 @a[r=100] ~~~ 999999 1 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.slice @a[r=100] ~~~ 999999 0.75 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.blood3 @a[r=100] ~~~ 999999 0.75 999999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run playsound mob.sword @a[r=100] ~~~ 999999 0.75 999999
execute as @s[scores={move=13}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 0.75 999999
execute as @s[scores={move=13}] at @s positioned ^^^2.5 run playsound mob.cleave @a[r=100] ~~~ 999999 1.11 999999
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:red_tint ^^1^-2.4
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:red_tint ^^1^-6.5
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run camerashake add @a[r=10] 0.3 0.3 rotational
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve1 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve2 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve3 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49] run particle ds:carve5 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 6 override
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=13}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Flourish 7
execute as @s[scores={move=13}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=11}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @e[tag=!Frames,r=2.49,c=1] strength
execute as @s[scores={move=12}] at @s positioned ^^^2.5 run function damages/cleave_damage

execute as @s[scores={move=11..}] at @s positioned ^^^2.5 run effect @e[scores={detect_health=0..15},r=5,tag=!sukuna] resistance 2 20 true

execute as @s[scores={move=12..13}] at @s positioned ^^^2.5 run tag @e[scores={detect_health=0..20},r=5,c=1,tag=!sukuna] add cleavecombofinisher
execute as @s[scores={move=5..12}] at @s if entity @e[tag=cleavecombofinisher,r=25,c=1,tag=!sukuna] run scoreboard players set @s move 1001


execute as @s[scores={move=1000..1001}] at @s run playanimation @s animation.cleave_combo_finisher1
execute as @s[scores={move=1000..1001}] at @s run playanimation @e[tag=cleavecombofinisher,c=1] animation.cleave_combo_finisher2

execute as @s[scores={move=1000..1001}] at @s run tp @e[tag=cleavecombofinisher,c=1] ^^^3 facing @s
execute as @s[scores={move=1000..1001}] at @s run scoreboard players set @e[tag=cleavecombofinisher,c=1] Flourish 0

execute as @s[scores={move=985..1001}] at @s run execute as @e[tag=cleavecombofinisher,c=1]  at @s run scriptevent ds:knockback -1
execute as @s[scores={move=984}] at @s run execute as @e[tag=cleavecombofinisher,c=1]  at @s run tp @s @s
execute as @s[scores={move=984}] at @s run tp @s @s
execute as @s[scores={move=1000..1001}] at @s run tp @s @s
execute as @s[scores={move=985..999}] at @s run scriptevent ds:knockback 0.33

execute as @s[scores={move=1000..1001}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run tp @s @s
execute as @s[scores={move=986}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run tp @s ^^^-1
execute as @s[scores={move=979}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run tp @s ^^^-2

scoreboard players set @e[tag=cleavecombofinisher,scores={Stun=0..27}] Stun 40
scoreboard players set @e[tag=cleavecombofinisher,scores={Stun=0..7}] Camera 30

#victim camera

execute as @s[scores={move=985..999}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^-1.5^2^2 facing ~~~ 

execute as @s[scores={move=978..984}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @s set minecraft:free ease 0.1 in_sine pos ^-0.75^1^1.65  facing ^^1^1.6

execute as @s[scores={move=970}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @s set minecraft:free pos ^^0.25^0.5 facing ^^1.75^3
execute as @s[scores={move=970}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @s set minecraft:free ease 2 in_sine pos ^^2^-5 facing ^^1.75^3

#sukuna camera

execute as @s[scores={move=985..999}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @a[tag=sukuna,scores={move=900..}] set minecraft:free ease 0.1 in_sine pos ^-1.5^2^2 facing ~~~ 

execute as @s[scores={move=978..984}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @a[tag=sukuna,scores={move=900..}] set minecraft:free ease 0.1 in_sine pos ^-0.75^1^1.65 facing ^^1^1.6

execute as @s[scores={move=970}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @a[tag=sukuna,scores={move=900..}] set minecraft:free pos ^^0.25^0.5 facing ^^1.75^3
execute as @s[scores={move=970}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run camera @a[tag=sukuna,scores={move=900..}] set minecraft:free ease 2 in_sine pos ^^2^-5 facing ^^1.75^3


execute as @s[scores={move=980..983}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run tp @e[tag=sukuna,scores={move=980..983},c=1] ^^^2.25 facing @s
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:heavy_impact1 ^^1^0.15
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:heavy_impact2 ^^1^0.15
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:heavy_impact3 ^^1^0.15
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run playsound mob.punch1 @a[r=50] ~~~ 99999 1.5 99999
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run camerashake add @a[r=10] 1 0.1 rotational
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:dirt2
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:leap
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:crater
execute as @s[scores={move=980}] at @s run  execute as @e[tag=cleavecombofinisher,c=1] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.8 9999

execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run particle ds:beheaded ~~-0.25~
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  playsound mob.slash1 @a[r=50] ~~~ 99999 1.8 99999
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  playsound mob.sword @a[r=50] ~~~ 99999 1.8 99999
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  playsound mob.blood @a[r=50] ~~~ 99999 0.8 99999
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  playsound mob.blood3 @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:bloodbath 
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood_splat
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood_splat
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood_splat2
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:blood
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  camerashake add @a[r=25] 4 0.15
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:red_tint ^^1^0.5
execute as @s[scores={move=935}] at @s run execute as @e[tag=cleavecombofinisher,c=1] at @s run  particle ds:red_tint ^^1^-0.5

execute as @s[scores={move=935}] run scoreboard players set @e[tag=cleavecombofinisher,c=1] dying 60 

camera @s[scores={move=925}] fade time 0.5 0.5 1 color 0 0 0

scoreboard players set @s[scores={move=900..910}] move 3
execute as @s[scores={move=900..930}] run tag @e[tag=cleavecombofinisher] remove cleavecombofinisher

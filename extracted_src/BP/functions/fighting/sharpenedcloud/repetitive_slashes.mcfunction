playanimation @s[scores={move=75}] animation.sharpened_cloud.ab3

tag @e[scores={move=1..2}] remove wep1

tag @s[scores={move=16..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..58}] Move 4
scoreboard players set @s[scores={move=5..58}] Camera 4

scoreboard players set @a[tag=repeatslashes] Move 4
scoreboard players set @a[tag=repeatslashes] Camera 4

execute as @s[scores={move=6..60}] at @s run tp @s @s
execute as @s[scores={move=6..60}] at @s run tp @e[tag=repeatslashes,c=1,r=5] ^^^0.15 facing @s

execute as @s[scores={move=60}] run effect @p[tag=repeatslashes,c=1,r=5] darkness 3 1 true
effect @s[scores={move=60}] darkness 3 1 true

effect @s[scores={move=1..10}] darkness 0 10 true

execute as @s[scores={move=50}] at @s positioned ^^^0.25 run camera @s set minecraft:free pos ^2.5 ^1.33 ^ facing ~~1.33~
execute as @s[scores={move=50}] at @s positioned ^^^0.25 run camera @p[tag=repeatslashes,c=1] set minecraft:free pos ^2.5 ^1.33 ^ facing ~~1.33~

scoreboard players set @e[scores={move=60..61}] atk 2
execute as @s[scores={move=60}] at @s run function damages/slash_damage
execute as @s[scores={move=60}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=60}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99,c=1] Stun 25
execute as @s[scores={move=60}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99,c=1] Hit 3
execute as @s[scores={move=60}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99,c=1] Evade 1
execute as @s[scores={move=60}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99,c=1] 1 override
execute as @s[scores={move=60}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.99,c=1] add repeatslashes
execute as @s[scores={move=60}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=60}] at @s positioned ^^1^0.25 run particle ds:spinecut1 ~~-0.65~
execute as @s[scores={move=60}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=60}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 9999 1.8 9999

execute as @s[scores={move=7..58}] at @s unless entity @e[tag=repeatslashes,r=5] run playanimation @s animation.stunned
execute as @s[scores={move=7..58}] at @s unless entity @e[tag=repeatslashes,r=5] run scoreboard players set @s move 3


execute as @s[scores={move=1..50}] at @s run tag @e[rm=5] remove repeatslashes

scoreboard players set @e[scores={move=50..51}] atk 2
execute as @s[scores={move=50}] at @s run function damages/slash_damage
execute as @s[scores={move=50}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Stun 25
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Hit 3
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players add @e[tag=repeatslashes,c=1] Evade 1
execute as @s[scores={move=50}] at @s positioned ^^^2 run damage @e[tag=repeatslashes,c=1] 1 override
execute as @s[scores={move=50}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=50}] at @s positioned ^^1^0.25 run particle ds:spinecut1 ~~-0.65~
execute as @s[scores={move=50}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=50}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 9999 1.8 9999


scoreboard players set @e[scores={move=41..42}] atk 2
execute as @s[scores={move=41}] at @s run function damages/slash_damage
execute as @s[scores={move=41}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=41}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Stun 25
execute as @s[scores={move=41}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Hit 3
execute as @s[scores={move=41}] at @s positioned ^^^2 run scoreboard players add @e[tag=repeatslashes,c=1] Evade 1
execute as @s[scores={move=41}] at @s positioned ^^^2 run damage @e[tag=repeatslashes,c=1] 1 override
execute as @s[scores={move=41}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=41}] at @s positioned ^^1^0.25 run particle ds:spinecut1 ~~-0.65~
execute as @s[scores={move=41}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=42] ~~~ 9999 2.5 9999
execute as @s[scores={move=41}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=42] ~~~ 9999 1.8 9999


scoreboard players set @e[scores={move=37..38}] atk 2
execute as @s[scores={move=37}] at @s run function damages/slash_damage
execute as @s[scores={move=37}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=37}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Stun 25
execute as @s[scores={move=37}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Hit 3
execute as @s[scores={move=37}] at @s positioned ^^^2 run scoreboard players add @e[tag=repeatslashes,c=1] Evade 1
execute as @s[scores={move=37}] at @s positioned ^^^2 run damage @e[tag=repeatslashes,c=1] 1 override
execute as @s[scores={move=37}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=37}] at @s positioned ^^1^0.25 run particle ds:spinecut1 ~~-0.65~
execute as @s[scores={move=37}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=37}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 9999 1.8 9999


scoreboard players set @e[scores={move=35..36}] atk 2
execute as @s[scores={move=35}] at @s run function damages/slash_damage
execute as @s[scores={move=35}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=35}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Stun 25
execute as @s[scores={move=35}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Hit 3
execute as @s[scores={move=35}] at @s positioned ^^^2 run scoreboard players add @e[tag=repeatslashes,c=1] Evade 1
execute as @s[scores={move=35}] at @s positioned ^^^2 run damage @e[tag=repeatslashes,c=1] 1 override
execute as @s[scores={move=35}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=35}] at @s positioned ^^1^0.25 run particle ds:spinecut1 ~~-0.65~
execute as @s[scores={move=35}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=35}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 9999 1.8 9999


scoreboard players set @e[scores={move=7..34}] atk 2
execute as @s[scores={move=7..33}] at @s run function damages/slash_damage
execute as @s[scores={move=7..33}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=7..33}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Stun 15
execute as @s[scores={move=7..33}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Hit 3
execute as @s[scores={move=7..33}] at @s positioned ^^^2 run scoreboard players add @e[tag=repeatslashes,c=1] Evade 1
execute as @s[scores={move=7..33}] at @s positioned ^^^2 run damage @e[tag=repeatslashes,c=1] 1 override
execute as @s[scores={move=7..33}] at @s positioned ^^1^0.25 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=7..33}] at @s positioned ^^1^0.25 run particle ds:repeat_slashes1 ~~0.5~
execute as @s[scores={move=7..33}] at @s positioned ^^1^0.25 run particle ds:repeat_slashes2 ~~0.5~
execute as @s[scores={move=7..33}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 0.33 2.5
execute as @s[scores={move=7..33}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 0.33 1.8

tag @e[scores={Evasive=1..}] remove repeatslashes

execute as @s[scores={move=6}] at @s positioned ^^1^0.25 run  particle ds:heavy_impact1
execute as @s[scores={move=6}] at @s positioned ^^1^0.25 run  particle ds:heavy_impact2
execute as @s[scores={move=6}] at @s positioned ^^1^0.25 run  particle ds:heavy_impact3
execute as @s[scores={move=6}] at @s positioned ^^1^0.25 run  particle ds:heavy_impact5
execute as @s[scores={move=6}] at @s positioned ^^1^0.25 run  particle ds:ground_slam2
execute as @s[scores={move=7}] at @s positioned ^^1^0.25 run playsound mob.slash1 @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=7}] at @s positioned ^^1^0.25 run playsound mob.sword @a[r=50] ~~~ 9999 1 9999

execute as @s[scores={move=6}] at @s positioned ^^^2 run scoreboard players operation @e[tag=repeatslashes,c=1] damagehalf += @s damageadd
execute as @s[scores={move=6}] at @s positioned ^^^2 run scoreboard players set @e[tag=repeatslashes,c=1] Flourish 9
execute as @s[scores={move=5}] at @s positioned ^^1^0.25 run tag @e[tag=repeatslashes,c=1,r=5] remove repeatslashes

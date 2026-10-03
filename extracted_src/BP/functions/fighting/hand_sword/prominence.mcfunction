playanimation @s[scores={move=20..}] animation.katana.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=17..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=17..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..16}] Hyper 4
scoreboard players set @s[scores={move=4..16}] Move 4
scoreboard players set @s[scores={move=4..18}] Frames 4

execute as @s[scores={move=8..17}] at @s run scriptevent ds:knockback 3

scoreboard players random @s[scores={move=16}] blackflashchance 1 269
scoreboard players set @s[scores={move=16},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=5}] at @s run function damages/slash_damage
execute as @s[scores={move=8}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=5..17}] atk 2
execute as @s[scores={move=6..17}] at @s  run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=1..16},c=1]


execute as @s[scores={move=15}] at @s  run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=16}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.5 999999
execute as @s[scores={move=5..16}] at @s  run scoreboard players set @e[tag=!Frames,r=2.99] Stun 15
execute as @s[scores={move=5..16}] at @s  run scoreboard players add @e[tag=!Frames,r=2.99] Hit 1
execute as @s[scores={move=5..16}] at @s  run scoreboard players add @e[tag=!Frames,r=2.99] Evade 1
execute as @s[scores={move=5..16}] at @s  run damage @e[tag=!Frames,r=2.99] 1 override
execute as @s[scores={move=11}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=11}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=5..16}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=5..7}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=5..7}] at @s positioned ^^1^1 run particle ds:ground_slam3

execute as @s[scores={move=5}] at @s  if entity @e[tag=!Frames,r=2.99] run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=5}] at @s  if entity @e[tag=!Frames,r=2.99] run playsound mob.sword @a ~~~ 1 0.5
execute as @s[scores={move=5}] at @s  run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=5}] at @s  run scoreboard players set @e[tag=!Frames,r=2.99] Flourish 5

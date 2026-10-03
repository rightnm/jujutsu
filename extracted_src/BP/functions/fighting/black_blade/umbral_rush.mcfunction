playanimation @s[scores={move=40..}] animation.black_blade.ab3

tag @s[scores={move=1..2}] remove wep3

tag @s[scores={move=38..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=38..,Stun=1..}] move 0


scoreboard players set @s[scores={move=5..37}] Move 4
scoreboard players set @s[scores={move=5..37}] Frames 4
scoreboard players set @s[scores={move=1..22}] Camera 4
scoreboard players set @s[scores={move=1..4}] AfterAnim 3


scoreboard players random @s[scores={move=29}] blackflashchance 1 269
scoreboard players set @s[scores={move=29},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=32}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=34..34}] atk 2

execute as @s[scores={move=22..34}] at @s positioned ^^^2.5 run tp @e[tag=!Frames,r=2.99] ^^0.15^-0.25 facing @s

execute as @s[scores={move=24..37}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=13..22}] at @s run tp @s ~~~

execute as @s[scores={move=34}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 1.25 999999



execute as @s[scores={move=34}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 1.25 999999
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run playsound  mob.wither.shoot @a ~~~ 0.1 1.6 
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.sword @a ~~~ 1 1.85
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 2
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Stun 25
execute as @s[scores={move=34}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.99] 3 override
execute as @s[scores={move=34}] at @s positioned ^^^ run camerashake add @a[r=20] 0.2 0.18

execute as @s[scores={move=30}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 1.2 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 0.95 999999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run playsound  mob.wither.shoot @a ~~~ 0.1 1.5 
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.sword @a ~~~ 1 1.85
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 2
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Stun 25
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.99] 3 override
execute as @s[scores={move=30}] at @s positioned ^^^ run camerashake add @a[r=20] 0.2 0.18

execute as @s[scores={move=26}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 1.2 999999
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 0.95 999999
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run playsound  mob.wither.shoot @a ~~~ 0.1 1.5 
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.sword @a ~~~ 1 1.85
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 2
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Stun 25
execute as @s[scores={move=26}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.99] 3 override
execute as @s[scores={move=26}] at @s positioned ^^^ run camerashake add @a[r=20] 0.2 0.18

execute as @s[scores={move=19..23}] at @s run tp @s @s
execute as @s[scores={move=19}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 0.95 999999
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 0.95 999999
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run playsound  mob.wither.shoot @a ~~~ 0.1 1.5 
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.slice @a ~~~ 1 1.15
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 6
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Flourish 6
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.99] 4 override
execute as @s[scores={move=19}] at @s positioned ^^^ run camerashake add @a[r=20] 0.2 0.18



execute as @s[scores={move=34}] at @s positioned ^^1^1 run particle ds:ground_slam2 


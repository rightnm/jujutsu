playanimation @s[scores={move=25..}] animation.black_blade.ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=19..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=19..,Stun=1..}] move 0


scoreboard players set @s[scores={move=12..17}] Move 4
scoreboard players set @s[scores={move=16..19}] Frames 4
scoreboard players set @s[scores={move=12..17}] Camera 4
scoreboard players set @s[scores={move=1..6}] AfterAnim 3


scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=17}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=17..6}] atk 2
execute as @s[scores={move=17..19}] at @s  run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=1..6},c=1]


execute as @s[scores={move=17}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 0.95 999999
execute as @s[scores={move=17}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=17}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.99] knockdown 40
execute as @s[scores={move=17}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=17}] at @s positioned ^^^2.5  run scoreboard players add @e[tag=!Frames,r=2.99] Evade 6
execute as @s[scores={move=17}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.99] 6 override

execute as @s[scores={move=17}] at @s positioned ^^^ run camerashake add @a[r=20] 0.4 0.1

execute as @s[scores={move=18}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=17}] at @s positioned ^^^2.5  run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.sword @a ~~~ 1 0.85

execute as @s[scores={move=17}] at @s positioned ^^1^1 run particle ds:ground_slam2 


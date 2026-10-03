playanimation @s[scores={move=25..26}] animation.todo.agile_sweep

scoreboard players set @s[scores={move=20..}] Move 25


playanimation @s[scores={move=20..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=20..,Stun=1..}] move 3

tag @s[scores={move=1..3}] remove wep2


execute as @s[scores={move=18..19}] at @s run scriptevent ds:knockback 3
execute as @s[scores={move=11..16}] at @s run scriptevent ds:knockback 0.15

execute as @s[scores={move=16}] at @s run playsound mob.wither.shoot @a[r=30] ~~~  99999 0.55 999999


execute as @s[scores={move=16}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=16}] at @s run tp @s ^^^7

execute as @s[scores={move=16..17}] at @s run playsound mob.enderdragon.flap @a[r=30] ~~~  99999 1.85 999999
execute as @s[scores={move=16..17}] at @s run particle ds:flashstep1 ~~~

execute as @s[scores={move=17}] at @s run camerashake add @a[r=15] 1 0.15
execute as @s[scores={move=16..17}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=16..17}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=16..17}] at @s run particle ds:ground_slam3 ~~~


scoreboard players random @s[scores={move=24},tag=!heavenlyrestriction] blackflashchance 1 150
scoreboard players set @s[scores={move=24},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=17..18}] atk 2
execute as @s[scores={move=16}] at @s run function damages/blunt_damage
execute as @s[scores={move=17}] at @s run particle ds:dirt0
execute as @s[scores={move=16}] at @s run particle ds:dirt03
execute as @s[scores={move=16..17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run tp @s ~~~ facing @e[scores={move=16..18},c=1]  
execute as @s[scores={move=17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run camerashake add @a[r=15] 4 0.2 rotational
execute as @s[scores={move=17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run playsound mob.wither.break_block @a[r=30] ~~~  99999 0.75 999999
execute as @s[scores={move=17}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.95] at @s run playsound mob.punch2 @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=17}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.95] 5 override
execute as @s[scores={move=17}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.95] knockdown 25
execute as @s[scores={move=17}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.95] Evade 5
execute as @s[scores={move=17}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.95] Hit 3
execute as @s[scores={move=17}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.95] damage += @s damageadd

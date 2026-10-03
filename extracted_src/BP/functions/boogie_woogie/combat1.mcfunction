playanimation @s[scores={move=30..}] animation.todo.hefty_blow

scoreboard players set @s[scores={move=30..}] Move 25


playanimation @s[scores={move=20..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=20..,Stun=1..}] move 3

tag @s[scores={move=1..3}] remove wep1

execute as @s[scores={move=28}] at @s run camerashake add @s 0.25 0.3
execute as @s[scores={move=28}] at @s run playsound mob.enderdragon.flap @a[r=30] ~~~  99999 1.15 999999

execute as @s[scores={move=28..}] at @s run scriptevent ds:knockback 3
execute as @s[scores={move=18..25}] at @s run scriptevent ds:knockback 0.15

execute as @s[scores={move=16}] at @s run playsound mob.wither.shoot @a[r=30] ~~~  99999 0.55 999999


scoreboard players random @s[scores={move=24},tag=!heavenlyrestriction] blackflashchance 1 150
scoreboard players set @s[scores={move=24},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=16..17}] atk 2
execute as @s[scores={move=15}] at @s run function damages/blunt_damage
execute as @s[scores={move=16}] at @s run camerashake add @a[r=15] 1 0.15
execute as @s[scores={move=16}] at @s positioned ^^^1.5 run particle ds:ground_slam3 ~~~
execute as @s[scores={move=16}] at @s positioned ^^^0.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=16..18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run tp @s ~~~ facing @e[scores={move=16..18},c=1]  
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run summon gg:impact_frame
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:invert
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run camerashake add @a[r=15] 4 0.2 rotational
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run playsound mob.wither.break_block @a[r=30] ~~~  99999 0.75 999999
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.46] at @s run playsound mob.bullet @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.46] 15 override
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.46] Flourish 5
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.46] Evade 5
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.46] Hit 3
execute as @s[scores={move=16}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.46] damage += @s damageadd

playanimation @s[scores={move=20..}] animation.slaughter_demon.ab3

tag @s[scores={move=1..2}] remove wep3

tag @s[scores={move=17..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=17..,Stun=1..}] move 0


scoreboard players set @s[scores={move=4..6}] Move 4
scoreboard players set @s[scores={move=4..12}] Frames 4
scoreboard players set @s[scores={move=4..7}] Camera 4
scoreboard players set @s[scores={move=1..6}] AfterAnim 4

execute as @s[scores={move=13..14}] at @s run scriptevent ds:knockback 5

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=4}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=5..6}] atk 2
execute as @s[scores={move=5..6}] at @s run tp @s ~~~
execute as @s[scores={move=5..6}] at @s  run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=1..6},c=1]

execute as @s[scores={move=7..9}] at @s if entity @e[tag=!Frames,r=5.5] run scoreboard players set @s move 6

execute as @s[scores={move=12}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.85 999999

execute as @s[scores={move=5}] at @s  run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=5}] at @s  run scoreboard players set @e[tag=!Frames,r=2.99] Stun 15
execute as @s[scores={move=5}] at @s  run scoreboard players add @e[tag=!Frames,r=2.99] Hit 4
execute as @s[scores={move=5}] at @s  run scoreboard players add @e[tag=!Frames,r=2.99] Evade 6
execute as @s[scores={move=5}] at @s  run damage @e[tag=!Frames,r=2.99] 6 override
execute as @s[scores={move=6}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=6}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=5}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=5}] at @s  run execute as @e[tag=!Frames,r=2.99] at @s run playsound mob.sword @a ~~~ 1 0.7

execute as @s[scores={move=5..7}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=5..7}] at @s positioned ^^1^1 run particle ds:ground_slam3


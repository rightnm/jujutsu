playanimation @s[scores={move=25..26}] animation.mahito.basic2

tag @s[scores={move=1..2},tag=wep2m] remove wep2m

tag @s[scores={move=21..,Stun=1..},tag=wep2m] remove wep2m
playanimation @s[scores={move=21..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=21..,Stun=1..}] move 0

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5

execute as @s[scores={move=22}] at @s run  particle ds:leap
execute as @s[scores={move=22}] at @s run particle ds:dirt2
execute as @s[scores={move=22}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 99999 1.5 99999
execute as @s[scores={move=22}] at @s run playsound random.explode @a[r=25] ~~~ 99999 2.5 99999

execute as @s[scores={move=23..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=23..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=23..}] at @s if block ~~-1~ air run tp @s ~~-1~




execute as @s[scores={move=22}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=12}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.8 99999

execute as @s[scores={move=22}] at @s run tp @s ~~4~
execute as @s[scores={move=4..22}] at @s run tp @s ~~~

scoreboard players set @s[scores={move=19..21}] Frames 7
scoreboard players set @s[scores={move=18..19}] atk 2
execute as @s[scores={move=18}] at @s run playsound mob.bullet @a[r=25] ^^1^  99999 2.5 99999
execute as @s[scores={move=18}] at @s run playsound mob.wither.shoot @a[r=25] ^^1^  99999 2 99999
execute as @s[scores={move=18}] at @s run camerashake add @a[r=20] 0.75 0.15
execute as @s[scores={move=18}] at @s positioned ~~-6~ run damage @e[tag=!Frames,r=6] 4 override
execute as @s[scores={move=18}] at @s positioned ~~-6~ run scoreboard players add @e[tag=!Frames,r=6] Evade 7
execute as @s[scores={move=18}] at @s positioned ~~-6~ run scoreboard players add @e[tag=!Frames,r=6] knockdown 25
execute as @s[scores={move=18}] at @s positioned ~~-6~ run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damagehalf
execute as @s[scores={move=18}] at @s positioned ~~-4~ run particle ds:ground_pound3 ~~~
execute as @s[scores={move=18}] at @s positioned ~~-4~ run particle ds:ground_slam1 ~~~
execute as @s[scores={move=18}] at @s positioned ~~-4~ run particle ds:ground_slam2 ~~~
execute as @s[scores={move=18}] at @s positioned ~~-4~ run particle ds:leap ~~~
execute as @s[scores={move=18}] at @s positioned ~~-4~ run particle ds:rubble3 ~~~
execute as @s[scores={move=18}] at @s positioned ~~-4~ run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=18}] at @s positioned ~~-4~ run playsound random.explode @a[r=20] ~~~ 9999 1.2 9999

scoreboard players set @s[scores={move=13..14}] Frames 7
scoreboard players set @s[scores={move=10..11}] atk 2
execute as @s[scores={move=10}] at @s run playsound mob.bullet @a[r=25] ^^1^  99999 2.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=25] ^^1^  99999 2 99999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=20] 0.75 0.15
execute as @s[scores={move=10}] at @s positioned ~~-6~ run damage @e[tag=!Frames,r=6] 6 override
execute as @s[scores={move=10}] at @s positioned ~~-6~ run scoreboard players add @e[tag=!Frames,r=6] Evade 10
execute as @s[scores={move=10}] at @s positioned ~~-6~ run scoreboard players add @e[tag=!Frames,r=6] knockdown 25
execute as @s[scores={move=10}] at @s positioned ~~-6~ run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damagehalf
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_pound1 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_pound2 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_pound3 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_pound4 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_slam1 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:ground_slam2 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:leap ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run particle ds:rubble3 ~~~
execute as @s[scores={move=10}] at @s positioned ~~-4~ run camerashake add @a[r=15] 3 0.15
execute as @s[scores={move=10}] at @s positioned ~~-4~ run playsound random.explode @a[r=20] ~~~ 99990 0.8 99999

execute as @s[scores={move=10}] at @s run function damages/blunt_damage


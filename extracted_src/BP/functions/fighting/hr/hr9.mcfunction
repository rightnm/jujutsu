playanimation @s[scores={move=16}] animation.h_ground_slam
tag @s[scores={move=1..2}] remove form9

tag @s[scores={move=13..,Stun=1..}] remove form9
scoreboard players set @s[scores={move=13..,Stun=1..}] move 0

scoreboard players set @s[scores={move=6..11}] Frames 4
scoreboard players set @s[scores={move=6..11}] Move 4
scoreboard players set @s[scores={move=6..11}] Camera 4

execute as @s[scores={move=1..10}] at @s run  tp @s ~~~

execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999


execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3

execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run damage @e[tag=!Frames,r=4] 7 override
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,r=2.54] knock 40
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,r=4] Stun 20
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,r=4] Hit 5
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run scoreboard players add @e[tag=!Frames,r=4] Evade 8
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run scoreboard players operation @e[tag=!Frames,r=4] damage += @s damageadd
execute as @s[scores={move=10}] at @s unless block ~~-0.25~ air run summon ds:knockback ~~~

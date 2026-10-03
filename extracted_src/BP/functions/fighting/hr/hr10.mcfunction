playanimation @s[scores={move=65}] animation.final_hunt
tag @s[scores={move=1..2}] remove form10

tag @s[scores={move=56..,Stun=1..}] remove form10
scoreboard players set @s[scores={move=56..,Stun=1..}] move 0

scoreboard players set @s[scores={move=6..55}] Frames 4
scoreboard players set @s[scores={move=6..55}] Move 4
scoreboard players set @s[scores={move=6..55}] Camera 4

execute as @s[scores={move=60..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=1..10}] at @s run  tp @s ~~~

execute as @s[scores={move=1..5}] at @s run tag @e[tag=finalhunt] remove finalhunt

execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999



execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3

execute as @s[scores={move=55..56}] at @s positioned ^^^2  run tp @e[tag=!Frames,r=1.99]  ^^^-0.5 facing @s
execute as @s[scores={move=55}] at @s positioned ^^^2  run function damages/blunt_damage
execute as @s[scores={move=55}] at @s positioned ^^^2  run damage @e[tag=!Frames,r=1.99] 5 override
execute as @s[scores={move=55}] at @s positioned ^^^2  run scoreboard players set @e[tag=!Frames,r=1.99] knockdown 205 
execute as @s[scores={move=55}] at @s positioned ^^^2  run scoreboard players set @e[tag=!Frames,r=1.99] Hit 5
execute as @s[scores={move=55}] at @s positioned ^^^2  run scoreboard players add @e[tag=!Frames,r=1.99] Evade 5
execute as @s[scores={move=55}] at @s positioned ^^^2  run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=55}] at @s positioned ^^^2  run tag @e[tag=!Frames,r=1.99] add finalhunt
execute as @s[scores={move=55}] at @s positioned ^^^2  run effect @e[tag=!Frames,r=1.99] levitation 1 40 true
execute as @s[scores={move=55}] at @s positioned ^^^2  run effect @e[tag=!Frames,r=1.99] slow_falling 2 1 true
execute as @s[scores={move=35..50}] at @s positioned ^^^2  run effect @e[tag=!Frames,r=1.99] levitation 0 20 true

execute as @s[scores={move=35}] at @s run particle ds:pushed_up1 ~~~
execute as @s[scores={move=35}] at @s run particle ds:pushed_up2 ~~~

execute as @s[scores={move=16..35}] at @s run execute as @e[tag=finalhunt,c=1] at @s run tp @s @s
execute as @s[scores={move=16..33}] at @s run execute as @e[tag=finalhunt,c=1] at @s run tp @e[scores={move=16..35},tag=heavenlyrestriction,tag=form10] ^^0.15^0.75 facing @s

execute as @s[scores={move=14}] at @s positioned ^^^2  run tag @e[tag=finalhunt,r=10] add hardknockback
execute as @s[scores={move=15}] at @s positioned ^^^2  run function damages/blunt_damage
execute as @s[scores={move=15}] at @s positioned ^^^2  run damage @e[tag=!Frames,r=1.99] 20 override
execute as @s[scores={move=15}] at @s positioned ^^^2  run scoreboard players set @e[tag=finalhunt,r=10] Flourish 30
execute as @s[scores={move=15}] at @s positioned ^^^2  run scoreboard players set @e[tag=finalhunt,r=10] Hit 5
execute as @s[scores={move=15}] at @s positioned ^^^2  run scoreboard players add @e[tag=finalhunt,r=10] Evade 5
execute as @s[scores={move=15}] at @s positioned ^^^2  run scoreboard players operation @e[tag=finalhunt,r=10] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2  run tag @e[tag=finalhunt,r=10] remove finalhunt

execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999

execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam1
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam2
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam4
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:leap
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 4 0.15

execute as @s[scores={move=36..50}] at @s unless entity @e[tag=finalhunt] run playanimation @s animation.stunned
execute as @s[scores={move=36..50}] at @s unless entity @e[tag=finalhunt] run  scoreboard players set @s move 3
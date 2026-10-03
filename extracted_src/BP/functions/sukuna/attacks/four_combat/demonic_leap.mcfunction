scoreboard players set @s[scores={move=33..}] Move 5
playanimation @s[scores={move=50..51}] animation.heian_sukuna.demonic_leap



execute as @s[scores={move=31..}] at @s run camerashake add @a[r=5] 0.08 0.08

execute as @s[scores={move=31..}] at @s run scriptevent ds:downfall

execute as @s[scores={move=50}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=50}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.25 99999

execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity1 ~~-0.5~
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity2 ~~-0.5~
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity3 ~~-0.5~

execute as @s[scores={move=29}] at @s run particle ds:large_impact1
execute as @s[scores={move=29}] at @s run particle ds:dirt2
execute as @s[scores={move=29}] at @s run particle ds:leap
execute as @s[scores={move=29}] at @s run particle ds:ground_slam2
execute as @s[scores={move=29}] at @s run particle ds:ground_slam3
execute as @s[scores={move=29}] at @s run particle ds:rubble3
execute as @s[scores={move=29}] at @s run particle ds:crater
execute as @s[scores={move=29}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=29}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=29}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=29}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=28..29}] at @s run scriptevent ds:leapforwards


execute as @s[scores={move=24..26}] at @s if block ~~-1~ air if block ~~-2~ air run scoreboard players set @s move 26

execute as @s[scores={move=24..26}] at @s unless block ~~-1~ air run scoreboard players set @s move 23

playanimation @s[scores={move=24..26}] animation.heian_sukuna.demonic_leap2

execute as @s[scores={move=24..26,Sneaking=1..}] at @s run scriptevent ds:downfall
effect @s[scores={move=24..26}] speed 1 20 true

scoreboard players set @s[scores={move=5..22}] Move 5
scoreboard players set @s[scores={move=20..26}] atk 2
execute as @s[scores={move=5..22}] at @s run tp @s @s

execute as @s[scores={move=23..24}] at @s run scriptevent ds:downfall

tag @s[scores={move=22..24}] add Frames

tag @s[scores={move=15..20}] remove Frames

execute as @s[scores={move=22}] at @s run particle ds:demons_descent1
execute as @s[scores={move=22}] at @s run particle ds:demons_descent2
execute as @s[scores={move=22}] at @s run particle ds:demons_descent3
execute as @s[scores={move=22}] at @s run particle ds:demons_descent4
execute as @s[scores={move=22}] at @s run particle ds:demons_descent5
execute as @s[scores={move=22}] at @s run particle ds:demons_descent6
execute as @s[scores={move=22}] at @s run particle ds:demons_descent7
execute as @s[scores={move=22}] at @s run particle ds:demons_descent8
execute as @s[scores={move=22}] at @s run particle ds:demons_descent9
execute as @s[scores={move=22}] at @s run particle ds:large_slam5
execute as @s[scores={move=22}] at @s run particle ds:large_slam2
execute as @s[scores={move=22}] at @s run particle ds:large_slam3
execute as @s[scores={move=18}] at @s run particle ds:crater4
execute as @s[scores={move=22}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=22}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=22}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=22}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=22}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=22}] at @s run camerashake add @a[r=150] 4 0.25

execute as @s[scores={move=21}] at @s run scoreboard players set @e[tag=!Frames,r=20] knockdown 25
execute as @s[scores={move=21}] at @s run scoreboard players set @e[tag=!Frames,r=20] Hit 5
execute as @s[scores={move=21}] at @s run scoreboard players set @e[tag=!Frames,r=20] Stun 25
execute as @s[scores={move=21}] at @s run scoreboard players add @e[tag=!Frames,r=20] Evade 25
execute as @s[scores={move=21}] at @s run damage @e[tag=!Frames,r=20] 30 override
execute as @s[scores={move=21}] at @s run damage @e[tag=!Frames,r=10] 15 override
execute as @s[scores={move=21}] at @s run damage @e[tag=!Frames,r=5] 10 override
execute as @s[scores={move=21}] at @s run scoreboard players operation @e[tag=!Frames,r=20] damage += @s damageadd

execute as @s[scores={move=16..22}] at @s run camera @s set minecraft:free pos ^^22^18 facing ~~~

execute as @s[scores={move=1..6}] at @s run camera @s clear

tag @s[scores={move=1..3}] remove wep3s3
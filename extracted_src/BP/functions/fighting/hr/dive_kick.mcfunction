playanimation @s[scores={move=22}] animation.dive_kick

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=20..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=20..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..20}] Frames 4
scoreboard players set @s[scores={move=4..}] Move 4
scoreboard players set @s[scores={move=4..19}] Camera 4

scoreboard players set @a[scores={move=3..17}] atk 2

execute as @s[scores={move=21..}] at @s run tp @s ~~3.5~
execute as @s[scores={move=1..}] at @s run tp @s ~~~


execute as @s[scores={move=3}] at @s run function damages/blunt_damage

execute as @s[scores={move=5..19}] at @s if block ~~-1~ air run tp @s @s
execute as @s[scores={move=5..19}] at @s if block ~~-1~ air if block ^^-1^1 air run tp @s ^^-1^1
execute as @s[scores={move=5..19}] at @s run tp @s ^^-1^1
execute as @s[scores={move=5..19}] at @s if block ~~-1~ air run playanimation @s animation.dive_kick2
execute as @s[scores={move=5..19}] at @s if block ~~-1~ air run scoreboard players set @s move 6
execute as @s[scores={move=5..19}] at @s if block ~~-1~ air run camera @s set minecraft:free pos ^ ^4 ^-7 facing @s
execute as @s[scores={move=5..19}] at @s if block ~~-1~ air run tp @e[tag=!Frames,r=5] ~~~ facing @s


execute as @s[scores={move=5..19}] at @s unless block ~~-1~ air run scoreboard players set @s move 4

execute as @s[scores={move=1..5}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=1..5}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=1..5}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=1..5}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=1..5}] at @s unless block ~~~ air run tp @s ~~1~

execute as @s[scores={move=3}] at @s  run particle ds:dirt2
execute as @s[scores={move=3}] at @s  run particle ds:dirt0
execute as @s[scores={move=3}] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=3}] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=3}] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=3}] at @s  run particle ds:heavy_impact5
execute as @s[scores={move=3}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=3}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=3}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=3}] at @s  run particle ds:ground_slam4
execute as @s[scores={move=3}] at @s  run particle ds:crater3 ~~~
execute as @s[scores={move=3}] at @s  run particle ds:large_slam2 ~~-0.5~
execute as @s[scores={move=3}] at @s  run camerashake add @a[r=20] 4 0.5


execute as @s[scores={move=3,strength=25..}] at @s  run particle ds:large_slam1
execute as @s[scores={move=3,strength=25..}] at @s  run particle ds:large_slam2
execute as @s[scores={move=3,strength=25..}] at @s  run particle ds:large_slam3
execute as @s[scores={move=3,strength=25..}] at @s  run particle ds:large_slam4
execute as @s[scores={move=3,strength=25..}] at @s  run camerashake add @a[r=40] 4 1


execute as @s[scores={move=4,strength=1..25}] at @s  run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=4,strength=1..25}] at @s  run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=4,strength=1..25}] at @s  run playsound random.explode @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={move=4,strength=1..25}] at @s  run playsound mob.shock1 @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=3,strength=1..25}] at @s anchored eyes  run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=3,strength=1..25}] at @s  run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=3,strength=1..25}] at @s  run damage @e[tag=!Frames,r=6] 16 override entity @s
execute as @s[scores={move=3,strength=1..25}] at @s  run scoreboard players add @e[tag=!Frames,r=6] Evade 20
execute as @s[scores={move=3,strength=1..25}] at @s  run scoreboard players set @e[tag=!Frames,r=6] knock 40
execute as @s[scores={move=3,strength=1..25}] at @s  run scoreboard players set @e[tag=!Frames,r=6] Stun 40
execute as @s[scores={move=3,strength=1..25}] at @s  run scoreboard players add @e[tag=!Frames,r=6] Hit 10


execute as @s[scores={move=4,strength=25..}] at @s  run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.3 9999
execute as @s[scores={move=4,strength=25..}] at @s  run playsound random.explode @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=4,strength=25..}] at @s  run playsound random.explode @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={move=4,strength=25..}] at @s  run playsound mob.shock1 @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=4,strength=25..}] at @s  run playsound mob.shock1 @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=3,strength=25..}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=3,strength=25..}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=3,strength=25..}] at @s  run scoreboard players operation @e[tag=!Frames,r=8] damage += @s damageadd
execute as @s[scores={move=3,strength=25..}] at @s  run damage @e[tag=!Frames,r=8] 24 override entity @s
execute as @s[scores={move=3,strength=25..}] at @s  run scoreboard players add @e[tag=!Frames,r=8] Evade 20
execute as @s[scores={move=3,strength=25..}] at @s  run scoreboard players set @e[tag=!Frames,r=8] knock 40
execute as @s[scores={move=3,strength=25..}] at @s  run scoreboard players set @e[tag=!Frames,r=8] Stun 40
execute as @s[scores={move=3,strength=25..}] at @s  run scoreboard players add @e[tag=!Frames,r=8] Hit 10


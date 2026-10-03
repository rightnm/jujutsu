playanimation @s[scores={move=90}] animation.rock_barrage
tag @s[scores={move=1..2}] remove form12

scoreboard players set @s[scores={move=2..89}] Frames 5
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Camera 4

execute as @s[scores={move=85..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=85..}] at @s if block ~~-0.5~ air run tp @s ~~-0.25~
execute as @s[scores={move=85..}] at @s if block ~~-0.5~ air run tp @s ~~-0.25~
execute as @s[scores={move=85..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=85..}] at @s if block ~~-0.75~ air run tp @s ~~-0.75~
execute as @s[scores={move=85..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=85..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=1..}] at @s run tp @s @s

execute as @s[scores={move=85}] at @s if block ~~-0.5~ air run playanimation @s animation.stunned
execute as @s[scores={move=85}] at @s if block ~~-0.5~ air run scoreboard players set @s move 2

execute as @s[scores={move=86..}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^1 rot ~ ~180
execute as @s[scores={move=84}] at @s anchored eyes run camera @s set minecraft:free pos ^3 ^ ^2 rot ~ ~125
execute as @s[scores={move=72}] at @s anchored eyes run camera @s set minecraft:free pos ~ ~6 ~ rot ~90 ~
execute as @s[scores={move=20}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^7 ^12 rot ~35 ~180
execute as @s[scores={move=5}] at @s anchored eyes run camera @s fade time 0.2 0.2 0.2 color 0 0 0

title @s[scores={move=11..},tag=!impactframesoff] title 

execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.86 99999
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:ground_slam1
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:ground_slam2
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:ground_slam3
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:ground_slam4
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:rising_rubble1
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:large_slam2
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:crater3
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run particle ds:leap
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run camerashake add @a[r=20] 3 0.3
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run scoreboard players set @e[tag=!Frames,r=12] Move 4
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run effect @e[tag=!Frames,r=12] mining_fatigue 1 1 true
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run effect @e[tag=!Frames,r=12] slowness 1 1 true

execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run effect @e[tag=!Frames,r=12] levitation 2 1 true
execute as @s[scores={move=86}] at @s unless block ~~-0.5~ air run effect @e[tag=!Frames,r=12] slow_falling 2 1 true

execute as @s[scores={move=72}] at @s run particle ds:dirt2 ~~1~
execute as @s[scores={move=62}] at @s run particle ds:dirt4 ~~1~
execute as @s[scores={move=52}] at @s run particle ds:dirt2 ~~1~
execute as @s[scores={move=42}] at @s run particle ds:dirt4 ~~1~


execute as @s[scores={move=40..72}] at @s run particle ds:rising_rubble2
execute as @s[scores={move=40..72}] at @s run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=40..72}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=40..72}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=45}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=45}] at @s run playsound mob.bass @a[r=50] ~~~ 9999 1.25 9999


execute as @s[scores={move=10}] at @s run camerashake add @a[r=40] 4 0.25
execute as @s[scores={move=10}] at @s run particle ds:dirt0
execute as @s[scores={move=10}] at @s run particle ds:dirt2 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:dirt4
execute as @s[scores={move=1..11}] at @s run particle ds:impact
execute as @s[scores={move=1..11}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=1..11}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=1..11}] at @s run playsound mob.bullet @a[r=100] ~~~ 9999 1.75 9999
execute as @s[scores={move=1..11}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=1..11}] at @s run particle ds:large_slam1 ~~1~
execute as @s[scores={move=1..11}] at @s run particle ds:large_slam3 ~~1~
execute as @s[scores={move=1..11}] at @s run particle ds:large_slam4 ~~1~
execute as @s[scores={move=1..10}] at @s run damage @e[r=12,tag=!Frames] 4 override
execute as @s[scores={move=1..}] at @s run scoreboard players set @e[r=12,tag=!Frames] Stun 25
execute as @s[scores={move=1..10}] at @s run scoreboard players set @e[r=12,tag=!Frames] Hit 3
execute as @s[scores={move=1..10}] at @s run execute as @e[tag=!Frames,r=12] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=1..10}] at @s run playanimation @e[tag=!Frames,r=12] animation.stunned i 0.05
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~-12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~-12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~ ~ ~-12
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-12 ~ ~
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~8 ~ ~-8
execute as @s[scores={move=9}] at @s run summon ds:lapse_explode ~-8 ~ ~8
execute as @s[scores={move=1..10}] at @s run kill @e[type=item,r=25]
execute as @s[scores={move=5}] at @s run scoreboard players operation @e[r=12,tag=!Frames] damagehalf += @s damageadd

execute as @s[scores={move=1..7}] at @s run camera @a[r=25] clear

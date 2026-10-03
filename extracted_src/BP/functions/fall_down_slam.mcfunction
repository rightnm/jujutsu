execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
tag @s add Frames
scoreboard players set @s Frames 5
playanimation @s animation.slamdown
particle ds:crater2 ~~~
particle ds:ground_slam2
particle ds:ground_slam3
execute as @s[scores={falling=6..}] run particle ds:ground_slam2
execute as @s[scores={falling=6..}] run particle ds:ground_slam2
execute as @s[scores={falling=6..}] run particle ds:ground_slam3
execute as @s[scores={falling=6..}] run particle ds:dirt4
execute as @s[scores={falling=6..}] run particle ds:dirt0
execute as @s[scores={falling=6..}] run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.4 99999
execute as @s[scores={falling=6..}] run playsound mob.shock1 @a[r=50] ~~~ 99999 1.4 99999

execute as @s[scores={falling=6..}] run particle ds:ground_slam2
execute as @s[scores={falling=12..}] run particle ds:ground_slam2
execute as @s[scores={falling=12..}] run particle ds:ground_slam3
execute as @s[scores={falling=12..}] run particle ds:dirt4
execute as @s[scores={falling=12..}] run particle ds:dirt0
execute as @s[scores={falling=12..}] run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.3 99999
execute as @s[scores={falling=12..}] run playsound mob.shock1 @a[r=50] ~~~ 99999 1.1 99999
execute as @s[scores={falling=12..}] run camerashake add @a[r=50] 0.15 0.15 rotational

execute as @s[scores={falling=35..}] run particle ds:large_slam1
execute as @s[scores={falling=35..}] run particle ds:large_slam2
execute as @s[scores={falling=35..}] run particle ds:large_slam3
execute as @s[scores={falling=35..}] run particle ds:crater3
execute as @s[scores={falling=35..}] run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.35 99999
execute as @s[scores={falling=35..}] run playsound mob.shock1 @a[r=50] ~~~ 99999 0.85 99999
execute as @s[scores={falling=35..}] run camerashake add @a[r=50] 2 0.15 rotational
particle ds:dirt2
particle ds:leap
playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.7 99999
playsound random.explode @a[r=50] ~~~ 99999 1.2 99999
damage @e[tag=!Frames,r=5] 2 override
scoreboard players operation @e[tag=!Frames,r=5] damage += @s damageadd
scoreboard players set @a[tag=!Frames,r=5] knockdown 25
scoreboard players set @e[type=!player,tag=!Frames,r=5] Stun 25
scoreboard players set @e[tag=!Frames,r=5] Hit 3
camerashake add @a[r=10] 1 0.15
scoreboard players operation @s falling /= two endurance
scoreboard players operation @e[tag=!Frames,r=5] damagehalf += @s falling
scoreboard players set @s falling 0
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
execute as @s at @s unless block ~~~ air run tp @s ~~0.1~
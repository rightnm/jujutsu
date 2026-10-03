playanimation @s[scores={move=50..}] animation.slaughter_demon.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=47..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=47..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..41}] Move 5
scoreboard players set @s[scores={move=24..41}] Camera 5
scoreboard players set @s[scores={move=4..41}] Frames 4

execute as @s[scores={move=50}] at @s run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=50}] at @s run particle ds:rubble3
execute as @s[scores={move=50}] at @s run particle ds:sprint
execute as @s[scores={move=50}] at @s run playsound mob.bat.takeoff @a[r=20] ~~~ 99999 1.2 99999
execute as @s[scores={move=47..}] at @s run scriptevent ds:knockback 2

scoreboard players random @s[scores={move=32}] blackflashchance 1 269
scoreboard players set @s[scores={move=32},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=41}] at @s run function damages/slash_damage
execute as @s[scores={move=25}] at @s run function damages/blunt_damage
scoreboard players set @e[scores={move=5..17}] atk 2


execute as @s[scores={move=42..45}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.99] at @s run tp @s ~~~ facing @e[scores={move=42..45},c=1]
execute as @s[scores={move=42}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run camerashake add @a[r=7] 2 0.15
execute as @s[scores={move=42}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=42}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound mob.sword @a[r=200] ~~~ 999999 0.45 999999
execute as @s[scores={move=42}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 42
execute as @s[scores={move=27..42}] at @s positioned ^^^3 run playanimation @e[tag=!Frames,r=2.99] animation.stunned
execute as @s[scores={move=42}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 12
execute as @s[scores={move=42}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 5 override
execute as @s[scores={move=42}] at @s positioned ^^^3 run tag @e[tag=!Frames,r=2.99] add viper2
execute as @s[scores={move=42}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run tag @s add viper
execute as @s[scores={move=41}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.99] at @s run particle ds:red_impact1 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.99] at @s run particle ds:red_impact2 ~~1~
execute as @s[scores={move=41}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.99] at @s run particle ds:red_impact3 ~~1~

execute as @s[scores={move=27..41}] at @s positioned ^^^1 run camera @s set minecraft:free pos ^-1.5^2^-2 facing ~~1.5~

execute as @s[scores={move=26..42}] at @s unless entity @e[tag=viper2,r=10] run scoreboard players set @s move 2

execute as @s[scores={move=26..42}] at @s  run execute as @e[tag=viper2,c=1,r=25] at @s run tp @s ~~~
execute as @s[scores={move=26..42}] at @s  run execute as @e[tag=viper2,c=1,r=25] at @s run tp @e[tag=viper,c=1] ^^0.05^0.85 facing ~~~
tag @a[scores={respawn=1..}] remove viper
tag @a[scores={respawn=1..}] remove viper2

execute as @s[scores={move=1..26}] at @s run tag @e[tag=viper] remove viper
execute as @s[scores={move=1..26}] at @s run tag @e[tag=viper2] remove viper2

scoreboard players set @s[scores={move=1..2}] AfterAnim 5

execute as @s[scores={move=26}] at @s run playsound random.explode @a[r=200] ~~~  999999 2  999999
execute as @s[scores={move=26}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=26}] at @s positioned ^^^ run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=26}] at @s positioned ^^^1 run particle ds:ground_slam2 
execute as @s[scores={move=26}] at @s positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=26}] at @s positioned ^^^1 run particle ds:large_impact1
execute as @s[scores={move=26}] at @s positioned ^^^1 run particle ds:large_impact2
execute as @s[scores={move=26}] at @s positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=26}] at @s  if entity @e[tag=!Frames,r=2.99] run camerashake add @a[r=10] 2 0.42
execute as @s[scores={move=26}] at @s  run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=26}] at @s  run scoreboard players set @e[tag=!Frames,r=2.99] Flourish 6
execute as @s[scores={move=24..26}] at @s run scriptevent ds:knockback -3.5
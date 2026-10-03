playanimation @s[scores={move=60..}] animation.black_blade.ab4

tag @s[scores={move=1..2}] remove wep4

tag @s[scores={move=52..,Stun=1..}] remove wep4
scoreboard players set @s[scores={move=52..,Stun=1..}] move 0

scoreboard players set @s[scores={move=51..}] Move 4
scoreboard players set @s[scores={move=1..51}] Frames 4
scoreboard players set @s[scores={move=1..30}] Camera 18
scoreboard players set @s[scores={move=1..30}] Move 18
scoreboard players set @s[scores={move=1..30}] AfterAnim 18 
scoreboard players set @s[scores={move=1..30}] Disabled 19

execute as @s[scores={move=50..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=50..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=50..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=50..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=50..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=50..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=50..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~


execute as @s[scores={move=50..}] at @s unless block ~~-1~ air run playsound bubble.down @a[r=20] ~~~ 0.1 0.8
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run playsound random.swim @a[r=20] ~~~ 0.1 0.3
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle1 ~~0.15~
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle2 ~~0.15~
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle3 ~~0.15~
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle4 ~~0.15~
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle5 ~~0.15~
execute as @s[scores={move=42..}] at @s unless block ~~-1~ air run particle ds:swamp_puddle6 ~~0.87~
playanimation @s[scores={move=42..50}] animation.black_blade.ab4_hold
effect @s[scores={move=42..49}] invisibility 1 1 true
execute as @s[scores={move=42..50},tag=!itemUse:ds:black_blade] at @s run scoreboard players set @s Frames 5
execute as @s[scores={move=42..50},tag=!itemUse:ds:black_blade] at @s run scoreboard players set @s move 45

scoreboard players remove @s[scores={move=42..46,Energy=4..}] Energy 4
scoreboard players set @s[scores={Enegy=-9999..50,move=42..46}] move 41
tellraw @s[scores={move=51}] {"rawtext":[{"text":"§l§e- Click the Jet Black Blade again to re-surface!"}]}


execute as @s[scores={move=42..50},tag=itemUse:ds:black_blade] at @s run scoreboard players set @s move 41
playanimation @s[scores={move=40..41}] animation.black_blade.ab4_exit

execute as @s[scores={move=30}] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=30}] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=30}] at @s run particle ds:divergent_ac5 ~~~
execute as @s[scores={move=30}] at @s run particle ds:divergent_ac4 ~~~
execute as @s[scores={move=30}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=30}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=25] ~~~ 99999 2.2 99999
execute as @s[scores={move=30}] at @s run  camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=30}] at @s run damage @e[tag=!Frames,r=3.5] 2 override
execute as @s[scores={move=30}] at @s run scoreboard players set @e[tag=!Frames,r=3.5] Stun 30
execute as @s[scores={move=30}] at @s run effect @e[tag=!Frames,r=3.5] levitation 1 18 true
execute as @s[scores={move=30}] at @s run tag @e[tag=!Frames,r=3.5] add shadowassault

execute as @s[scores={move=1..30}] at @s run tp @s @s


execute as @s[scores={move=16..17}] at @s run tp @e[tag=shadowassault,c=1] ^^4^1 
execute as @s[scores={move=14..15}] at @s run tp @e[tag=shadowassault,c=1] ^^3^1 
execute as @s[scores={move=12..13}] at @s run tp @e[tag=shadowassault,c=1] ^^2^1 
execute as @s[scores={move=10..11}] at @s run tp @e[tag=shadowassault,c=1] ^^1^1 

execute as @s[scores={move=10..12}] at @s run particle ds:stars ^^0.25^1 
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=20] ~~~ 99999 1.2 9999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=10}] at @s run playsound mob.sword @a ^^1^1  1 1
execute as @s[scores={move=10}] at @s run damage @e[tag=!Frames,r=3.5] 12 override
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=3.5] knockdown 90
execute as @s[scores={move=10}] at @s run scoreboard players operation @e[tag=!Frames,r=3.5] damage += @s damageadd
execute as @s[scores={move=10}] at @s run effect @e[tag=!Frames,r=3.5] levitation 1 25 true
execute as @s[scores={move=10}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=10}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=1..11}] at @s run tag @e[tag=shadowassault] remove shadowassault
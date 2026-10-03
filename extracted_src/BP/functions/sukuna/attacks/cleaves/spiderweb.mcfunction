playanimation @s[scores={move=40}] animation.spiderweb
tag @s[scores={move=1..2}] remove form4sc

playanimation @s[scores={move=36..,Stun=1..},tag=!noStunnedAnim] animation.stunned 
scoreboard players set @s[scores={move=36..,Stun=1..}] move 2

scoreboard players set @s[scores={move=4..35}] Frames 5
scoreboard players set @s[scores={move=4..}] Move 6
scoreboard players set @s[scores={move=6..35}] Camera 6

scoreboard players set @a[scores={move=10..11}] atk 2

execute as @s[scores={move=5..35}] at @s run tp @s ~~~

execute as @s[scores={move=36..}] at @s if block ~~-1~ air run scoreboard players set @s Stun 5

execute as @s[scores={move=30}] at @s run particle ds:dirt2
execute as @s[scores={move=30}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=30}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=30}] at @s run camerashake add @a[r=20] 1 0.2

execute as @s[scores={move=28}] at @s run particle ds:spiderweb1

execute as @s[scores={move=10}] at @s run camerashake add @a[r=20] 4 0.2
execute as @s[scores={move=10}] at @s run playsound mob.dismantle @a[r=100] ~~~ 9999 1.1 9999
execute as @s[scores={move=9..10}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=10}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.55 9999
execute as @s[scores={move=10}] at @s run summon gg:impact_frame
execute as @s[scores={move=9..10}] at @s run tag @e[type=gg:impact_frame,c=1] add Frames
execute as @s[scores={move=8}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=5..8}] at @s run fill ~2~2~2 ~-2~-2~-2 air [] replace light_block
execute as @s[scores={move=10}] at @s run particle ds:dirt02
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2
execute as @s[scores={move=10}] at @s run particle ds:ground_slam3
execute as @s[scores={move=10}] at @s run particle ds:dirt4
execute as @s[scores={move=10}] at @s run particle ds:spiderweb2
execute as @s[scores={move=9..10}] at @s run particle ds:spiderweb3 ~~0.1~
execute as @s[scores={move=10}] at @s run particle ds:spiderweb4
execute as @s[scores={move=10}] at @s run particle ds:spiderweb5
execute as @s[scores={move=10}] at @s run particle ds:crater3
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=15] knockdown 20
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=15] Stun 35
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=15] Hit 10
execute as @s[scores={move=10}] at @s run scoreboard players add @e[tag=!Frames,r=15] Evade 20
execute as @s[scores={move=10}] at @s run damage @e[tag=!Frames,r=15] 30 override
execute as @s[scores={move=10}] at @s run playsound mob.wither.hurt  @a[r=100] ~~~ 99999 0.5 99999

execute as @s[scores={move=10}] at @s run execute as @e[tag=!Frames,r=15] at @s run scoreboard players add @p[tag=sukuna,c=1,rm=1] fuga 15

execute as @s[scores={move=8}] at @s if entity @e[tag=griefable] run effect @e[r=20] resistance 1 10 true
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~~3~2
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~~3~-2
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~2~3~
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~-2~3~ 
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~-3~3~3
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~3~3~-3
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~3~3~3
execute as @s[scores={move=7}] at @s run summon ds:limitless_explosion ~-3~3~-3
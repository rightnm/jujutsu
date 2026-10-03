playanimation @s[scores={move=74}] animation.mahoraga.kick_slam

execute as @s[scores={move=53..}] at @s run tp @s ~~~
execute as @s[scores={move=60}] at @s positioned ^^^7 run tag @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] add SlamKick
execute as @s[scores={move=60}] at @s positioned ^^^7 run scoreboard players add @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=60}] at @s positioned ^^^7 run scoreboard players add @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] knockdown 80
execute as @s[scores={move=60}] at @s  unless entity @e[scores={ab=1..},r=10] run summon ds:mahoraga_knockback1
execute as @s[scores={move=60}] at @s positioned ^^^7 run effect @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] levitation 1 40 true
execute as @s[scores={move=60}] at @s positioned ^^^7 run effect @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] slow_falling 5 2 true
execute as @s[scores={move=60}] at @s positioned ^^^7 run scoreboard players add @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=60}] at @s positioned ^^^7 run scoreboard players add @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=60}] at @s positioned ^^^7 run damage @e[c=1,r=6.99,tag=!Frames,tag=!mahoraga_tame] 12 entity_attack entity @s
execute as @s[scores={move=60}] at @s positioned ^^^7 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=60}] at @s positioned ^^^7 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=60}] at @s positioned ^^^7 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=60}] at @s positioned ^^^7 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=59}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=1..55}] at @s run tag @e[rm=70,tag=SlamKick] remove SlamKick
execute as @s[scores={move=3..55}] at @s unless entity @e[tag=SlamKick,c=1] run scoreboard players set @s move 2

effect @s[scores={move=21..}] slowness 1 10 true
playanimation @s[scores={move=50}] animation.mahoraga.kick_slam2

tag @e[scores={Frames=1..},tag=SlamKick] remove SlamKick

execute as @s[scores={move=30}] at @s run particle ds:dirt2 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:dirt4 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:ground_slam1 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:ground_slam2 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:ground_slam3 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:ground_slam4 ^^^2.5
execute as @s[scores={move=30}] at @s run particle ds:leap ^^^2.5
execute as @s[scores={move=30..46}] at @s run execute as @e[tag=SlamKick,c=1] at @s run tp @s ~~~ facing @e[family=mahoraga,c=1]
execute as @s[scores={move=30..46}] at @s run execute as @e[tag=SlamKick,c=1] at @s run tp @e[family=mahoraga,c=1,scores={move=1..46,chance=5}] ^^^3.5 facing @s
execute as @s[scores={move=30}] at @s run scoreboard players add @e[c=1,tag=SlamKick,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=30}] at @s run scoreboard players add @e[c=1,tag=SlamKick,tag=!Frames,tag=!mahoraga_tame] knockdown 80
execute as @s[scores={move=30}] at @s run scoreboard players add @e[c=1,tag=SlamKick,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=30}] at @s run scoreboard players add @e[c=1,tag=SlamKick,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=30}] at @s run damage @e[c=1,tag=SlamKick,tag=!Frames,tag=!mahoraga_tame] 20 entity_attack entity @s
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=30}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=30}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=30}] at @s run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=25}] at @s run spreadplayers ~ ~ 1 2 @e[tag=SlamKick,c=1]
execute as @s[scores={move=1..25}] at @s run execute as @e[tag=SlamKick,c=1] at @s run scoreboard players set @s knockdown 25
execute as @s[scores={move=1..25}] at @s run execute as @e[tag=SlamKick,c=1] at @s run damage @s 10
execute as @s[scores={move=24..25}] at @s run effect @e[tag=SlamKick,c=1] slow_falling 0 20 true
execute as @s[scores={move=23..25}] at @s run effect @e[r=40] resistance 1 5 true
execute as @s[scores={move=24}] at @s run execute as @e[tag=SlamKick,c=1] at @s run tp @s ~~0.05~
execute as @s[scores={move=10..24}] at @s run  kill @e[type=item,r=40]
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-5~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-5~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-8~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-8~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-12~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-12~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-15~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-15~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-18~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-18~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-21~
execute as @s[scores={move=24}] at @s run summon ds:red_reversal ~~-21~
execute as @s[scores={move=1..15}] at @s run tag @e[tag=SlamKick] remove SlamKick

playanimation @s[scores={move=33..}] animation.absorption.ab1

tag @s[scores={move=1..2},tag=form1] remove form1

tag @s[scores={move=30..,Stun=1..},tag=form1] remove form1
playanimation @s[scores={move=30..,Stun=1..}] animation.stunned
scoreboard players set @s[scores={move=30..,Stun=1..}] move 0

scoreboard players set @s[scores={move=15..}] Move 15
scoreboard players set @s[scores={move=20..21}] Camera 5

scoreboard players set @s[scores={move=21}] atk 2

execute as @s[scores={move=25..30}] at @s run playsound mob.electricity @a[r=10] ~~~ 0.25 2.5

execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run particle ds:absorption_ex
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run particle ds:large_impact1
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run particle ds:large_impact2
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run particle ds:impact2
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam2
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run playsound mob.electricity @a[r=25] ~~~ 9999 0.95 9999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=25] ~~~ 9999 0.95 9999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=25] 1 0.15

execute as @s[scores={move=20}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 5 override
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Stun 30
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.9] Evade 5
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s absorption
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage /= five endurance
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s damageadd

execute as @s[scores={move=21}] at @s run function damages/electric_damage
execute as @s[scores={move=15}] at @s run function damages/electric_damage
execute as @s[scores={move=11}] at @s run function damages/electric_damage

execute as @s[scores={move=14,absorption=50..}] at @s anchored eyes positioned ^^^1.5 run particle ds:absorption_ex
execute as @s[scores={move=14,absorption=50..}] at @s anchored eyes positioned ^^^1.5 run particle ds:dirt3
execute as @s[scores={move=14,absorption=50..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.electricity @a[r=25] ~~~ 9999 0.95 9999
execute as @s[scores={move=14,absorption=50..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=25] ~~~ 9999 0.5 9999
execute as @s[scores={move=14,absorption=50..}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=25] 2 0.15


execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 5 override
execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3
execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Stun 30
execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.9] Evade 5
execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s absorption
execute as @s[scores={move=14,absorption=50..}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage /= seven endurance

execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^0.5 run particle ds:invert
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^0.5 run particle ds:blue_tint
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^0.5 run summon gg:impact_Frame
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^1.5 run particle ds:absorption_ex
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^1.5 run particle ds:dirt3
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.electricity @a[r=25] ~~~ 9999 0.5 9999
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=25] ~~~ 9999 0.5 9999
execute as @s[scores={move=10,absorption=150..}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=25] 4 0.15

execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 5 override
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Stun 30
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.9] Evade 5
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s absorption
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage /= nine endurance
execute as @s[scores={move=10,absorption=150..}] at @s positioned ^^^3 run effect @e[tag=!Frames,r=2.9] levitation 1 20 true
execute as @s[scores={move=10,absorption=150..}] at @s run summon ds:red_reverse ^^^1
execute as @s[scores={move=10,absorption=150..}] at @s if entity @p[tag=griefable] run effect @e[r=20] resistance 1 10 true
execute as @s[scores={move=10,absorption=150..}] at @s if entity @p[tag=griefable] run summon ds:energy_explosion ~~~

execute as @s[scores={move=15}] at @s positioned ^^1^3 run particle ds:absorption_leftover

scoreboard players set @s[scores={move=1..5}] Camera 1

scoreboard players remove @s[scores={absorption=5..,move=20}] absorption 5
scoreboard players remove @s[scores={absorption=50..,move=14}] absorption 5
scoreboard players remove @s[scores={absorption=150..,move=10}] absorption 5
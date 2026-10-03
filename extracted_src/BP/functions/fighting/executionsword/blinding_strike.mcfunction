playanimation @s[scores={move=50}] animation.executioners_ab5

tag @e[scores={move=1..2}] remove wep5

scoreboard players set @s[scores={move=1..12}] Camera 5
scoreboard players set @s[scores={move=1..12}] Frames 5
scoreboard players set @s[scores={move=7..}] Move 4

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=45}] at @s anchored eyes positioned ^^^2 run playsound mob.enderdragon.flap @a[r=50] ~~~ 99999 0.8 9

scoreboard players set @e[scores={move=10..11}] atk 2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2 run playsound mob.enderdragon.flap @a[r=50] ~~~ 99999 2 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2 run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 2 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2 run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.8 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2 run function fighting/executionsword/blinding_strike2
execute as @s[scores={move=10}] at @s run particle ds:crater
execute as @s[scores={move=10}] at @s run particle ds:rubble3
execute as @s[scores={move=10}] at @s run particle ds:leap
execute as @s[scores={move=10}] at @s run camerashake add @a[r=35] 2 0.15
execute as @s[scores={move=9}] at @s positioned ^^^1 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^2 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^3 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^4 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^5 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^6 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^7 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^8 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^9 if block ^^1^1 air run tp @s ~~~~
execute as @s[scores={move=9}] at @s positioned ^^^10 if block ^^1^1 air run tp @s ~~~~


execute as @s[scores={move=11}] at @s run playsound portal.travel @a[r=40] ~~~ 9999 14 9999
execute as @s[scores={move=11}] at @s run playsound mob.wither.shoot @a[r=40] ~~~ 9999 0.95 9999
execute as @s[scores={move=11}] at @s run playsound mob.slash1 @a[r=40] ~~~ 9999 1.5 9999
execute as @s[scores={move=11}] at @s run playsound beacon.power @a[r=50] ~~~ 9999 5 9999

execute as @s[scores={move=3..8}] at @s unless entity @e[tag=blindingstrike,r=50] run scoreboard players set @s Stun 15
execute as @s[scores={move=3..8}] at @s unless entity @e[tag=blindingstrike,r=50] run scoreboard players set @s AfterAnim 10
execute as @s[scores={move=3..8}] at @s unless entity @e[tag=blindingstrike,r=50] run scoreboard players set @s move 2


execute as @s[scores={move=5..10}] at @s if entity @e[tag=blindingstrike,r=50] run playanimation @s animation.executioners_ab5b
execute as @s[scores={move=5..10}] at @s if entity @e[tag=blindingstrike,r=50] run playanimation @e[tag=blindingstrike,c=1] animation.executioners_ab5b2
execute as @s[scores={move=5..10}] at @s if entity @e[tag=blindingstrike,r=50] run scoreboard players set @s move 201

execute as @s[scores={move=100..}] at @s unless block ~~~ air run tp @s ~~0.15~
execute as @s[scores={move=100..}] at @s unless block ~~~ air run tp @s ~~0.25~
execute as @s[scores={move=100..}] at @s run tp @s @s
execute as @s[scores={move=100..}] at @s run tp @e[tag=blindingstrike,r=50,c=1] ^^^0.9 facing @s
execute as @s[scores={move=100..}] at @s run scoreboard players set @s Camera 5
execute as @s[scores={move=100..}] at @s run scoreboard players set @s Frames 5
execute as @s[scores={move=100..}] at @s run scoreboard players set @s Move 5
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[tag=blindingstrike,c=1] Stun 5
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[tag=blindingstrike,c=1] Camera 5
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[tag=blindingstrike,c=1] Frames 5

execute as @s[scores={move=100..}] at @s run camera @s set minecraft:free pos ^6^1.15^0.45 facing ^^1.25^0.45

execute as @s[scores={move=196}] at @s run camera @s fade time 0.25 0.05 0.05 color 255 255 255
execute as @s[scores={move=184}] at @s run camera @s fade time 0.1 1 1 color 255 255 255
execute as @s[scores={move=191}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=190}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=189}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=186..188}] at @s run title @s[tag=!impactframesoff] title §l
execute as @s[scores={move=196}] at @s run particle ds:rising_strike1 ^^1.25^0.8
execute as @s[scores={move=195..196}] at @s run particle ds:judgement_stars ^^1.5^0.8
execute as @s[scores={move=197..}] at @s run camerashake add @a[r=20] 4 0.2 
execute as @s[scores={move=170..185}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=166..169}] at @s run title @s[tag=!impactframesoff] title §l

execute as @s[scores={move=198}] at @s run playsound mob.sword @a[r=50] ~~~ 9999 0.5 9999

scoreboard players set @s[scores={move=100..165}] move 2


execute as @s[scores={move=170}] at @s run execute as @e[tag=blindingstrike,r=20,c=1] at @s run particle ds:judgement_stars ~~1.7~
execute as @s[scores={move=170}] at @s run execute as @e[tag=blindingstrike,r=20,c=1] at @s run particle ds:rising_strike2 ~~~
execute as @s[scores={move=170}] at @s run tag @e[tag=blindingstrike,r=20,c=1,tag=!soul_damage] add soul_damage
execute as @s[scores={move=170}] at @s run damage @e[tag=blindingstrike,r=20,c=1] 35 suicide
execute as @s[scores={move=170}] at @s run scoreboard players operation @e[tag=blindingstrike,r=20,c=1] damage += @s damageadd
execute as @s[scores={move=195}] at @s run playsound portal.travel @a[r=30] ~~~ 9999 6 9999
execute as @s[scores={move=170}] at @s run execute as @e[tag=blindingstrike,r=20,c=1] at @s run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=166}] at @s run effect @a[r=20,c=1] night_vision 0 20 true
execute as @s[scores={move=170}] at @s run execute as @e[tag=blindingstrike,r=20,tag=deathsentence] at @s run function judgeman/death_sentence_hit


execute as @s[scores={move=1..14}] at @s run tag @e[tag=blindingstrike] remove blindingstrike
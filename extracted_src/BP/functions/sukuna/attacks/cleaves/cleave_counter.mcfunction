playanimation @s[scores={move=15}] animation.cleave_counter


scoreboard players set @s[scores={move=1..11}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..7}] Camera 4
scoreboard players set @e[tag=cleavecounter] Camera 4
scoreboard players set @e[tag=cleavecounter] Move 4
scoreboard players set @e[tag=cleavecounter] Stun 5

execute as @s[scores={move=14..}] at @s run tp @s @s

execute as @s[scores={move=14}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 0.4
execute as @s[scores={move=10}] at @s run particle ds:dirt2

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={punch=1..},c=1,rm=0.15] atk 2
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run tag @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] add cleavecounter
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] Stun 15
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] move 7

execute as @s[scores={move=6..7}] at @s unless entity @e[tag=cleavecounter] run scoreboard players set @s Stun 10
execute as @s[scores={move=6..7}] at @s unless entity @e[tag=cleavecounter] run scoreboard players set @s move 2

playanimation @s[scores={move=5..7}] animation.cleave_counter2

scoreboard players set @s[scores={move=4..6}] atk 2


execute as @s[scores={move=4..7}] at @s run particle ds:flashstep1
execute as @s[scores={move=2..7}] at @s run execute as @e[tag=cleavecounter,c=1] at @s run tp @s @s
execute as @s[scores={move=2..7}] at @s run execute as @e[tag=cleavecounter,c=1] at @s run tp @e[scores={move=2..7},c=1] ^^0.15^-1 facing @s

execute as @s[scores={move=4}] at @s run playsound mob.idiot @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve1 ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve2 ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve3 ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve4 ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 run execute as @e[tag=cleavecounter,c=1] at @s run particle ds:carve5 ~~1~
execute as @s[scores={move=3..6}] at @s positioned ^^^0.5 run playsound mob.slash1 @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=3..6}] at @s positioned ^^^0.5 run playsound mob.slice @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=3..6}] at @s positioned ^^^0.5 run playsound mob.cleave @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=3..6}] at @s positioned ^^^2.5 run damage @e[tag=cleavecounter,c=1] 2 override
execute as @s[scores={move=3..6}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=cleavecounter,c=1] damage += @s damageadd
execute as @s[scores={move=3..6}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=cleavecounter,c=1] Evade 25
execute as @s[scores={move=3..6}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=cleavecounter,c=1] Stun 25
execute as @s[scores={move=3..6}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=cleavecounter,c=1] Flourish 5
execute as @s[scores={move=3}] at @s run function damages/cleave_damage
execute as @s[scores={move=3..6}] at @s positioned ^^1^0.5 if entity @e[tag=cleavecounter,c=1] run scoreboard players add @p[tag=sukuna,rm=1] fuga 10
execute as @s[scores={move=1..3}] at @s run tag @e[c=1,tag=cleavecounter] remove cleavecounter

tag @e[scores={move=1..2}] remove form4s2
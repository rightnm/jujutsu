playanimation @s[scores={move=55}] animation.open_space

tag @s[scores={move=1..2}] remove wep3s

scoreboard players set @s[scores={move=1..}] Move 6
scoreboard players set @s[scores={move=1..51}] Camera 6

scoreboard players set @a[scores={move=1..}] Frames 7

execute as @s[scores={move=15..48}] at @s positioned ^^^4 run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cLet's use the open space!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}



execute as @s[scores={move=50}] at @s positioned ^^^2.25 run tag @e[tag=!Frames,r=2.3] add openspace
execute as @s[scores={move=50..51}] at @s run tp @s @s

scoreboard players set @s[scores={move=33..40}] move 30

execute as @s[scores={move=27..50}] at @s run tp @e[tag=openspace,c=1] ^^^0.75 
execute as @s[scores={move=26}] at @s run tp @e[tag=openspace,c=1] ^-0.15^^0.6 
execute as @s[scores={move=25}] at @s run tp @e[tag=openspace,c=1] ^-0.2^^0.5 
execute as @s[scores={move=24}] at @s run tp @e[tag=openspace,c=1] ^-0.25^^0.4 
execute as @s[scores={move=23}] at @s run tp @e[tag=openspace,c=1] ^-0.3^^0.5 
execute as @s[scores={move=21..22}] at @s run tp @e[tag=openspace,c=1] ^^^-1

scoreboard players set @e[tag=openspace,r=50] Stun 25
playanimation @e[tag=openspace,r=5] animation.stunned 

execute as @s[scores={move=49}] at @s run  camera @s set minecraft:free pos ^2^3^3 facing ~~~
execute as @s[scores={move=48}] at @s run  camera @s set minecraft:free ease 1 in_sine pos ^-2^0.5^2 facing ^^^
execute as @s[scores={move=19..21}] at @s run  camera @s set minecraft:free pos ^^2^5 facing ^^8^-15


execute as @s[scores={move=22}] at @s run playsound mob.heavy_swing @a[r=100] ~~1~ 9999 1.15 9999
execute as @s[scores={move=20}] at @s run particle ds:large_impact1 ^^1^-1
execute as @s[scores={move=20}] at @s run particle ds:large_impact2 ^^1^-1
execute as @s[scores={move=20}] at @s run particle ds:large_impact3 ^^1^-1
execute as @s[scores={move=20}] at @s run particle ds:dirt0
execute as @s[scores={move=19..20}] at @s run camerashake add @a[r=25] 4 0.1 rotational
execute as @s[scores={move=20}] at @s run effect @e[tag=openspace,c=1] levitation 1 5 true

execute as @s[scores={move=5..18},tag=!openspace2] at @s run tp @e[tag=openspace,r=5] ^^35^-40

execute as @s[scores={move=1..20}] at @s run tp @s ~~~

execute as @s[scores={move=1..6}] at @s run tag @e[tag=openspace] remove openspace
execute as @s[scores={move=6}] at @s run tp @s ~~~ ~180


titleraw @s[scores={move=7..15}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §eSPAM PUNCH §l§f>\n\n"}]}
title @s[scores={move=7..13}] title §l
execute as @s[scores={move=7..13,punch=1},tag=!openspace2] at @s run execute as @e[tag=openspace,c=1] at @s run tp @s ~~20~
tag @s[scores={move=7..13,punch=1}] add openspace2
scoreboard players set @s[scores={move=7..13,punch=1}] move 131

tag @s[scores={move=1..3}] remove openspace2

execute as @s[scores={move=3..49},tag=!openspace2] at @s unless entity @e[tag=openspace] run scoreboard players set @s move 2

execute as @s[scores={move=49}] at @s run playsound mob.openspace @a[r=100] ~~1~ 99999 1 9999

execute as @s[scores={move=1..6},tag=!openspace2] at @s run tag @e[tag=openspace] remove openspace
execute as @s[scores={move=1..6},tag=!openspace2] at @s run tag @e[tag=openspace2] remove openspace2
scoreboard players set @s[scores={move=1..6},tag=!openspace2] move 2

playanimation @s[scores={move=130},tag=openspace2] animation.open_space2

execute as @s[scores={move=100..}] at @s run tp @s @s
execute as @s[scores={move=115..}] at @s run execute as @e[tag=openspace] at @s run tp @s @s
execute as @s[scores={move=115..}] at @s run execute as @e[tag=openspace] at @s run tp @s ~~~
execute as @s[scores={move=116..}] at @s run execute as @e[tag=openspace,c=1] at @s run tp @e[tag=openspace2,c=1] ^^^0.1 facing @s
execute as @s[scores={move=115}] at @s run function damages/blunt_damage

execute as @s[scores={move=128..130}] at @s run particle ds:flashstep1 ~~~

execute as @s[scores={move=115}] at @s if entity @e[tag=!Frames,r=3.7] run playsound mob.shock1 @a[r=25] ~~~ 999999 0.8 999999
execute as @s[scores={move=115}] at @s run camerashake add @a[r=10] 4 0.35 rotational

execute as @s[scores={move=115..}] at @s run scoreboard players set @a[r=20] Camera 6
execute as @s[scores={move=115..}] at @s run scoreboard players set @a[r=20] Move 6
execute as @s[scores={move=116..}] at @s run camera @a[r=20] set minecraft:free pos ^5^3^1 facing ^^^1

execute as @s[scores={move=125}] at @s run particle ds:invert ^2^1^1
execute as @s[scores={move=126}] at @s run playsound mob.shock1 @a[r=25] ~~~ 999999 2.25 999999
execute as @s[scores={move=126}] at @s run camerashake add @a[r=25] 2 0.25
execute as @s[scores={move=126}] at @s run effect @s darkness 2 1 true

execute as @s[scores={move=112..115}] at @s run summon ds:red_reverse ^2^^-0.15
execute as @s[scores={move=115}] at @s run scoreboard players set @e[tag=!Frames,r=3.7] Stun 25
execute as @s[scores={move=115}] at @s run scoreboard players set @e[tag=!Frames,r=3.7] knockdown 80
execute as @s[scores={move=115}] at @s run scoreboard players set @e[tag=!Frames,r=3.7] Hit 15
execute as @s[scores={move=115}] at @s run scoreboard players add @e[tag=!Frames,r=3.7] Evade 15
execute as @s[scores={move=115}] at @s run damage @e[tag=!Frames,r=3.7] 30 override entity @s
execute as @s[scores={move=115}] at @s  run scoreboard players operation @e[tag=!Frames,r=3.7] damage += @s damageadd
execute as @s[scores={move=115}] at @s run particle ds:dirt0
execute as @s[scores={move=115}] at @s run particle ds:large_impact1 ^^^1
execute as @s[scores={move=115}] at @s run particle ds:large_impact2 ^^^1
execute as @s[scores={move=115}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={move=115}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=115}] at @s run playsound mob.wither.break_block @a[r=25] ~~~ 9999 1.25 9999
execute as @s[scores={move=113..115}] at @s run tag @e[tag=openspace] remove openspace
execute as @s[scores={move=113..115}] at @s run tag @e[tag=openspace2] remove openspace2

execute as @s[scores={move=100..105}] at @s run scoreboard players set @s move 2

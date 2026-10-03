playanimation @s[scores={move=18}] animation.carve
tag @s[scores={move=1..2}] remove wep1s2

scoreboard players set @s[scores={move=14..,Stun=1..}] move 2

scoreboard players set @s[scores={move=4..12}] Move 6
scoreboard players set @s[scores={move=7..12}] Camera 6
scoreboard players set @a[scores={move=7..9}] atk 2

effect @s[scores={move=12..}] speed 0 20 true

execute as @s[scores={move=1..12}] at @s positioned ^^^2.25 run tp @e[tag=!Frames,r=2.249] ~~~ facing @s
execute as @s[scores={move=3..10}] at @s positioned ^^^2.25 run tp @s @s

execute as @s[scores={move=10..11}] at @s positioned ^^^2.25 unless entity @e[tag=!Frames,r=2.249] run scoreboard players set @s move 2

execute as @s[scores={move=12}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.15 99999

execute as @s[scores={move=8}] at @s positioned ^^^2.25  run playsound mob.shock1 @a[r=100] ~~~ 999999 3 999999
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run playsound mob.shock1 @a[r=100] ~~~ 999999 3.5 999999
execute as @s[scores={move=5..7}] at @s positioned ^^^2.25  run playsound mob.slash1 @a[r=100] ~~~ 999999 2.75 999999
execute as @s[scores={move=6}] at @s positioned ^^^2.25  run playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.25 0.1 rotational
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.3 0.25 rotational
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run particle ds:carve1 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run particle ds:carve2 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run particle ds:carve3 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run particle ds:carve4 ~~1~
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run particle ds:carve5 ~~1~
execute as @s[scores={move=9}] at @s positioned ^^^2.25  run particle ds:red_tint ^^1^0.25 
execute as @s[scores={move=9}] at @s positioned ^^^2.25  run particle ds:red_tint ^^1^-5
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Stun 25
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Hit 16
execute as @s[scores={move=7}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] Evade 10
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] Flourish 3

execute as @s[scores={move=3}] at @s positioned ^^^2.25 if entity @e[tag=!Frames,r=2.249] run scoreboard players add @s fuga 12

execute as @s[scores={move=3}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run  tag @s add cleaved_finisher
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run  scoreboard players set @s dying 31

execute as @s[scores={move=7}] at @s positioned ^^^2.25  run damage @e[tag=!Frames,r=2.249] 15 override
execute as @s[scores={move=6}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damage += @s damageadd

execute as @s[scores={move=3}] at @s positioned ^^^2.25  run damage  @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] 50 override

execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:blood ~~~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:blood ~~~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:blood ~~~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:blood_splat2 ~~~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:carve1 ~~1~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:carve2 ~~1~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:carve3 ~~1~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:carve4 ~~1~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:carve5 ~~1~
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:red_tint ^^1^0.25 

 
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run particle ds:red_tint ^^1^-5
execute as @s[scores={move=3}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damagehalf += @e[tag=!Frames,r=2.249,c=1] strength

execute as @s[scores={move=3}] at @s positioned ^^^2.25 run function damages/cleave_damage
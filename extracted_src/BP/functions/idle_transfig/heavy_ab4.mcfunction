playanimation @s[scores={move=60..61}] animation.mahito.heavy_ab4

tag @s[scores={move=1..2},tag=wep4m] remove wep4m

execute as @s[scores={move=50}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.75 99999
execute as @s[scores={move=59}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 0.5 99999

execute as @s[scores={move=15..16}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.6 99999


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10



tag @s[scores={move=5..48}] add Frames
tag @s[scores={move=1..5}] remove Frames
scoreboard players set @s[scores={move=47..48}] Frames 48



scoreboard players random @s[scores={move=36}] blackflashchance 1 269
scoreboard players set @s[scores={move=36},tag=blackflashrig] blackflashchance 7


#Swing 1
execute as @s[scores={move=33..48}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=33..48}] at @s run playsound mob.whoop1 @a[r=25] ^^1^  99999 0.85 99999
execute as @s[scores={move=48}] at @s run playsound mob.whoosh1 @a[r=25] ^^1^  99999 1 99999
execute as @s[scores={move=33..48}] at @s run camerashake add @a[r=5] 0.25 0.15

execute as @s[scores={move=48}] at @s run effect @s speed 1 10 true

execute as @s[scores={move=32}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=33..48}] atk 3
execute as @s[scores={move=48}] at @s run particle ds:swift_air
execute as @s[scores={move=30..48}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~ facing @e[scores={move=30..48},c=1]
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run scoreboard players add @s Evade 1
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 1.5 99999
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run damage @s 1 override
execute as @s[scores={move=30..48}] at @s run execute as @e[tag=!Frames,r=6] at @s run scoreboard players set @s Flourish 2
execute as @s[scores={move=48}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=44}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=43}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=36}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=35}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=31}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=30..48}] at @s run particle ds:fast_spin1 ~~1~
execute as @s[scores={move=30..48}] at @s run particle ds:fast_spin2 ~~1~
execute as @s[scores={move=30..48}] at @s run particle ds:fast_spin3 ~~1~
execute as @s[scores={move=31}] at @s run function damages/blunt_damage


#Swing 2
execute as @s[scores={move=18}] at @s run scriptevent ds:knockback 8
execute as @s[scores={move=15}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 0.65 99999
execute as @s[scores={move=20}] at @s run playsound mob.heavy_swing @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=5] 0.15 0.15

execute as @s[scores={move=18}] at @s run effect @s speed 1 10 true

execute as @s[scores={move=14..15}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=15..16}] atk 3
execute as @s[scores={move=15}] at @s run particle ds:swift_air
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15..16}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={move=15},c=1]
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 16
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s knockdown 25
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=15},c=1] damageadd 
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 25 override
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 7
execute as @s[scores={move=15..16}] at @s run particle ds:large_impact1 ^^^2.5
execute as @s[scores={move=15..16}] at @s run particle ds:rubble3 ^^^2.5
execute as @s[scores={move=15..16}] at @s run particle ds:heavy_downslam1b ^^^2.5
execute as @s[scores={move=15..16}] at @s run particle ds:heavy_downslam2b ^^^2.5
execute as @s[scores={move=15..16}] at @s run particle ds:heavy_downslam3b ^^^2.5
execute as @s[scores={move=15}] at @s run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=15}] at @s run particle ds:fissure1 ^^^2.5
execute as @s[scores={move=15}] at @s run particle ds:fissure2 ^^^2.5
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=25] ^^1^1  99999 0.65 99999
execute as @s[scores={move=15}] at @s run function damages/blunt_damage




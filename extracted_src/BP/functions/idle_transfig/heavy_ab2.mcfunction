playanimation @s[scores={move=50..51}] animation.mahito.heavy_ab2

tag @s[scores={move=1..2},tag=wep2m] remove wep2m

tag @s[scores={move=36..,Stun=1..},tag=wep2m] remove wep2m
playanimation @s[scores={move=36..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=36..,Stun=1..}] move 0

execute as @s[scores={move=46..47}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.75 99999
execute as @s[scores={move=47}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 0.5 99999

execute as @s[scores={move=15..16}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.6 99999


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10



tag @s[scores={move=33..35}] add Frames
tag @s[scores={move=1..5}] remove Frames
scoreboard players set @s[scores={move=33..35}] Frames 35



scoreboard players random @s[scores={move=36}] blackflashchance 1 269
scoreboard players set @s[scores={move=36},tag=blackflashrig] blackflashchance 7


#Swing 1
execute as @s[scores={move=33}] at @s run scriptevent ds:knockback 6
execute as @s[scores={move=33}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 0.5 99999
execute as @s[scores={move=39}] at @s run playsound mob.heavy_swing @a[r=25] ^^1^1  99999 1 99999
execute as @s[scores={move=30..33}] at @s run camerashake add @a[r=5] 0.15 0.15

execute as @s[scores={move=35}] at @s run effect @s speed 1 10 true

execute as @s[scores={move=28}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=33..34}] atk 3
execute as @s[scores={move=33}] at @s run particle ds:swift_air
execute as @s[scores={move=30..33}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=30..34}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={move=30..34},c=1]
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 12
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=30..33},c=1] damageadd 
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 2 99999
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 12
execute as @s[scores={move=30..33}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Flourish 2

execute as @s[scores={move=30}] at @s run function damages/blunt_damage

#Swing 2
execute as @s[scores={move=20}] at @s run scriptevent ds:knockback 7
execute as @s[scores={move=20}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 0.65 99999
execute as @s[scores={move=26}] at @s run playsound mob.heavy_swing @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=16..20}] at @s run camerashake add @a[r=5] 0.15 0.15

execute as @s[scores={move=22}] at @s run effect @s speed 1 10 true

execute as @s[scores={move=14}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=16..21}] atk 3
execute as @s[scores={move=20}] at @s run particle ds:swift_air
execute as @s[scores={move=20}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=16..21}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={move=16..21},c=1]
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 12
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Flourish 10
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=16..20},c=1] damageadd 
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 2.25 99999
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 16 override
execute as @s[scores={move=16..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 7
execute as @s[scores={move=16}] at @s run function damages/blunt_damage


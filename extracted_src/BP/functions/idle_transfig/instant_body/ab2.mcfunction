playanimation @s[scores={move=30..31}] animation.instant_body.ab2

tag @s[scores={move=1..2},tag=wep2m] remove wep2m

tag @s[scores={move=19..,Stun=1..},tag=wep2m] remove wep2m
playanimation @s[scores={move=19..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=19..,Stun=1..}] move 0


execute as @s[scores={move=30}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.25 99999

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10

#Swing 1
scoreboard players set @s[scores={move=24..25}] atk 2


execute as @s[scores={move=25}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=27}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 0.75 99999
execute as @s[scores={move=25}] at @s run camerashake add @a[r=5] 0.75 0.3
execute as @s[scores={move=26}] at @s run effect @s speed 1 3 true
execute as @s[scores={move=22..23}] at @s run effect @s clear speed
tag @s[scores={move=23..26}] add Frames
tag @s[scores={move=21..22}] remove Frames
scoreboard players set @s[scores={move=25..26}] Frames 5

execute as @s[scores={move=25}] at @s run particle ds:double_jump3
execute as @s[scores={move=25}] at @s anchored eyes positioned ^-0.5^^-2 run particle ds:instant_star
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 10
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run scoreboard players operation @s damage += @e[scores={move=24..25},c=1] damageadd 
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 2.5 99999
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run damage @s 5 override
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing  @e[scores={move=24..25},c=1]
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Flourish 3
execute as @s[scores={move=24..25}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 3

execute as @s[scores={move=24}] at @s run function damages/blunt_damage

execute as @s[scores={move=25}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 0.25 1.5
execute as @s[scores={move=25}] at @s run playsound mob.bat.takeoff @a[r=25] ~~1~ 0.25 2

#Swing 1
scoreboard players set @s[scores={move=19..20}] atk 2

execute as @s[scores={move=20}] at @s run scriptevent ds:knockback 7
execute as @s[scores={move=21}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 1.45 99999
execute as @s[scores={move=20}] at @s run camerashake add @a[r=5] 0.75 0.3
execute as @s[scores={move=20}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=17..18}] at @s run effect @s clear speed
tag @s[scores={move=18..20}] add Frames
tag @s[scores={move=15..16}] remove Frames
scoreboard players set @s[scores={move=19..20}] Frames 6

execute as @s[scores={move=20}] at @s run particle ds:double_jump3
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^-1 run particle ds:instant_star
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 10
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run scoreboard players operation @s damage += @e[scores={move=18..20},c=1] damageadd 
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.slice4 @a[r=50] ~~1~ 99999 2.5 99999
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.slash1 @a[r=50] ~~1~ 99999 2.25 99999
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run damage @s 8 override entity @e[scores={move=18..20},c=1]
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing  @e[scores={move=18..20},c=1]
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Flourish 3
execute as @s[scores={move=18..20}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 3

execute as @s[scores={move=12}] at @s run function damages/slash_damage


execute as @s[scores={move=20}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 0.25 1.5
execute as @s[scores={move=20}] at @s run playsound mob.bat.takeoff @a[r=25] ~~1~ 0.25 2

#Swing 1
scoreboard players set @s[scores={move=14..15}] atk 2

execute as @s[scores={move=16}] at @s run scriptevent ds:knockback 7
execute as @s[scores={move=18}] at @s run playsound mob.whoosh3 @a[r=25] ^^1^1  99999 2.25 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=5] 0.75 0.3
execute as @s[scores={move=15}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=17..18}] at @s run effect @s clear speed
tag @s[scores={move=12..15}] add Frames
tag @s[scores={move=9..10}] remove Frames
scoreboard players set @s[scores={move=14..15}] Frames 6

execute as @s[scores={move=15}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 0.25 1.5
execute as @s[scores={move=15}] at @s run playsound mob.bat.takeoff @a[r=25] ~~1~ 0.25 2

execute as @s[scores={move=15}] at @s run particle ds:double_jump3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^-1 run particle ds:instant_star
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 10
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run scoreboard players operation @s damage += @e[scores={move=12..15},c=1] damageadd 
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 99999 2 99999
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] unless entity @s[scores={health_detect=0..20}] at @s run damage @s 10 override entity @e[scores={move=13..15},c=1]
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing  @e[scores={move=13..15},c=1]
execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Flourish 3
effect @s[scores={move=0..9},type=!player] clear speed

execute as @s[scores={move=12..15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=5] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 3
execute as @s[scores={move=12}] at @s run function damages/slash_damage




playanimation @s[scores={move=23..24}] animation.mahito.blade_ab1

tag @s[scores={move=1..2},tag=wep1m] remove wep1m

tag @s[scores={move=19..,Stun=1..},tag=wep1m] remove wep1m
playanimation @s[scores={move=19..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=19..,Stun=1..}] move 0

execute as @s[scores={move=23..24}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=20}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.25 99999

scoreboard players random @s[scores={move=19}] blackflashchance 1 269
scoreboard players set @s[scores={move=19},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=13..16}] atk 2


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10
execute as @s[scores={move=15}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=17}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 0.75 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=5] 0.75 0.3
execute as @s[scores={move=17}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=13..14}] at @s run effect @s clear speed
tag @s[scores={move=10..17}] add Frames
tag @s[scores={move=7..9}] remove Frames
scoreboard players set @s[scores={move=12..17}] Frames 5

execute as @s[scores={move=17}] at @s run particle ds:ground_slam1
execute as @s[scores={move=17}] at @s anchored eyes positioned ^-0.5^^-2 run particle ds:instant_star
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 10
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=10..16},c=1] damageadd 
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.slice4 @a[r=50] ~~1~ 99999 0.8 99999
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 6 override
execute as @s[scores={move=10..16}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 7
execute as @s[scores={move=12}] at @s run function damages/slash_damage


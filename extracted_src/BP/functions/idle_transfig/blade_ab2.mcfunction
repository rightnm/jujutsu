playanimation @s[scores={move=23..24}] animation.mahito.blade_ab2

tag @s[scores={move=1..2},tag=wep2m] remove wep2m



execute as @s[scores={move=23..24}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=20}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.25 99999

scoreboard players set @s[scores={move=11..23}] atk 2


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10
execute as @s[scores={move=10..22}] at @s run scriptevent ds:knockback 0.5
execute as @s[scores={move=10..22}] at @s run playsound random.whoop @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=10..22}] at @s run camerashake add @a[r=5] 0.25 0.15
execute as @s[scores={move=22}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=10..12}] at @s run effect @s clear speed
tag @s[scores={move=10..23}] add Frames
tag @s[scores={move=7..9}] remove Frames
scoreboard players set @s[scores={move=8..23}] Frames 5

execute as @s[scores={move=20..22},type=!player] at @s run tp @s ~~0.8~ 

execute as @s[scores={move=22}] at @s run particle ds:ground_slam1
execute as @s[scores={move=22}] at @s run particle ds:impact_vfx1 ~~0.5~
execute as @s[scores={move=22}] at @s run particle ds:instant_star ~~0.5~
execute as @s[scores={move=18}] at @s run particle ds:instant_star ~~0.5~
execute as @s[scores={move=15}] at @s run particle ds:instant_star ~~0.5~
execute as @s[scores={move=12}] at @s run particle ds:instant_star ~~0.5~
execute as @s[scores={move=11}] at @s run particle ds:impact_vfx1 ~~0.5~
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run scoreboard players add @s Evade 1
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run playsound mob.slice4 @a[r=50] ~~1~ 99999 2 99999
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run scoreboard players set @s Hit 2
execute as @s[scores={move=10..22}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run damage @s 1 override
execute as @s[scores={move=10}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=4] at @s run scoreboard players operation @s damage += @e[scores={move=10..22},c=1] damageadd 

execute as @s[scores={move=12}] at @s run function damages/slash_damage



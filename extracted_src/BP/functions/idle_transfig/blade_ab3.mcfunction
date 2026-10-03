playanimation @s[scores={move=40..41}] animation.mahito.blade_ab3

tag @s[scores={move=1..2},tag=wep3m] remove wep3m



execute as @s[scores={move=40..41}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999


scoreboard players set @s[scores={move=20..21}] atk 2


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10

execute as @s[scores={move=25..}] at @s if block ~~-0.25~ air run scriptevent ds:downfall
execute as @s[scores={move=25..35}] at @s run scriptevent ds:knockback 1.8
execute as @s[scores={move=22..35}] at @s run camerashake add @a[r=5] 0.09 0.09



tag @s[scores={move=21..23}] add Frames
tag @s[scores={move=18..19}] remove Frames
scoreboard players set @s[scores={move=20..23}] Frames 5

execute as @s[scores={move=36}] at @s run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=36}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.25 99999
execute as @s[scores={move=36}] at @s positioned ^^^3 run playsound mob.sharpen1 @a[r=33] ~~1~ 99999 1.33 99999
execute as @s[scores={move=35}] at @s run particle ds:bounce
execute as @s[scores={move=35}] at @s run particle ds:ground_slam1

execute as @s[scores={move=27}] at @s run particle ds:instant_star ^-0.5^0.3^
execute as @s[scores={move=23}] at @s run particle ds:instant_star  ^-0.5^0.3^
execute as @s[scores={move=21}] at @s run particle ds:instant_star  ^-0.5^0.3^


execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run tp @s ~~~ facing @e[scores={move=20},c=1,r=5] 

execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run scoreboard players add @s Evade 20
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run scoreboard players set @s Stun 33
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run playsound mob.slice3 @a[r=50] ~~1~ 99999 0.8 99999
execute as @s[scores={move=22}] at @s positioned ^^^2 run playsound mob.slash1 @a[r=33] ~~1~ 99999 1.25 99999
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run scoreboard players set @s Hit 2
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run damage @s 13 entity_attack entity @e[scores={move=20},c=1,r=5] 
execute as @s[scores={move=20}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=3] at @s run scoreboard players operation @s damage += @e[scores={move=20},c=1] damageadd 
scoreboard players set @s[scores={move=10..12}] move 3

execute as @s[scores={move=20}] at @s run function damages/slash_damage


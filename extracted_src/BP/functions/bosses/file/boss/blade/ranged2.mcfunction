playanimation @s[scores={move=65..}] animation.primesoul.blade_ranged2

tp @s[scores={move=64..},type=!player] ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=64},type=player] at @s run tp @s ~~40~
execute as @s[scores={move=36..50},type=player] at @s run execute as @e[scores={detect_health=0..},c=1,r=40,tag=!bladeranged2] at @s run tp @e[tag=bladeranged2,c=1] ~~40~

scoreboard players set @s[scores={move=21..,Move=0..15}] Move 25
scoreboard players set @s[scores={move=21..,Camera=0..15}] Camera 25

scoreboard players set @s[type=player] Frames 6

execute as @s[scores={move=63}] at @s run  particle ds:leap
execute as @s[scores={move=63}] at @s run  particle ds:large_impact1
execute as @s[scores={move=63}] at @s run  particle ds:large_impact2

execute as @s[scores={move=45..63},type=!player] at @s run execute as @p[m=!c,r=200] at @s run tp @e[type=ds:primesoul,c=1] ~ 260 ~ facing @s
execute as @s[scores={move=36..44},type=!player] at @s run tp @s ~~~ 
execute as @s[scores={move=35..63},type=player] at @s run tp @s ~~~ facing ~~-10~1

execute as @s[scores={move=36..63},type=!player] at @s run particle ds:primesoul_trg1 ~ 240.1 ~
execute as @s[scores={move=36..63},type=player] at @s run particle ds:primesoul_trg1 ~ ~-39.7 ~

execute as @s[scores={move=44},type=!player] at @s run particle ds:unparrymarker ~~2~
execute as @s[scores={move=44},type=!player] at @s run playsound music.sekiro @a[r=200] 

execute as @s[scores={move=35},type=!player] at @s run tp @s ~ 240 ~
execute as @s[scores={move=35},type=player] at @s run tp @s ~ ~-39.8 ~

execute as @s[scores={move=33..35},type=player] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=33..35},type=player] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=33..35},type=player] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=33..35},type=player] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=35}] at @s run camerashake add @a[r=200] 4 0.15 rotational
execute as @s[scores={move=35}] at @s run particle ds:invert

execute as @s[scores={move=35},type=!player] at @s run particle ds:reality_crater1 ~ 240.1 ~ 
execute as @s[scores={move=35},type=!player] at @s run particle ds:reality_crater2 ~ 240.1 ~ 

execute as @s[scores={move=34},type=player] at @s run particle ds:reality_crater1 ~ ~0.1 ~ 
execute as @s[scores={move=34},type=player] at @s run particle ds:reality_crater2 ~ ~0.1 ~ 

execute as @s[scores={move=35}] at @s run playsound mob.wither.break_block @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=35}] at @s run playsound random.explode @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=35}] at @s run playsound mob.blade2 @a[r=200] ~~~ 99999 0.85 99999
execute as @s[scores={move=35}] at @s run damage @e[tag=!Frames,family=!heroic,r=25] 50 suicide
execute as @s[scores={move=35}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=25] Hit 5
execute as @s[scores={move=35}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=25] knockdown 25


tag @s[scores={move=1..3}] remove bladeranged2



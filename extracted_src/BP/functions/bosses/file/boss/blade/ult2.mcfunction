playanimation @s[scores={move=75..}] animation.primesoul.blade_ult2



tp @s[scores={move=1..},type=!player] ~ 240 ~
execute if block ~~-0.15~ air run scriptevent ds:downfall

scoreboard players set @s[scores={move=10..}] Frames 15
scoreboard players set @s[scores={move=10..}] Move 15

execute as @s[scores={move=75}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 99999 0.7 99999
execute as @s[scores={move=75}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.5 99999

execute as @s[scores={move=56..},type=!player] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=55..}] at @s run particle ds:primesoul_trg2 ~ 240.1 ~

execute as @s[scores={move=75}] at @s run playsound music.sekiro @a[r=200] 
execute as @s[scores={move=75}] at @s run particle ds:unparrymarker ~~1~

execute as @s[scores={move=55}] at @s run particle ds:origin_blade_sweep1 ~~1~
execute as @s[scores={move=55}] at @s run particle ds:origin_blade_sweep2 ~~1~
execute as @s[scores={move=55}] at @s run particle ds:origin_blade_sweep3 ~~1~
execute as @s[scores={move=55}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 0.45 99999
execute as @s[scores={move=55}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.45 99999
execute as @s[scores={move=55}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 1 99999

execute as @s[scores={move=55}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=50] 50 
execute as @s[scores={move=55}] at @s positioned ^^^10 run scoreboard players set @e[tag=!Frames,r=50] Hit 10
execute as @s[scores={move=55}] at @s positioned ^^^10 run effect @e[tag=!Frames,r=50] levitation 1 50 true
execute as @s[scores={move=54}] at @s if entity @e[tag=!Frames,r=20,scores={Hit=1..}] run summon ds:mahoraga_knockback2
execute as @s[scores={move=55}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=50] at @s run particle ds:slice ~~0.50~
execute as @s[scores={move=55}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=50] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=55}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=50] at @s run playsound mob.slice4 @a ~~~ 0.2 0.85




tag @s[scores={move=1..3}] remove bladeult2
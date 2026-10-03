playanimation @s[scores={move=75..}] animation.primesoul.blade_ult1

tp @s[scores={move=38..},type=!player] ~ 240 ~
tp @s[scores={move=1..22},type=!player] ~ 240 ~

scoreboard players set @s[type=player] Frames 10
scoreboard players set @s[type=player] Move 10

execute as @s[scores={move=75}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 99999 0.7 99999
execute as @s[scores={move=75}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.5 99999

execute as @s[scores={move=57..},type=!player] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=55},type=!player] at @s run playsound music.sekiro @a[r=200] 
execute as @s[scores={move=55},type=!player] at @s run particle ds:unparrymarker ~~1~


execute as @s[scores={move=35}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 0.35 99999
execute as @s[scores={move=35}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.35 99999
execute as @s[scores={move=35}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 1 99999


execute as @s[scores={move=40},type=player] at @s run function bosses/file/boss/blade/trg
execute as @s[scores={move=34..37},type=player] at @s run execute as @e[tag=bladetrg,r=200,c=1] at @s run tp @e[tag=bladeult1,c=1] ^^^7 facing ~~1~
execute as @s[scores={move=34..41},type=player] at @s run execute as @e[tag=bladetrg,c=1,r=200] at @s run tp @s ~~~ facing @e[tag=bladeult,c=1]


execute as @s[scores={move=34..37},type=!player] at @s run execute as @p[m=!c,r=200] at @s run tp @e[type=ds:primesoul,c=1,tag=bladeult1] ^^^7 facing ~~1~

execute as @s[scores={move=34}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=14] 100
execute as @s[scores={move=34}] at @s positioned ^^^10 run scoreboard players set @e[tag=!Frames,r=14] Hit 10
execute as @s[scores={move=34}] at @s positioned ^^^10 run effect @e[tag=!Frames,r=14] levitation 1 25 true
execute as @s[scores={move=33}] at @s if entity @e[tag=!Frames,r=20,scores={Hit=1..}] run summon ds:mahoraga_knockback2

execute as @s[scores={move=34}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=14] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=34}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=14] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=34}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=14] at @s run playsound mob.slice4 @a ~~~ 0.2 0.85

execute as @s[scores={move=1..5}] at @s run tag @e remove bladetrg


tag @s[scores={move=1..3}] remove bladeult1
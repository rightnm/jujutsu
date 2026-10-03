playanimation @s[scores={move=45..46}] animation.primesoul.scythe_ult1

tp @s[scores={move=16..},type=!player] ~ 240 ~
execute as @s[scores={move=16..993},type=player] at @s run tp @s ~~~


scoreboard players set @s[type=player,scores={move=1..}] Camera 5
scoreboard players set @s[type=player,scores={move=1..}] Move 5

execute as @s[scores={move=25},type=!player] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=25},type=!player] at @s run playsound music.sekiro @a[r=200]

execute as @s[scores={move=45}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=40}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=45}] at @s run particle ds:dirt0

execute as @s[scores={move=32..20}] at @s run particle ds:rift_stars
execute as @s[scores={move=32..44}] at @s run particle ds:rift7 ~~1~
execute as @s[scores={move=32..44}] at @s run particle ds:rift6 ~~1~
execute as @s[scores={move=32..44}] at @s run particle ds:rift4 ~~1~
execute as @s[scores={move=16..44},type=!player] at @s run tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=15..17},type=!player] at @s run execute as @p[tag=!Frames,tag=!scytheult1,scores={detect_left=1..},r=5] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=17}] at @s run playsound mob.slash @a ~~~ 9999 2 9999


execute as @s[scores={move=14..15},type=!player] at @s run execute as @p[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=200] at @s run tp @s @s
execute as @s[scores={move=14..15},type=!player] at @s run execute as @p[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=200] at @s run tp @e[type=ds:primesoul,c=1] ^^0.5^1 facing ~~1~
execute as @s[scores={move=7..8},type=!player] at @s if entity @p[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=5] run tag @p[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=5] add scythegrab
execute as @s[scores={move=7..8},type=!player] at @s if entity @p[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=5] run scoreboard players set @s move 1001

execute as @s[scores={move=14..15},type=player] at @s positioned ^^^30 run execute as @e[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=29,c=1] at @s run tp @s @s
execute as @s[scores={move=14..15},type=player] at @s positioned ^^^30 run execute as @e[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=29,c=1] at @s run tp @e[tag=scytheult1,c=1] ^^0.5^1 facing ~~1~
execute as @s[scores={move=7..8},type=player] at @s if entity @e[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=5,c=1] run tag @e[tag=!Frames,tag=!scytheult1,scores={detect_health=0..},r=5,c=1] add scythegrab
execute as @s[scores={move=7..8},type=player] at @s if entity @e[tag=scythegrab,c=1,r=5] run scoreboard players set @s move 1001




playanimation @s[scores={move=1000..}] animation.primesoul.scythe_ult1b

execute as @s[scores={move=1000..},type=!player] at @s run tp @s ~~1.25~

execute as @s[scores={move=994..},type=player] at @s run scriptevent ds:knockback 0.33

execute as @s[scores={move=971..}] at @s unless entity @e[type=ds:projectile,name=scythegrab] run summon ds:projectile ~~~ facing ^^^10 none scythegrab

execute as @s[scores={move=971..}] at @s run execute as @e[name=scythegrab,c=1] at @s run camera @p[tag=scythegrab,c=1] set minecraft:free pos ^2^1.75^1.25 facing ^^0.7^1
execute as @s[scores={move=971..}] at @s run execute as @e[name=scythegrab,c=1] at @s run camera @p[tag=scytheult1,c=1] set minecraft:free pos ^2^1.75^1.25 facing ^^0.7^1

execute as @s[scores={move=1000}] at @s run playsound music.bass3 @a[r=200]

execute as @s[scores={move=970..975}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=971..994}] at @s unless block ~~~ air run tp @s ~~2~
execute as @s[scores={move=971..994}] at @s run tp @s ~~~ ~-0.33
execute as @s[scores={move=971..}] at @s run scoreboard players set @p[tag=scythegrab,r=5] Stun 30

execute as @s[scores={move=971..}] at @s run tp @e[name=scythegrab,c=1] ~~~

execute as @s[scores={move=971..}] at @s run execute as @e[name=scythegrab,c=1] at @s run tp @s @s
execute as @s[scores={move=973..}] at @s run playanimation @e[tag=scythegrab,c=1] animation.stunned i 0.25

execute as @s[scores={move=973..}] at @s run execute as @e[name=scythegrab,c=1] at @s run tp @e[tag=scythegrab,r=5,c=1] ^0.35^^1.8 facing ~~~
execute as @s[scores={move=971..972}] at @s run execute as @e[name=scythegrab,c=1] at @s run tp @e[tag=scythegrab,r=5,c=1] ^0.35^^1.8 facing ~~1~

execute as @s[scores={move=971..973}] at @s run execute as @e[r=5,type=!player] at @s run tp @s ~~~ ~-15

execute as @s[scores={move=969..970}] at @s run playsound mob.wither.shoot @a ~~~ 99999 1.5 99999
execute as @s[scores={move=969..970}] at @s run playsound mob.wither.shoot @a ~~~ 99999 0.45 99999
execute as @s[scores={move=1000}] at @s run playsound mob.heavy_swing @a ~~~ 99999 0.3 99999
execute as @s[scores={move=973}] at @s run playsound mob.heavy_swing @a ~~~ 99999 2 99999
execute as @s[scores={move=969..970}] at @s run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=970}] at @s run damage @e[tag=scythegrab,c=1] 100 suicide
execute as @s[scores={move=970}] at @s run scoreboard players set @e[tag=scythegrab,c=1] Stun 25
execute as @s[scores={move=970}] at @s run scoreboard players set @e[tag=scythegrab,c=1] Hit 25
execute as @s[scores={move=970}] at @s run scoreboard players set @e[tag=scythegrab,c=1] knockdown 90
execute as @s[scores={move=969..970}] at @s run summon ds:red_reverse ^-1^^2
execute as @s[scores={move=969..970}] at @s run summon ds:red_reverse ^-1^^2
execute as @s[scores={move=965..970}] at @s run camera @a clear
execute as @s[scores={move=965..970}] at @s run kill @e[name=scythegrab]

execute as @s[scores={move=900..940},type=!player] at @s run scoreboard players random @s repeat 1 4

execute as @s[scores={move=900..940}] at @s run tag @e remove scythegrab
execute as @s[scores={move=900..940}] at @s run scoreboard players set @s move 4



tag @s[scores={move=1..3}] remove scytheult1

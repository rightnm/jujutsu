playanimation @s[scores={move=40..41}] animation.mahito.blade_ab4

tag @s[scores={move=1..2},tag=wep4m] remove wep4m

scoreboard players set @s[scores={move=4..}] Move 5
scoreboard players set @s[scores={move=4..}] Camera 5


execute as @s[scores={move=33}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999

execute as @s[scores={move=39..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=37}] at @s run tp @s ~~3~ facing ^^^2

tag @s[scores={move=15..21}] add Frames
tag @s[scores={move=13..14}] remove Frames
scoreboard players set @s[scores={move=15..21}] Frames 5
execute as @s[scores={move=21}] at @s run particle ds:instant_star ^^1^
execute as @s[scores={move=19}] at @s run particle ds:instant_star  ^^1^
execute as @s[scores={move=16}] at @s run particle ds:instant_star  ^^1^

execute as @s[scores={move=40}] at @s run playsound mob.wither.shoot @a[r=50] ~~~4 99999 2 99999
tp @s ~~~

execute as @s[scores={move=22}] at @s run summon ds:projectile ^2^-2.5^2 facing ^^^3 none "rend"
execute as @s[scores={move=22}] at @s run summon ds:projectile ^-2^-2.5^2 facing ^^^3 none "rend"

execute as @s[scores={move=20}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=20}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=20}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=20}] at @s run particle ds:heavy_impact3 ~~1~

execute as @s[scores={move=20..22}] at @s run playsound mob.slash1 @a[r=50] ^^^2 999999 2 999999
execute as @s[scores={move=20..22}] at @s run scoreboard players set @e[name="rend",r=9] Deleter 8
execute as @s[scores={move=20..21}] at @s run playanimation @e[name="rend",r=9] animation.rendline
execute as @s[scores={move=21}] at @s run camerashake add @a[r=50] 2 0.1


scoreboard players set @s[scores={move=15}] atk 2
execute as @s[scores={move=15}] at @s run camerashake add @a[r=50] 2 0.33
execute as @s[scores={move=20}] at @s run playsound mob.slicer2 @a[r=50] ~~~ 999999 1 999999
execute as @s[scores={move=15}] at @s run particle ds:rend1 ~~-2.7~
execute as @s[scores={move=15}] at @s run particle ds:rend2 ~~-2.7~
execute as @s[scores={move=15}] at @s run particle ds:rend3 ~~-2.7~
execute as @s[scores={move=15}] at @s run particle ds:rend4 ~~-2.7~
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=50] ~~~4 99999 1.5 99999
execute as @s[scores={move=14}] at @s run playsound mob.wither.break_block @a[r=50] ~2~~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 99999 1 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=50] ~-3~~ 99999 0.8 99999
execute as @s[scores={move=14}] at @s run playsound mob.wither.break_block @a[r=50] ~~~-2 99999 1.3 99999
execute as @s[scores={move=15}] at @s run particle ds:dirt4 ~~-2.7~
execute as @s[scores={move=15}] at @s run particle ds:dirt0 ~~-2.7~


execute as @s[scores={move=5..15}] at @s run execute as @e[tag=FuryBarrage2,c=1] run titleraw @a[r=20] title {"rawtext":[{"text":"§o§mYou missed...\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}



execute as @s[scores={move=17}] at @s positioned ^^^4 run execute as @e[scores={strength=51..},type=!player,r=12] at @s run function dashback

execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s if entity @s[scores={detect_health=0..29}] run particle ds:blood_mist ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run tp @s ~~~ facing @e[scores={move=15},c=1,r=15] 
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run scoreboard players add @s Evade 30
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run scoreboard players set @s Flourish 8
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run playsound mob.slice @a[r=50] ~~1~ 99999 0.8 99999
execute as @s[scores={move=22}] at @s positioned ^^^4 run playsound mob.slash1 @a[r=93] ~~1~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run scoreboard players set @s Hit 2
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run damage @s 30 entity_attack entity @e[scores={move=15},c=1,r=15] 
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s run scoreboard players operation @s damage += @e[scores={move=15},c=1] damageadd 
execute as @s[scores={move=15}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=9] at @s if entity @s[scores={detect_health=0..29}] run effect @s invisibility 1 1 true

execute as @s[scores={move=15}] at @s run function damages/slash_damage

playanimation @s[scores={move=40}] animation.mahoraga_summon2

scoreboard players set @s[scores={move=13..}] Move 5
scoreboard players set @s[scores={move=13..}] Camera 5
scoreboard players set @s[scores={move=1..}] Frames 5


tag @s[scores={move=1..2}] remove form10b

execute as @s[scores={move=19..35}] at @s run tp @s @s

execute as @s[scores={move=35}] at @s run summon ds:mahoraga_ritual2 ^^^1 facing ^^^20 none MahoragaSlash
execute as @s[scores={move=34..35}] at @s run scoreboard players set @e[type=!item,name=MahoragaSlash,c=1] Deleter 32
execute as @s[scores={move=34..35}] at @s run tag @e[type=!item,name=MahoragaSlash,c=1] add Frames

execute as @s[scores={move=34..35}] at @s run execute as @e[type=!item,name=MahoragaSlash,c=1,scores={Deleter=0..7}] at @s run tp @s ~~-20~

execute as @s[scores={move=33..34}] at @s run playanimation @e[type=!item,name=MahoragaSlash,c=1] animation.mahoraga.sever
execute as @s[scores={move=37}] at @s run particle ds:dog_combine1 ^^3^3
execute as @s[scores={move=36..37}] at @s run playsound mob.wither.shoot @a ~~~ 0.3 0.8

execute as @s[scores={move=33..35}] at @s run camera @s set example:example_free pos ^8 ^9 ^-3 rot ~18 ~30

execute as @e[type=!item,name=MahoragaSlash,c=1,type=ds:mahoraga_ritual2,scores={Deleter=30..}] at @s run tp @s ^^^0.44
execute as @e[type=!item,name=MahoragaSlash,c=1,type=ds:mahoraga_ritual2,scores={Deleter=30..}] at @s run tp @s ^^^0.44

execute as @s[scores={move=7}] at @s run particle ds:dog_combine1 ^^3^3
execute as @s[scores={move=7}] at @s run playsound mob.wither.shoot @a ~~~ 0.3 0.8

execute as @s[scores={move=20}] at @s run summon ds:projectile ^^2^3 facing ^^^20 none SeverSlash
execute as @s[scores={move=20}] at @s positioned ^^^3 run scoreboard players set @e[type=!item,name=SeverSlash,c=1] Deleter 20
execute as @s[scores={move=20}] at @s positioned ^^^3 run playsound mob.wither.shoot @a ~~~ 1 1.5
execute as @s[scores={move=20}] at @s positioned ^^^3 run playsound mob.wither.shoot @a ~~~ 1 1.25
execute as @s[scores={move=20}] at @s positioned ^^^3 run playsound mob.wither.hurt @a ~~~ 1 0.7
execute as @s[scores={move=21}] at @s positioned ^^^3 run playsound mob.slash1 @a ~~~ 1 0.7
execute as @s[scores={move=21}] at @s positioned ^^^3 run camerashake add @a[r=20] 3 0.25
execute as @e[type=ds:mahoraga_ritual2,c=1,scores={Deleter=1..12}] at @s run tp @s ~~-20~

execute as @s[scores={move=1..21}] at @s run execute as @e[type=!item,name=SeverSlash,c=1] at @s run function shikigami/sever_slash
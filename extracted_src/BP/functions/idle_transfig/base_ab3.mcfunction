playanimation @s[scores={move=15..16}] animation.mahito.basic3

tag @s[scores={move=1..2},tag=wep3m] remove wep3m

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5


execute as @s[scores={move=5..15}] at @s unless entity @e[tag=kiss_countered,c=1,r=4] run tag @e[scores={atk=1..},r=4,c=1] add kiss_countered
execute as @s[scores={move=5..15,Stun=1..}] at @s unless entity @e[tag=kiss_countered,c=1,r=4] run tag @e[tag=!Frames,r=4,c=1,rm=0.15] add kiss_countered

execute as @s[scores={move=5..15}] at @s if entity @e[tag=kiss_countered,c=1,r=4] run scoreboard players set @s move 1001

scoreboard players set @e[family=dummy,r=5] atk 2


playanimation @s[scores={move=999..1001}] animation.mahito.basic3b
execute as @s[scores={move=999..1001}]  at @s run playanimation @e[tag=kiss_countered,c=1,r=4] animation.mahito.basic3b2

execute as @s[scores={move=999}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=999}] at @s run  camerashake add @a[r=5] 1 0.15

execute as @s[scores={move=965..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=965..}] at @s run tp @e[tag=kiss_countered,c=1,r=4] ^^^1 facing @s
scoreboard players set @s[tag=!Frames,scores={move=100..}] Frames 6

execute as @s[scores={move=994..}] at @s run camera @s set minecraft:free pos ^2^2^0.15 facing ^^1.5^-0.15
execute as @s[scores={move=994..}] at @s run camera @p[tag=kiss_countered,c=1,r=4] set minecraft:free pos ^2^2^0.15 facing ^^1.5^-0.15

execute as @s[scores={move=993}] at @s run playsound mob.mahito_kiss @a[r=50] ~~1.4~ 999999 1 999999
execute as @s[scores={move=990..993}] at @s run camera @s set minecraft:free pos ^0.05^1.45^0.05 facing ^-0.1^1.35^
execute as @s[scores={move=990..993}] at @s run camera @p[tag=kiss_countered,c=1,r=4] set minecraft:free pos ^0.05^1.45^0.05 facing ^-0.1^1.35^

execute as @s[scores={move=964}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^0.5^1.5^0.85 facing ^-0.15^1.35^0.8
execute as @s[scores={move=964}] at @s run camera @p[tag=kiss_countered,c=1,r=4] set minecraft:free ease 0.25 in_sine  pos ^0.5^1.5^0.85 facing ^-0.15^1.35^0.8

execute as @s[scores={move=946..957}] at @s run camera @s set minecraft:free ease 0.08 in_sine pos ^0.75^1.5^0.85 facing ^-0.15^1.35^0.8
execute as @s[scores={move=946..957}] at @s run camera @p[tag=kiss_countered,c=1,r=4] set minecraft:free ease 0.08 in_sine  pos ^0.75^1.5^0.85 facing ^-0.15^1.35^0.8

event entity @s[scores={move=998..}] mahito_metal_on
execute as @s[scores={move=963}] at @s run  playsound mob.sword @a[r=20] ^^1^1 99999 1.5 99999
execute as @s[scores={move=963}] at @s run execute as @e[tag=kiss_countered,c=1] at @s run damage @s 15 override
execute as @s[scores={move=963}] at @s run execute as @e[tag=kiss_countered,c=1] at @s run scoreboard players operation @s damagehalf += @e[tag=wep3,c=1] damageadd
execute as @s[scores={move=963}] at @s run execute as @e[tag=kiss_countered,c=1] at @s run scoreboard players set @s Stun 20
execute as @s[scores={move=963}] at @s run execute as @e[tag=kiss_countered,c=1] at @s run scoreboard players add @s Evade 15
execute as @s[scores={move=963}] at @s run execute as @e[tag=kiss_countered,c=1] at @s anchored eyes run particle ds:blood_splat_small ^-0.25^^0.25
execute as @s[scores={move=963}] at @s run camerashake add @a[r=5] 0.25 0.15

execute as @s[scores={move=963}] at @s run function damages/slash_damage

execute as @s[scores={move=900..945}] at @s run camera @a[r=10] clear
event entity @s[scores={move=900..945}] mahito_metal_off
execute as @s[scores={move=900..945}] at @s run tag @e[r=4] remove kiss_countered
scoreboard players set @s[scores={move=900..945}] move 3
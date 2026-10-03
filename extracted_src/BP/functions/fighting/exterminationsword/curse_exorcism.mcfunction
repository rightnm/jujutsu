playanimation @s[scores={move=80},tag=wep3,tag=exterminationsword] animation.extermination_ab3


tag @s[scores={move=1..2},tag=wep3,tag=exterminationsword] remove wep3

tag @s[scores={move=67..,Stun=1..},tag=wep3,tag=exterminationsword] remove wep3
scoreboard players set @s[scores={move=67..,Stun=1..},tag=wep3,tag=exterminationsword] move 0

scoreboard players set @s[scores={move=4..66},tag=wep3,tag=exterminationsword] Hyper 4
scoreboard players set @s[scores={move=4..66},tag=wep3,tag=exterminationsword] Move 4
scoreboard players set @s[scores={move=4..66},tag=wep3,tag=exterminationsword] Camera 4
scoreboard players set @s[scores={move=4..66},tag=wep3,tag=exterminationsword] Frames 4


execute as @s[scores={move=64},tag=wep2] at @s run function damages/slash_damage
execute as @s[scores={move=35},tag=wep2] at @s run function damages/blunt_damage

execute as @s[scores={move=75..},tag=wep3,tag=exterminationsword] at @s  run playsound beacon.power @a ~~~ 0.5 1.5 1


execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run tag @e[tag=!Frames,r=2.2,c=1] add Exorcise
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] Stun 35
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Hit 5
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Evade 8
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24,family=purecurse] 60 suicide entity @s
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24,tag=curse] 60 suicide entity @s
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24] 8 override entity @s
execute as @s[scores={move=65},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run playsound mob.sword @a ~~~ 1 1.15 

execute as @s[scores={move=44..50},tag=wep3,tag=exterminationsword] at @s unless entity @e[tag=Exorcise] run playanimation @s animation.extermination_idle
execute as @s[scores={move=44..50},tag=wep3,tag=exterminationsword] at @s unless entity @e[tag=Exorcise] run scoreboard players set @s move 3

execute as @s[scores={move=47},tag=wep3,tag=exterminationsword] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^ ^1 ^-2.5 rot ~25 ~
execute as @s[scores={move=37},tag=wep3,tag=exterminationsword] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^3 ^ ^1.5 rot ~ ~90
execute as @s[scores={move=37},tag=wep3,tag=exterminationsword] at @s anchored eyes run camera @s fade time 0.2 0.15 0.25 color 255 255 255

execute as @s[scores={move=25},tag=wep3,tag=exterminationsword] at @s anchored eyes run camera @a[c=2,r=5] set minecraft:free pos ^ ^-0.75 ^4 rot ~-15 ~180
execute as @s[scores={move=15},tag=wep3,tag=exterminationsword] at @s anchored eyes run camera @s fade time 0.25 0.15 0.25 color 0 0 0


execute as @s[scores={move=5..25},tag=wep3,tag=exterminationsword] at @s run scoreboard players set @a[r=20] Camera 5

execute as @s[scores={move=1..65},tag=wep3,tag=exterminationsword] at @s run tp @s @s
execute as @s[scores={move=35..40},tag=wep3,tag=exterminationsword] at @s run tp @s ^^^0.33
execute as @s[scores={move=1..65},tag=wep3,tag=exterminationsword] at @s run tp @e[tag=Exorcise,c=1,r=20] ^^^0.5 facing @s

execute as @s[scores={move=1..5},tag=wep3,tag=exterminationsword] at @s run tag @e[tag=Exorcise] remove Exorcise 

execute as @s[scores={move=35},tag=wep3,tag=exterminationsword] at @s run execute as @e[tag=Exorcise,c=1] at @s run particle ds:exorcism1 ~~0.22~
execute as @s[scores={move=40},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run  playsound mob.slash1 @a[r=100] ~~~ 9999999 1.05 999999

execute as @s[scores={move=1..25},tag=wep3,tag=exterminationsword] at @s run execute as @e[tag=Exorcise,c=1] at @s run playsound mob.wither.shoot @a ~~~ 0.2 0.85
execute as @s[scores={move=1..25},tag=wep3,tag=exterminationsword] at @s run execute as @e[tag=Exorcise,c=1] at @s run camerashake add @a[r=10] 0.2 0.1
execute as @s[scores={move=1..25},tag=wep3,tag=exterminationsword] at @s run execute as @e[tag=Exorcise,c=1] at @s run particle ds:exorcism2 ~~1~
execute as @s[scores={move=1..25},tag=wep3,tag=exterminationsword] at @s run execute as @e[tag=Exorcise,c=1] at @s run particle ds:exorcism3 ~~~
execute as @s[scores={move=39},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] Stun 35
execute as @s[scores={move=39},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Hit 25
execute as @s[scores={move=39},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Evade 12
execute as @s[scores={move=19},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24,family=purecurse] 600 suicide entity @s
execute as @s[scores={move=19},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24,tag=curse] 600 suicide entity @s
execute as @s[scores={move=39},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24] 12 override entity @s
execute as @s[scores={move=44},tag=wep3,tag=exterminationsword] at @s positioned ^^^2.25 if entity @e[tag=Frames,r=2.24] run playsound mob.sword @a ~~~
execute as @s[scores={move=39},tag=wep3,tag=exterminationsword] at @s positioned ^^^ run camerashake add @a[r=20] 2 0.15

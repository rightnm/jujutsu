playanimation @s[scores={move=140}] animation.lapse_blue2

tag @e[scores={move=1..2}] remove form2b

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Frames 6

execute as @s[scores={move=140}] at @s run tp @s @s
execute as @s[scores={move=140}] at @s run playsound mob.wither.shoot @a ~~~ 100000 0.7 100000
execute as @s[scores={move=140}] at @s run playsound beacon.activate @a ~~~ 100000 0.74 100000

execute as @s[scores={move=6..90}] at @s anchored eyes run camera @s set minecraft:third_person
execute as @s[scores={move=1..5}] at @s run camera @s clear
execute as @s[scores={move=90}] at @s run camera @a[r=20] fade time 0 0.1 0.5 color 0 180 250

execute as @s[scores={move=94}] at @s run summon ds:projectile MaxBlue ^ ^ ^14
execute as @s[scores={move=1..94}] at @s run tp @e[name=MaxBlue,c=1] ^^^14 facing @s
playanimation @e[name=MaxBlue] animation.max_lapse
execute as @s[scores={move=15..90}] at @s run scoreboard players set @e[name=MaxBlue,r=30] Deleter 10

effect @e[name=MaxBlue] resistance 1 20 true
effect @e[name=MaxBlue] instant_health 1 20 true 
effect @e[name=MaxBlueTRG] resistance 1 20 true
effect @e[name=MaxBlueTRG] instant_health 1 20 true

execute as @s[scores={move=15..90},family=gojo] at @s run tp @s ~~~ ~4.5

execute as @e[c=1,type=!item,name=MaxBlue] at @s run function limitless/maxblue

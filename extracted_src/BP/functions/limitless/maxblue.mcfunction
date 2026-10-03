execute as @s[name=MaxBlue] at @s run camerashake add @a[r=15] 0.5 0.15

execute as @s[name=MaxBlue,scores={Deleter=1..}] at @s run summon ds:lapse_explode
execute as @s[name=MaxBlue,scores={Deleter=1..}] at @s run summon ds:lapse_explode
execute as @s[name=MaxBlue,scores={Deleter=1..}] at @s run particle ds:rubble3

execute as @s[name=MaxBlue,scores={Deleter=1..2}] at @s run particle ds:lapseblue_ex1
execute as @s[name=MaxBlue,scores={Deleter=1..2}] at @s run particle ds:lapseblue_ex2
execute as @s[name=MaxBlue,scores={Deleter=1..2}] at @s run particle ds:lapseblue_ex3
execute as @s[name=MaxBlue,scores={Deleter=1..2}] at @s run particle ds:lapseblue_ex4
execute as @s[name=MaxBlue,scores={Deleter=1..}] at @s run particle ds:blue_gas

execute as @s[name=MaxBlue] at @s run  playsound mob.wither.shoot @a ~~~  100000 0.5 100000

execute as @s[name=MaxBlue] at @s run function damages/pull_damage

execute as @s[name=MaxBlue] at @s run  playsound beacon.deactivate @a ~~~  100000 0.3 100000
execute as @s[name=MaxBlue] at @s run  playsound beacon.deactivate @a ~~~ 100000 0.45 100000

execute as @s[name=MaxBlue] at @s unless block ~~-1~ air run particle ds:rubble_sucked1
execute as @s[name=MaxBlue] at @s unless block ~~-1~ air run particle ds:rubble_sucked2



execute as @s[name=MaxBlue] at @s run damage @e[tag=!pull_adapted,r=5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] 2 override 
execute as @s[name=MaxBlue] at @s if entity @e[family=gojo,r=40] run damage @e[tag=!pull_adapted,r=5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback,family=purecurse] 5 override 
execute as @s[name=MaxBlue] at @s run effect @e[tag=!pull_adapted,r=15] resistance 1 1 true
execute as @s[name=MaxBlue] at @s run scoreboard players add @e[tag=!pull_adapted,r=5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] Evade 2
execute as @s[name=MaxBlue] at @s run scoreboard players set @e[tag=!pull_adapted,r=5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] Stun 15
execute as @s[name=MaxBlue] at @s run scoreboard players add @e[tag=!pull_adapted,r=5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] Hit 1

execute as @s[name=MaxBlue] at @s run execute as @e[tag=!pull_adapted,r=12.5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] at @s run tp @s ^^^0.33 facing @e[name=MaxBlue,c=1]
execute as @s[name=MaxBlue] at @s run execute as @e[tag=!pull_adapted,r=12.5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] at @s run tp @s ^^^0.33 facing @e[name=MaxBlue,c=1]
execute as @s[name=MaxBlue] at @s run execute as @e[tag=!pull_adapted,r=12.5,tag=!Frames,tag=!limitless,type=!ds:lapse_explode,type=!ds:knockback] at @s run tp @s ^^^0.33 facing @e[name=MaxBlue,c=1]
execute as @s[name=MaxBlue] at @s run fill ~3~3~3~-3~-3~-3 air [] replace water
execute as @s[name=MaxBlue] at @s run fill ~4~4~4~-4~-4~-4 air [] replace water
execute as @s[name=MaxBlue] at @s run fill ~5~5~5~-5~-5~-5 air [] replace water
execute as @s[name=MaxBlue] at @s run fill ~6~6~6~-6~-6~-6 air [] replace water

execute as @s[name=MaxBlue] at @s run fill ~3~3~3~-3~-3~-3 air [] replace lava
execute as @s[name=MaxBlue] at @s run fill ~4~4~4~-4~-4~-4 air [] replace lava
execute as @s[name=MaxBlue] at @s run fill ~5~5~5~-5~-5~-5 air [] replace lava
execute as @s[name=MaxBlue] at @s run fill ~6~6~6~-6~-6~-6 air [] replace lava

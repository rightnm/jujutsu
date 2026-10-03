execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 100

tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~ facing @e[name=cyclonebombtrg,c=1]
execute as @s[scores={Deleter=1..}] at @s if entity @e[name=cyclonebombtrg] run tp @s ^^^1.15
execute as @s[scores={Deleter=1..}] at @s if entity @e[name=cyclonebombtrg] run tp @s ^^^1.15
execute as @s[scores={Deleter=1..}] at @s if entity @e[name=cyclonebombtrg] run tp @s ^^^1.15

tag @s add Frames
scoreboard players set @s atk 2

execute as @s if entity @e[name=cyclonebombtrg,r=2] run scoreboard players set @s Deleter 60
execute as @s if entity @e[name=cyclonebombtrg,r=2] run kill @e[name=cyclonebombtrg,c=1]

camerashake add @a[r=25] 2 0.15

playsound mob.slash1 @a ~~~ 0.2 2.25
playsound mob.wind @a ~~~ 0.2 2.25
particle ds:cyclone_bomb1
particle ds:cyclone_bomb2
particle ds:cyclone_bomb3
particle ds:cyclone_bomb4
particle ds:cyclone_bomb5 


damage @e[type=!ds:duke,tag=!Frames,r=6] 3 suicide
scoreboard players set @e[type=!ds:duke,tag=!Frames,r=6] Stun 33
scoreboard players set @e[type=!ds:duke,tag=!Frames,r=6] Hit 5
execute as @e[tag=!Frames,type=!ds:duke,r=6] at @s run playsound mob.sword @a ~~1~  0.1 2.25

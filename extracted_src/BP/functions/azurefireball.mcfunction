tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ^^^1
tag @s add Frames
scoreboard players set @s atk 2

execute as @s[tag=!bigball] run execute as @a[scores={punch=1,Stun=0},r=3.5] at @s run execute as @e[name=azurefireball,c=1] at @s run function parry

execute as @s[tag=bigball] run execute as @a[scores={punch=1,Stun=0},r=5.5] at @s run execute as @e[name=azurefireball,c=1] at @s run function parry


execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 31

playsound mob.burn @a ~~~ 0.1 2
execute as @s[tag=!bigball] run particle ds:azure_fireball1
execute as @s[tag=!bigball] run particle ds:azure_fireball1 ^^^-0.5
execute as @s[tag=!bigball] run particle ds:azure_fireball2
execute as @s[tag=!bigball] run particle ds:azure_fireball3

execute as @s[tag=!bigball] run damage @e[tag=!Frames,type=!ds:kaiguy,r=2] 20
execute as @s[tag=!bigball] run tag @e[tag=!Frames,type=!ds:kaiguy,r=2] add bluefire
execute as @s[tag=!bigball] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=2] Stun 15
execute as @s[tag=!bigball] run scoreboard players add @e[tag=!Frames,type=!ds:kaiguy,r=2] onfire 20
execute as @s[tag=!bigball] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=2] Hit 2



execute as @s[tag=bigball] run particle ds:azure_fireball1b
execute as @s[tag=bigball] run particle ds:azure_fireball1b ^^^-0.5
execute as @s[tag=bigball] run particle ds:azure_fireball2b
execute as @s[tag=bigball] run particle ds:azure_fireball3b

execute as @s[tag=bigball] run damage @e[tag=!Frames,type=!ds:kaiguy,r=3.5] 50
execute as @s[tag=bigball] run tag @e[tag=!Frames,type=!ds:kaiguy,r=3.5] add bluefire
execute as @s[tag=bigball] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=3.5] Stun 33
execute as @s[tag=bigball] run scoreboard players add @e[tag=!Frames,type=!ds:kaiguy,r=3.5] onfire 40
execute as @s[tag=bigball] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=3.5] Hit 5





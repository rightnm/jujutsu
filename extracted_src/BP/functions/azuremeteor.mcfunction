
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.6~ air run tp @s ~~-0.6~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

tag @s add Frames

execute as @s unless block ~~-0.15~ air run scoreboard players set @s[scores={Deleter=5..}] Deleter 4
execute as @s unless entity @s[scores={Deleter=0..}] run tp @s ~~20~
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 51

playsound mob.burn @a ~~~ 0.1 2

execute as @s run particle ds:azure_fireball1b
execute as @s run particle ds:azure_fireball2b
execute as @s run particle ds:azure_fireball3b

execute as @s[scores={Deleter=3}] run playsound mob.shock2 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={Deleter=3}] run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=3}] run camerashake add @a[r=25] 2 0.15
execute as @s[scores={Deleter=3}] run particle ds:azure_fire1
execute as @s[scores={Deleter=3}] run particle ds:azure_fire2
execute as @s[scores={Deleter=3}] run particle ds:azure_fire3
execute as @s[scores={Deleter=3}] run particle ds:rubble3
execute as @s[scores={Deleter=3}] run damage @e[tag=!Frames,type=!ds:kaiguy,r=3.5] 80 suicide
execute as @s[scores={Deleter=3}] run tag @e[tag=!Frames,type=!ds:kaiguy,r=3.5] add bluefire
execute as @s[scores={Deleter=3}] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=3.5] Stun 33
execute as @s[scores={Deleter=3}] run scoreboard players add @e[tag=!Frames,type=!ds:kaiguy,r=3.5] onfire 40
execute as @s[scores={Deleter=3}] run scoreboard players add @e[tag=!Frames,type=!ds:kaiguy,r=3.5] knockdown 25
execute as @s[scores={Deleter=3}] run scoreboard players set @e[tag=!Frames,type=!ds:kaiguy,r=3.5] Hit 5
execute as @s[scores={Deleter=1..3}] run tp @s ~~-50~





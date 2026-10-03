execute as @s[scores={Deleter=1..}] run tp @s ^^^1.45

execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy2 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy3 ^^^

execute as @s[scores={Deleter=3..}] at @s run playsound mob.blaze.shoot @a[r=30] ~~~ 99999 0.85 99999
execute as @s[scores={Deleter=3..}] at @s run playsound mob.burn @a[r=30] ~~~ 99999 1.35 99999


execute as @s[scores={Deleter=3..}] at @s unless block ~~~ air run tp @s ~~0.6~

execute as @s[scores={Deleter=3..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=3..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=3..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=3..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu1
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu1 ^^^-0.2
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu1 ^^^-0.4
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu1 ^^^-0.6
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu1 ^^^-0.8
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu2
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu3
execute as @s[scores={Deleter=3..}] at @s run particle ds:finger_mugetsu4
execute as @s[scores={Deleter=3..}] at @s run particle ds:fingerer_ex1
execute as @s[scores={Deleter=3..}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=3..}] at @s unless block ~~-0.33~ air run particle ds:rubble3

execute as @s[scores={Deleter=3..}] at @s run damage @e[tag=!Frames,r=3] 8 override
execute as @s[scores={Deleter=3..}] at @s run scoreboard players set @e[tag=!Frames,r=3] Stun 25
execute as @s[scores={Deleter=3..}] at @s run scoreboard players set @e[tag=!Frames,r=3] Hit 4
execute as @s[scores={Deleter=3..}] at @s run scoreboard players add @e[tag=!Frames,r=3] Evade 7
execute as @s[scores={Deleter=3..}] at @s run camerashake add @a[r=40] 1 0.15
execute as @s[scores={Deleter=3..}] at @s unless block ~~~ bedrock unless block ~~~ end_portal_frame unless block ~~~ obsidian run fill ~~~ ~~7~ air [] destroy
execute as @s[scores={Deleter=3..}] at @s run  kill @e[type=item,r=15]

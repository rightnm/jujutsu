playsound mob.blood1 @a ~~~ 99999 0.5 99999
playsound mob.blood @a ~~~ 99999 0.5 99999
playsound mob.blood3 @a ~~~ 99999 0.5 99999
particle ds:blood_mist
particle ds:blood_mist
particle ds:blood_mist
particle ds:blood_explode
particle ds:blood_explode
particle ds:blood_2 ~~1~
particle ds:blood_2 ~~1~
particle ds:bleeding2 ~~1~
particle ds:bleeding2 ~~1~
particle ds:bleeding2 ~~1~
particle ds:ground_slam1
particle ds:ground_slam2
particle ds:ground_slam3
particle ds:dirt0
particle ds:large_impact1
camerashake add @a[r=100] 2 0.15
tellraw @a[tag=special_mission_vessel] {"rawtext":[{"text":"§4You failed to catch the Vessel, resulting in her death!\n\n§cMission FAILED.\n\n§e- We are disappointed in you..."}]}
tellraw @a[tag=special_mission_vessel] {"rawtext":[{"text":"§l§4EXP Deducted"}]}
scoreboard players operation @a[tag=special_mission_vessel] EXP /= two endurance
tag @a remove special_mission_vessel
event entity @s ds:disappear
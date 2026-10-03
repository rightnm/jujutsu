
playsound mob.glock @a[tag=special_mission_vessel]
stopsound @a music.toji
tellraw @a[tag=special_mission_vessel] {"rawtext":[{"text":"§4You failed to protect the Vessel!\n\n§cMission FAILED.\n\n§e- We are disappointed in you..."}]}
tellraw @a[tag=special_mission_vessel] {"rawtext":[{"text":"§l§4EXP Deducted"}]}
scoreboard players operation @a[tag=special_mission_vessel] EXP /= two endurance
tag @a remove special_mission_vessel
kill @e[type=ds:toji_boss]
event entity @e[type=ds:riko_amanai] ds:disappear
event entity @e[type=ds:riko_amanai_awake] ds:disappear
scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Sorcerer Extermination √§r\n\n§eYour Rewards: §9+1000 EXP"}]} 
scoreboard players add @s expadd 1000

tag @s remove high_sorcerer_quest

kill @e[name=waypoint,tag=high_sorcerer_curse_quest,c=1]
tickingarea remove high_sorcerer_curse_quest

scoreboard players set @s mission_credit 0
scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Grade 1 Curse Extermination √§r\n\n§eYour Rewards: §9+750 EXP"}]} 
scoreboard players add @s expadd 750

tag @s remove killquest_grade2_curse

kill @e[name=waypoint,tag=grade2_curse_quest,c=1]
tickingarea remove grade2_curse_quest

scoreboard players set @s mission_credit 0
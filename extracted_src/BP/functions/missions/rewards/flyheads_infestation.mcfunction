scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Flyheads Infestation √§r\n\n§eYour Rewards: §9+200 EXP"}]} 
scoreboard players add @s expadd 200

tag @s remove killquest_flyheads_infestation

kill @e[name=waypoint,tag=flyheads_quest,c=1]
tickingarea remove flyheads_quest

scoreboard players set @s mission_credit 0
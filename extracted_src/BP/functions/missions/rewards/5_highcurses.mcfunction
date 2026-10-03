scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0

particle ds:mission_complete ~~1~


playsound random.levelup @a ~~~ 5 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Kill 5 Grade 1 Curses √§r\n\n§eYour Rewards: §9+2750 EXP"}]} 
scoreboard players add @s expadd 2750

tag @s remove killquest_5curse_highgrade

scoreboard players set @s mission_credit 0

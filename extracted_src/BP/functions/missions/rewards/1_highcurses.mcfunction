scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Kill 1 Grade 1 Curse √§r\n\n§eYour Rewards: §9+575 EXP"}]} 
scoreboard players add @s expadd 575

tag @s remove killquest_1curse_highgrade
particle ds:mission_complete ~~1~

scoreboard players set @s mission_credit 0

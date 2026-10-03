scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0

particle ds:mission_complete ~~1~


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Kill 10 Low Grade Sorcerers √§r\n\n§eYour Rewards: §9+40 EXP"}]} 
scoreboard players add @s expadd 40

tag @s remove killquest_10sorcerers_lowgrade

scoreboard players set @s mission_credit 0

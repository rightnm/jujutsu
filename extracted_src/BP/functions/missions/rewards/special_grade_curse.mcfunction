scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> §r§5Kill Special Grade Curse§r§a! √§r\n\n§eYour Rewards: §9+1500 EXP"}]} 
scoreboard players add @s expadd 1500

tag @s remove killquest_special_grade_curse


scoreboard players set @s mission_credit 0
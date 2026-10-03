scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s kusakabequest 0
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0

tag @s add simpledomainquest2completed


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Kill 5 Grade 1 Curses √§r\n\n§eYour Rewards: §9+50 EXP\n\n§g- Head back to Jujutsu High and talk to Kusakabe."}]} 
scoreboard players add @s expadd 50

tag @s remove simpledomainquest2
particle ds:mission_complete ~~1~

scoreboard players set @s mission_credit 0

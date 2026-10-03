scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0
kill @e[family=purecurse,r=100]
stopsound @a music.toji

playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§f< §ePrincipal Yaga §f> §eGreat Job! Tengen has successfully merged with Riko Amanai."}]} 
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Star Plasma Vessel Escort √§r\n\n§eYour Rewards: §9+5000 EXP\n§d+10 Special Grade Crates"}]} 
scoreboard players add @s expadd 5000
give @s ds:crate_v5 10

tag @s remove special_mission_vessel

kill @e[name=waypoint,tag=special_mission_vessel,c=1]
tickingarea remove special_mission_vessel

playsound block.end_portal.spawn @a[r=100] ~~~ 99999 1.25 99999
playsound random.levelup @a[r=100] ~~~ 9999 0.25 9999
particle ds:special_mission_vessel_win ~~1~
particle ds:special_mission_vessel_win2 ~~1~
particle ds:special_mission_vessel_win3 ~~1~
event entity @e[type=ds:riko_amanai,r=50] ds:disappear
event entity @e[type=ds:riko_amanai_awake,r=50] ds:disappear

scoreboard players set @s mission_credit 0
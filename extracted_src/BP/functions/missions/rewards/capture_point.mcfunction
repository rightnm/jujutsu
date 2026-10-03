scoreboard players set @s callingrandom 0
scoreboard players set @s activemission 0
scoreboard players set @s missionCD 200
scoreboard players set @s calling 0
tag @s remove calling
scoreboard players set @s random_mission 0


playsound random.levelup @a ~~~ 1 0.8
tellraw @s {"rawtext":[{"text":"§l§f-     Mission Completed    -§r\n§a§o> Capture the Point √§r\n\n§eYour Rewards: §9+200 EXP §5x Your Grade"}]} 
scoreboard players add @s expadd 200
scoreboard players operation @s expadd *= @s grade

tag @s remove capture_point

kill @e[name=waypoint,tag=capture_point,c=1]
tickingarea remove capture_point

execute as @e[type=ds:capture_point,r=50] at @s run playsound block.end_portal.spawn @a[r=100] ~~~ 99999 1.25 99999
execute as @e[type=ds:capture_point,r=50] at @s run playsound random.levelup @a[r=100] ~~~ 9999 0.25 9999
execute as @e[type=ds:capture_point,r=50] at @s run particle ds:capture_point_win ~~0.15~
execute as @e[type=ds:capture_point,r=50] at @s run particle ds:capture_point_win2 ~~0.15~
execute as @e[type=ds:capture_point,r=50] at @s run particle ds:capture_point_win3 ~~0.15~
event entity @e[type=ds:capture_point,r=50] ds:disappear

scoreboard players set @s mission_credit 0
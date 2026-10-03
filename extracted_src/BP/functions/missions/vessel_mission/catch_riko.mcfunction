scoreboard players set @a[r=100] Evade 0
camera @a[tag=special_mission_vessel,r=100] fade time 0 1 1 color 0 0 0
event entity @e[type=ds:riko_amanai_noai] ds:disappear
execute as @p[r=5,tag=special_mission_vessel,c=1] at @s run summon ds:riko_amanai_noai "Stage1"
spreadplayers ~ ~ 0 1 @p[r=5,tag=special_mission_vessel,c=1] 


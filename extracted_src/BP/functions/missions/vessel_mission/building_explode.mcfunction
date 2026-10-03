execute if entity @p[tag=special_mission_vessel,r=80] run summon ds:energy_explosion
execute if entity @p[tag=special_mission_vessel,r=80] run function 4x4sphere
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:slam_dust1
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:slam_dust2
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:ground_impact2
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:large_slam1
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:large_slam2
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:large_slam3
execute if entity @p[tag=special_mission_vessel,r=80] run particle ds:large_shockwave
execute if entity @p[tag=special_mission_vessel,r=80] run camerashake add @a[r=200] 3 0.3 
execute if entity @p[tag=special_mission_vessel,r=80] run playsound mob.shock1 @a[r=300] ~~~ 99999 0.75 99999
execute if entity @p[tag=special_mission_vessel,r=80] run playsound mob.random.explode @a[r=300] ~~~ 99999 0.75 99999
execute if entity @p[tag=special_mission_vessel,r=80] run playsound mob.burst @a[r=300] ~~~ 99999 1.33 99999
execute if entity @p[tag=special_mission_vessel,r=80] run summon ds:riko_amanai_noai ~~~-2 facing ~~~1 none "SaveMe" 
execute if entity @p[tag=special_mission_vessel,r=80] run setblock ~~~ air
execute if entity @p[tag=special_mission_vessel,r=80] run tickingarea remove hotel
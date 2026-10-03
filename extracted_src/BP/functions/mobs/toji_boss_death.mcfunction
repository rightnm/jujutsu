event entity @e[type=ds:riko_amanai_awake] ds:disappear
stopsound @a[r=100] music.toji
camera @a[r=100] fade time 0 2 1 color 0 0 0
tp @a[tag=special_mission_vessel] 5031 64 2013 facing ~~~10
scoreboard players set  @a[tag=special_mission_vessel] Stun 40
scoreboard players set  @a[tag=special_mission_vessel] infinity 40
execute as @a[tag=special_mission_vessel] at @s run function missions/vessel_mission/complete

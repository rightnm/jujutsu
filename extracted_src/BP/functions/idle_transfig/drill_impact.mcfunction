damage @e[tag=!Frames,r=6] 40 override
scoreboard players set @e[tag=!Frames,r=6] knockdown 33
scoreboard players set @e[tag=!Frames,r=6] Hit 3
scoreboard players add @e[tag=!Frames,r=6] Evade 20
playsound random.anvil_land @a[r=100] ~~~ 99999 0.33 99999
playsound mob.burst @a[r=100] ~~~ 99999 1.33 99999
playsound mob.metal1 @a[r=100] ~~~ 99999 0.6 99999
playsound item.trident.thunder @a[r=100] ~~~ 99999 2 99999
camerashake add @a[r=40] 2 0.25
particle ds:dirt3
particle ds:burst_sparks1 ~~~
particle ds:burst_sparks2 ~~~
particle ds:curses_hit1_big
particle ds:curses_hit2_big
particle ds:curses_hit3_big
particle ds:ground_pound2
particle ds:ground_pound3
particle ds:burst_impact
particle ds:rubble3
particle ds:slam_dust2
effect @e[r=20] resistance 1 20 true
execute if entity @p[tag=griefable] run summon ds:lapse_explode
tag @e[r=6,tag=!Frames] add pullback_drill

function damages/blunt_damage


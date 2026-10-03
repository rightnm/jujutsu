playanimation @s[scores={move=120}] animation.electro_orbs


tag @s[scores={move=1..3},tag=form5b] remove form5b


scoreboard players set @s[scores={move=1..115}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 4



effect @s[type=ds:kashimo,scores={move=1..60}] slow_falling 4 1 true
execute as @s[type=ds:kashimo,scores={move=20..112}] at @s  run tp @s ~~~ facing  @e[tag=!Frames,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,r=80,c=1]


execute as @s[scores={move=116..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=116..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=116..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=116..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=116..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=116},type=player] at @s  run camera @s set minecraft:free pos ^ ^0.5 ^35 rot ~-35 ~180
execute as @s[scores={move=85},type=player] at @s  run camera @s fade time 0.25 0.2 0.15 color 255 255 255
execute as @s[scores={move=80},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^18 ^-4 ^5 rot ~-10 ~110

execute as @s[scores={move=50},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^3 ^-5 rot ~15 ~


execute as @s[scores={move=115}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=115}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=115}] at @s  run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.55 9999
execute as @s[scores={move=115}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=115}] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=115}] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=115}] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=115}] at @s  run particle ds:heavy_impact5
execute as @s[scores={move=115}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=115}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=115}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=115}] at @s  run particle ds:crater3
execute as @s[scores={move=115}] at @s  run particle ds:rubble3
execute as @s[scores={move=115}] at @s  run camerashake add @a[r=16] 4 0.40
execute as @s[scores={move=115..}] at @s  run tp @s @s
execute as @s[scores={move=114}] at @s  run tp @s ^ ^35 ^-5
execute as @s[scores={move=112..115}] at @s  run particle ds:evade1
execute as @s[scores={move=112..115}] at @s  run particle ds:evade2
execute as @s[scores={move=112..115}] at @s  run particle ds:evade3
execute as @s[scores={move=112..115}] at @s  run particle ds:evade4

scoreboard players set @s[scores={move=1..115}] Camera 5
scoreboard players set @s[scores={move=1..115}] Move 5

execute as @s[scores={move=105..112}] at @s  run playsound mob.shocked3 @a[r=200] ~~~ 999999 2 999999
execute as @s[scores={move=105..112}] at @s  run playsound mob.shocked3 @a[r=200] ~~~ 999999 1 999999
execute as @s[scores={move=105..112}] at @s  run playsound mob.shocked3 @a[r=200] ~~~ 999999 1.33 999999
execute as @s[scores={move=49..112}] at @s  run particle ds:electro_orbs_charge1 ~~35~
execute as @s[scores={move=83..112}] at @s  run particle ds:electro_orbs_charge2 ~~1~
execute as @s[scores={move=83..112}] at @s  run particle ds:electro_orbs_charge3 ~~1~
execute as @s[scores={move=83..112}] at @s  run particle ds:electro_orbs_charge4 ~~1~

execute as @s[scores={move=110}] at @s  run playsound music.bass3 @a[r=150] ~~~ 999999 1 999999
execute as @s[scores={move=79}] at @s  run playsound music.energy @a[r=150] ~~~ 999999 1 999999
execute as @s[scores={move=78}] at @s  run summon ds:projectile ^9 ^-1.5 ^ facing ^^^20 none EnergyOrb
execute as @s[scores={move=77}] at @s  run summon ds:projectile ^8 ^0.2 ^-2 facing ^^^20 none EnergyOrb
execute as @s[scores={move=77}] at @s  run summon ds:projectile ^7.5 ^0.3 ^-4 facing ^^^20 none EnergyOrb
execute as @s[scores={move=76}] at @s  run summon ds:projectile ^6.7 ^1.5 ^-5.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=76}] at @s  run summon ds:projectile ^6 ^-0.3 ^-6.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=76}] at @s  run summon ds:projectile ^5 ^ ^-7 facing ^^^20 none EnergyOrb
execute as @s[scores={move=75}] at @s  run summon ds:projectile ^4.5 ^-5.5 ^-7.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=75}] at @s  run summon ds:projectile ^4 ^1 ^-7.3 facing ^^^20 none EnergyOrb
execute as @s[scores={move=74}] at @s  run summon ds:projectile ^3 ^-1.5 ^-7.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=74}] at @s  run summon ds:projectile ^2 ^1.8 ^-7.6 facing ^^^20 none EnergyOrb
execute as @s[scores={move=74}] at @s  run summon ds:projectile ^1 ^-0.5 ^-7.7 facing ^^^20 none EnergyOrb
execute as @s[scores={move=74}] at @s  run summon ds:projectile ^0 ^1.25 ^-7.8 facing ^^^20 none EnergyOrb
execute as @s[scores={move=73}] at @s  run summon ds:projectile ^-1 ^-3.75 ^-7.7 facing ^^^20 none EnergyOrb
execute as @s[scores={move=72}] at @s  run summon ds:projectile ^-1.5 ^2.5 ^-7.4 facing ^^^20 none EnergyOrb
execute as @s[scores={move=72}] at @s  run summon ds:projectile ^-2 ^3 ^-7.2 facing ^^^20 none EnergyOrb
execute as @s[scores={move=72}] at @s  run summon ds:projectile ^-2.75 ^-4 ^-6.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=71}] at @s  run summon ds:projectile ^-3.2 ^-1.75 ^-7.7 facing ^^^20 none EnergyOrb
execute as @s[scores={move=71}] at @s  run summon ds:projectile ^-3.5 ^0.25 ^-7.4 facing ^^^20 none EnergyOrb
execute as @s[scores={move=71}] at @s  run summon ds:projectile ^-4 ^6 ^-7.2 facing ^^^20 none EnergyOrb
execute as @s[scores={move=71}] at @s  run summon ds:projectile ^-5 ^-1 ^-6.5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=70}] at @s  run summon ds:projectile ^-6 ^-0.5 ^-6 facing ^^^20 none EnergyOrb
execute as @s[scores={move=70}] at @s  run summon ds:projectile ^-6.5 ^3.25 ^-5 facing ^^^20 none EnergyOrb
execute as @s[scores={move=70}] at @s  run summon ds:projectile ^-7.35 ^-1.5 ^-4 facing ^^^20 none EnergyOrb
execute as @s[scores={move=69}] at @s  run summon ds:projectile ^-8 ^3.5 ^-2 facing ^^^20 none EnergyOrb
execute as @s[scores={move=69}] at @s  run summon ds:projectile ^-9 ^-1.5 ^ facing ^^^20 none EnergyOrb
execute as @s[scores={move=60..79}] at @s  run camerashake add @a[r=100] 0.5 0.1 


title @s[scores={move=102},tag=!impactframesoff,type=player] title 
title @s[scores={move=101},tag=!impactframesoff,type=player] title  §l
title @s[scores={move=100},tag=!impactframesoff,type=player] title 
title @s[scores={move=99},tag=!impactframesoff,type=player] title  §l

title @s[scores={move=67},tag=!impactframesoff,type=player] title 
title @s[scores={move=66},tag=!impactframesoff,type=player] title  
title @s[scores={move=65},tag=!impactframesoff,type=player] title 
title @s[scores={move=64},tag=!impactframesoff,type=player] title  
title @s[scores={move=63},tag=!impactframesoff,type=player] title  §l


execute as @s[scores={move=65..72}] at @s  run scoreboard objectives add down dummy
execute as @s[scores={move=65..72}] at @s  run scoreboard objectives add left dummy
execute as @s[scores={move=65..72}] at @s  run scoreboard objectives add right dummy
execute as @s[scores={move=51..69},type=!player] at @s  run tag @e[name=EnergyOrb,c=30,r=20,tag=!energyorb] add energyorb
execute as @s[scores={move=51..69}] at @s  run tag @e[name=EnergyOrb,c=2,r=20,tag=!energyorb] add energyorb
execute as @s[scores={move=49..50}] at @s  run scoreboard players set @e[name=EnergyOrb,r=20] Deleter 50
execute as @s[scores={move=65..68}] at @s  run scoreboard players random @e[name=EnergyOrb] down -5 5
execute as @s[scores={move=65..68}] at @s  run scoreboard players random @e[name=EnergyOrb] left -3 3
execute as @s[scores={move=65..68}] at @s  run scoreboard players random @e[name=EnergyOrb] right -3 3

execute as @s[scores={move=1..115}] at @s  run tp @s ~~~
execute as @s[scores={move=79}] at @s  run tp @s ~ ~ ~ ~ ~56
title @s[scores={move=59},tag=!impactframesoff,type=player] title §l

execute as @s[scores={move=1..25},type=!player] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=1..5},type=!player] at @s if entity @e[tag=heian_era,r=100,tag=!spectator] run function activate_cannon




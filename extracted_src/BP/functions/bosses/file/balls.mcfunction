playanimation @s[scores={move=40..}] animation.rift_prison.spin_orbs


execute as @s[scores={move=30}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=30}] at @s run particle ds:large_impact2 ~~3.5~


execute as @s[scores={move=35}] at @s  run  playsound beacon.power @a[r=200] ~~3.5~ 99999 1 99999
execute as @s[scores={move=29}] at @s positioned ~3~3.5~10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=26}] at @s positioned ~-3~3.5~10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=23}] at @s positioned ~10~3.5~3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=20}] at @s positioned ~10~3.5~-3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=17}] at @s positioned ~3~3.5~-10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=14}] at @s positioned ~-3~3.5~-10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=11}] at @s positioned ~-10~3.5~3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=8}] at @s positioned ~-10~3.5~-3 run summon ds:projectile ~~~ facing @p none equinox_orb 

execute as @s[scores={move=4..5}] at @s run scoreboard players set @e[name=equinox_orb,c=8] Deleter 40
execute as @s[scores={move=4..5}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=4..5}] at @s run particle ds:large_impact2 ~~3.5~



playanimation @s[scores={move=30..}] animation.primesoul.summon_orbs

execute as @s[scores={move=30}] at @s run particle ds:leap
execute as @s[scores={move=30}] at @s run  particle ds:large_impact1
execute as @s[scores={move=30}] at @s run  particle ds:large_impact2
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=200] ~~~ 9999 3 9999

execute as @s[scores={move=5..30}] at @s run tp @s ~ 260 ~
execute as @s[scores={move=1..5}] at @s run tp @s ~ 240 ~

execute as @s[scores={move=30}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=30}] at @s run particle ds:large_impact2 ~~3.5~


execute as @s[scores={move=25}] at @s  run  playsound beacon.power @a[r=200] ~~3.5~ 99999 1 99999
execute as @s[scores={move=22}] at @s positioned ~3~3.5~10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=20}] at @s positioned ~-3~3.5~10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=18}] at @s positioned ~10~3.5~3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=16}] at @s positioned ~10~3.5~-3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=14}] at @s positioned ~3~3.5~-10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=12}] at @s positioned ~-3~3.5~-10 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=10}] at @s positioned ~-10~3.5~3 run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=8}] at @s positioned ~-10~3.5~-3 run summon ds:projectile ~~~ facing @p none equinox_orb 

execute as @s[scores={move=7..8}] at @s run scoreboard players set @e[name=equinox_orb,r=20] Deleter 40
execute as @s[scores={move=7..8}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=7..8}] at @s run particle ds:large_impact2 ~~3.5~

tag @s[scores={move=1..3}] remove ranged1



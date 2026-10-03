


execute as @s[scores={move=100..}] at @s run playsound beacon.power @a[r=200] ~~3.5~ 99999 1 99999

execute as @s[scores={move=25..90}] at @s  run tp @s ~~~ ~10

execute as @s[scores={move=25..90}] at @s positioned ^^3.5^9 unless entity @e[name=equinox_orb,r=6] run playsound mob.shock2 @a[r=200] ~~~ 9999 2.25 9999
execute as @s[scores={move=25..90}] at @s positioned ^^3.5^9 unless entity @e[name=equinox_orb,r=6] run summon ds:projectile ~~~ facing @p none equinox_orb 
execute as @s[scores={move=25..90}] at @s positioned ^^3.5^9 run execute as @e[name=equinox_orb] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 33

execute as @s[scores={move=90}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=90}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=25}] at @s run playsound mob.shock2 @a[r=200] ~~3.5~ 99999 2 99999
execute as @s[scores={move=25}] at @s run particle ds:large_impact2 ~~3.5~



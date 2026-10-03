playsound mob.parry @a ~~~ 0.2 1
particle ds:dukeparry1 ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura2 ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura2 ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura2 ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:wind_aura2 ~~1~
execute as @s[scores={move=3..37,chance=8}] at @s run particle ds:heavy_impact1
execute as @s[scores={move=3..37,chance=8}] at @s run playsound mob.dukelaugh @a ~~~ 99999 1 99999
execute as @s[scores={move=3..37,chance=8}] at @s run damage @e[r=10] 20 override
execute as @s[scores={move=3..37,chance=8}] at @s run scoreboard players set @e[r=10] Stun 25
execute as @s[scores={move=3..37,chance=8}] at @s run scoreboard players set @e[r=10] Evade 0
execute as @s[scores={move=3..37,chance=8}] at @s run scoreboard players set @e[r=10] Hit 5
execute as @s[scores={move=3..37,chance=8}] at @s run summon ds:red_reverse

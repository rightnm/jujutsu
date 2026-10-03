playanimation @s[scores={move=65..}] animation.hiten.ab6

tag @s[scores={move=1..2}] remove wep6
scoreboard players set @s[scores={move=25..36}] Frames 10

execute as @s[scores={move=60..}] at @s run scriptevent ds:downfall

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=50..}] Camera 6
scoreboard players set @s[scores={move=5..36}] Camera 6
execute as @s[scores={move=35..39}] at @s run  scriptevent ds:knockback 1.25
execute as @s[scores={move=30..35}] at @s run tp @s @s


execute as @s[scores={move=64..}] at @s run tp @s @s

execute as @s[scores={move=56..}] at @s anchored eyes run camera @s set minecraft:free pos ^^-1^3 facing ~~~
execute as @s[scores={move=54..55}] at @s anchored eyes run camera @s set minecraft:free ease 0.65 in_out_circ pos ^4^2^-2 facing ^^^10
execute as @s[scores={move=15..39}] at @s anchored eyes run camera @s set minecraft:free ease 0.08 in_sine pos ^4^2^-2 facing ^^^10


execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run particle ds:dirt0
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run particle ds:dirt2
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run particle ds:large_impact1
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run particle ds:heavy_impact1
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run particle ds:heavy_impact2
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run playsound mob.impact @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=35}] at @s positioned ^-0.15^0.1^1.25 run playsound item.trident.thunder @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=34..35}] at @s unless entity @e[name="rampaging_tempest",r=25] at @s run summon ds:tempest ^^^5 facing ^^^15 none "rampaging_tempest" 

playanimation @s[scores={move=30}] animation.piercingox_spawn

tag @s[scores={move=1..2}] remove form6

execute as @s[scores={move=25..}] at @s run tp @s @s

execute as @s[scores={move=25}] at @s run summon ds:oxrush "Piercing Ox" ^^^2
execute as @s[scores={move=25}] at @s run particle ds:shikigami_appear3 ^^^2

execute as @s[scores={move=20..25}] at @s run tp @e[type=ds:oxrush,c=1] ^^^2 facing ^^^30
execute as @s[scores={move=25}] at @s run scoreboard players set @e[type=ds:oxrush,c=1] Deleter 25
execute as @s[scores={move=23..25}] at @s run playanimation @e[type=ds:oxrush,c=1] animation.ox.charge2

execute as @s[scores={move=21..25}] at @s run effect @s resistance 1 10 true
execute as @s[scores={move=1..25}] at @s run execute as @e[type=ds:oxrush,name="Piercing Ox",c=1] at @s run function shikigami/shikigami/piercingox_rush

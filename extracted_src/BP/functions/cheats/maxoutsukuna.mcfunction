
tag @s[tag=!yuji_awakened] add sukuna
tag @s[tag=!yuji_awakened] add has_sukuna
execute as @s[tag=!yuji_awakened] at @s run function sukuna/sukuna_clear
scoreboard players add @s[tag=!yuji_awakened] EnergyCap 1000
clear @s[tag=!yuji_awakened] ds:sukuna_technique
give @s[tag=!yuji_awakened] ds:sukuna_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s[tag=!megunacutscene_p2,tag=!yuji_awakened] finger 20
scoreboard players operation @s[tag=megunacutscene_p2,tag=!yuji_awakened] finger = @p[tag=megunacutscene_p1] finger
execute as @s[tag=!yuji_awakened] at @s run function sukuna/15finger_sukuna_takeover
event entity @s[tag=!yuji_awakened] sukuna_markings
title @s[tag=!megunacutscene_p2,tag=!yuji_awakened] title Done!

 tellraw @s[tag=yuji_awakened] {"rawtext":[{"text":"§4Sukuna will not possess this body.\n\n ( Remove Your Soul-Shrine Cursed Technique )"}]}

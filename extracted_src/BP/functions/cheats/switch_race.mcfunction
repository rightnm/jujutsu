tag @s[tag=!curse] add nope
tag @s[tag=!curse] add curse
tag @s[tag=curse,tag=!nope] remove curse
tellraw @s[tag=!curse] {"rawtext":[{"text":"§l§fYou are now a: §bHuman§f."}]}
tellraw @s[tag=curse] {"rawtext":[{"text":"§l§fYou are now a: §5Curse§f."}]}
function cheats/remove_sukuna
function remove_ct
tag @s remove nope


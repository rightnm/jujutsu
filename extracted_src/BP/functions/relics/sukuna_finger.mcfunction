scoreboard objectives add finger dummy
scoreboard players add @a finger 0
tag @s[tag=yuji_awakened] add canteat

tellraw @s[tag=curse] {"rawtext":[{"text":"§l§4You absorb the finger, gaining immense strength.\n§g+20 Invest points"}]}
tellraw @s[tag=curse,tag=explosive] {"rawtext":[{"text":"§5The finger resonates with your cursed technique.\n§g+10 Invest points"}]}

tellraw @s[tag=canteat] {"rawtext":[{"text":"§5The finger rejects you."}]}

scoreboard players add @s[tag=curse] invest 20
scoreboard players add @s[tag=curse,tag=explosive] invest 10
clear @s[tag=curse] ds:sukuna_finger 0 1

scoreboard objectives add sukunacutscene dummy
execute as @s[tag=!curse,tag=!has_sukuna] if score onesukuna Mode = two Mode if score sukunauser Mode = one Mode run tag @s add canteat

execute as @s[tag=canteat] at @s run particle ds:red_impact2 ~~1~

tag @s[tag=!curse,tag=!has_sukuna,tag=!canteat] add finger_eaten
scoreboard players set @s[tag=!curse,tag=!has_sukuna,tag=!canteat] sukunacutscene 141

execute as @s[tag=!curse,tag=!has_sukuna,tag=canteat,tag=!yuji_awakened] run tellraw @s {"rawtext":[{"text":"§l§4This finger's vessel has already been reincarnated into another player."}]}

tag @s[tag=!curse,tag=has_sukuna,scores={finger=1..13}] add finger_eaten2
scoreboard players set @s[tag=!curse,tag=has_sukuna,scores={move=0,Disabled2=0,Disabled=0,Move=0,Camera=0,Stun=0,cutscene=0,finger=1..13}] sukunacutscene 21

tag @s[tag=!curse,tag=has_sukuna,scores={finger=14}] add 15fingers_cutscene
scoreboard players set @s[tag=!curse,tag=has_sukuna,scores={move=0,Disabled2=0,Disabled=0,Move=0,Camera=0,Stun=0,cutscene=0,finger=14}] sukunacutscene 1001

tag @s[tag=!curse,tag=has_sukuna,scores={finger=15..19}] add finger_eaten2
scoreboard players set @s[tag=!curse,tag=has_sukuna,scores={move=0,Disabled2=0,Disabled=0,Move=0,Camera=0,Stun=0,cutscene=0,finger=15..19}] sukunacutscene 21

tag @s remove canteat

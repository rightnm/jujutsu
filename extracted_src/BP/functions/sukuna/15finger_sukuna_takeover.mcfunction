scoreboard objectives add sukunamode dummy
scoreboard objectives add sukunaperm dummy
scoreboard players add @s sukunaperm 0
scoreboard players add @s sukunamode 0
tag @s[tag=reversecursed,scores={sukunamode=!1..,sukunaperm=0}] add reversecursedown
tag @s[tag=rctmaster,scores={sukunamode=!1..,sukunaperm=0}] add rctmasterown
tag @s[scores={hollowbasketown=1,sukunamode=!1..,sukunaperm=0}] add hollowbasketown
scoreboard players set @s[scores={sukunamode=1..}] sukunamode 0
scoreboard players set @s sukunaperm 1
tag @s add sukuna
event entity @s sukuna_markings
function sukuna/grant_skills
scoreboard objectives add nocts dummy
scoreboard players set @s nocts 6
tag @s remove nocts
function cheats/givedomainamp

tellraw @s {"rawtext":[{"text":"§f< §cRyomen Sukuna §r§f> §oI'll be taking control now...\n\n§5- Sukuna has now fully taken-over your body, you will be able to permanently use his abilities."}]}
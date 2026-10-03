tag @s[tag=sukuna,tag=reversecursed,tag=!reversecursedown] remove reversecursed
tag @s[tag=sukuna,tag=rctmaster,tag=!rctmasterown] remove rctmaster
scoreboard players set @s[tag=sukuna,scores={hollowbasketown=1},tag=!hollowbasketown] hollowbasketown 0
execute as @s[tag=has_sukuna,type=player] at @s run scoreboard players set sukunauser Mode 0

tag @s[tag=sukuna] remove sukuna
tag @s[tag=has_sukuna] remove has_sukuna
tag @s[tag=reversecursedown] remove reversecursedown
tag @s[tag=rctmasterown] remove rctmasterown
tag @s[tag=hollowbasketown] remove hollowbasketown
function sukuna/sukuna_clear
clear @s[hasitem={item=ds:sukuna_technique}] ds:sukuna_technique
event entity @s sukunatextureoff
scoreboard players set @s finger 0
scoreboard players set @s fuga 0
scoreboard players set @s sukunaperm 0
function cheats/mode_off
scoreboard players set @s[scores={sukunamode=19..}] sukunamode 18
effect @s[scores={endurance=666}] clear health_boost
effect @s[scores={endurance=666}] health_boost 99999999 104 true
effect @s[scores={endurance=666}] instant_health 1 25 true
scoreboard players set @s[scores={endurance=666}] endurance 100
tag @s[tag=heian_era] remove heian_era
event entity @s[has_property={property:body_transformation=1..4}] heian_off
event entity @s jjka:remove_sukuna_scale
title @s title Removed

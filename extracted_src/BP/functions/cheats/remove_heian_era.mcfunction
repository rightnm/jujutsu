tag @s[tag=!remove_heian_era] add remove_heian_era
effect @s[scores={endurance=666}] clear health_boost
effect @s[scores={endurance=666}] health_boost 99999999 104 true
effect @s[scores={endurance=666}] instant_health 1 25 true
scoreboard players set @s[scores={endurance=666}] endurance 100
tag @s[tag=heian_era] remove heian_era
event entity @s jjka:remove_sukuna_scale
event entity @s[has_property={property:body_transformation=1..4}] heian_off
execute as @s[tag=sukuna] at @s run function sukuna/grant_skills
event entity @s[has_property={property:sukuna_markings=!1}] sukuna_markings
tag @s[tag=remove_heian_era] remove remove_heian_era
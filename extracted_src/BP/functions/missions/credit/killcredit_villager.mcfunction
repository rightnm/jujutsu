scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_5villagers] run scoreboard players add @p[tag=killquest_5villagers] mission_credit 1
execute as @s if entity @p[tag=killquest_10villagers] run scoreboard players add @p[tag=killquest_10villagers] mission_credit 1


execute as @a[tag=killquest_5villagers,scores={mission_credit=5..}] at @s run function missions/rewards/5villagers
execute as @a[tag=killquest_10villagers,scores={mission_credit=10..}] at @s run function missions/rewards/10villagers

scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_1sorcerer_highgrade,r=30] run scoreboard players add @p[tag=killquest_1sorcerer_highgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_3sorcerers_highgrade,r=30] run scoreboard players add @p[tag=killquest_3sorcerers_highgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_5sorcerers_highgrade,r=30] run scoreboard players add @p[tag=killquest_5sorcerers_highgrade] mission_credit 1


execute as @a[tag=killquest_1sorcerer_highgrade,scores={mission_credit=1..}] at @s run function missions/rewards/1_highsorcerers
execute as @a[tag=killquest_3sorcerers_highgrade,scores={mission_credit=3..}] at @s run function missions/rewards/3_highsorcerers
execute as @a[tag=killquest_5sorcerers_highgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_highsorcerers

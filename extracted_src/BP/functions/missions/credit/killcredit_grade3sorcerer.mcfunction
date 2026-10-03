scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_5sorcerers_lowgrade,r=30] run scoreboard players add @p[tag=killquest_5sorcerers_lowgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_10sorcerers_lowgrade,r=30] run scoreboard players add @p[tag=killquest_10sorcerers_lowgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_30sorcerers_lowgrade,r=30] run scoreboard players add @p[tag=killquest_30sorcerers_lowgrade] mission_credit 1

execute as @s if entity @p[tag=killquest_5sorcerers_medgrade,r=30] run scoreboard players add @p[tag=killquest_5sorcerers_medgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_10sorcerers_medgrade,r=30] run scoreboard players add @p[tag=killquest_10sorcerers_medgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_30sorcerers_medgrade,r=30] run scoreboard players add @p[tag=killquest_30sorcerers_medgrade] mission_credit 1

execute as @a[tag=killquest_5sorcerers_lowgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_lowsorcerers
execute as @a[tag=killquest_10sorcerers_lowgrade,scores={mission_credit=10..}] at @s run function missions/rewards/10_lowsorcerers
execute as @a[tag=killquest_30sorcerers_lowgrade,scores={mission_credit=30..}] at @s run function missions/rewards/30_lowsorcerers

execute as @a[tag=killquest_5sorcerers_medgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_medsorcerers
execute as @a[tag=killquest_10sorcerers_medgrade,scores={mission_credit=10..}] at @s run function missions/rewards/10_medsorcerers
execute as @a[tag=killquest_30sorcerers_medgrade,scores={mission_credit=30..}] at @s run function missions/rewards/30_medsorcerers
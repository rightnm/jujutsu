scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_special_grade_sorcerer,r=30] run scoreboard players add @p[tag=killquest_special_grade_sorcerer] mission_credit 1


execute as @a[tag=killquest_special_grade_sorcerer,scores={mission_credit=1..}] at @s run function missions/rewards/special_grade_sorcerer

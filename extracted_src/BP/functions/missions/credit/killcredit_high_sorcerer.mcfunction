scoreboard objectives add mission_credit dummy
scoreboard players set @p[tag=high_sorcerer_quest] mission_credit 0
execute as @s[family=special_grade] run scoreboard players set @p[tag=high_sorcerer_quest,r=100] mission_credit 100
execute as @s[family=grade1] run scoreboard players set @p[tag=high_sorcerer_quest,r=100] mission_credit 99
execute as @s[family=grade2] run scoreboard players set @p[tag=high_sorcerer_quest,r=100] mission_credit 98
execute as @s[family=grade3] run scoreboard players set @p[tag=high_sorcerer_quest,r=100] mission_credit 97


execute as @a[tag=high_sorcerer_quest,scores={mission_credit=97}] at @s run function missions/rewards/high_sorcerer_quest1
execute as @a[tag=high_sorcerer_quest,scores={mission_credit=98}] at @s run function missions/rewards/high_sorcerer_quest2
execute as @a[tag=high_sorcerer_quest,scores={mission_credit=99}] at @s run function missions/rewards/high_sorcerer_quest3
execute as @a[tag=high_sorcerer_quest,scores={mission_credit=100}] at @s run function missions/rewards/high_sorcerer_quest4

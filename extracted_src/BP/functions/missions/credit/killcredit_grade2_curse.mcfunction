scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_grade2_curse,r=30] run scoreboard players set @p[tag=killquest_grade2_curse] mission_credit 99
execute as @s[family=grade1] if entity @p[tag=killquest_grade2_curse,r=30] run scoreboard players set @p[tag=killquest_grade2_curse] mission_credit 100


execute as @a[tag=killquest_grade2_curse,scores={mission_credit=99}] at @s run function missions/rewards/grade2_curse
execute as @a[tag=killquest_grade2_curse,scores={mission_credit=100}] at @s run function missions/rewards/grade2_curse_extra

scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_grasshopper_curse,r=30] run scoreboard players set @p[tag=killquest_grasshopper_curse] mission_credit 99


execute as @a[tag=killquest_grasshopper_curse,scores={mission_credit=99}] at @s run function missions/rewards/grasshopper_curse

scoreboard players random @s chance 1 100

execute as @s[scores={chance=1..50}] at @s run summon ds:q_sorcerer ~~25~
execute as @s[scores={chance=51..70}] at @s run summon ds:q_sorcerer_grade3 ~~25~
execute as @s[scores={chance=71..}] at @s unless entity @e[type=ds:bag_head,r=50] run summon ds:bag_head ~~25~



execute as @s[scores={chance=1..}] at @s positioned ~~25~ run damage @e[family=q_clan,r=5,c=1] 1 entity_attack entity @p[tag=special_mission_vessel]
execute as @s[scores={chance=1..}] at @s positioned ~~25~ run spreadplayers ~ ~ 20 30 @e[family=q_clan,r=5] 

scoreboard players set @s Mode 0
scoreboard players set @s chance 0
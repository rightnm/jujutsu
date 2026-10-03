scoreboard players set @s[scores={activemission=1..}] activemission 0
scoreboard players set @s missionsCD 1200

tellraw @s[tag=killquest_grade2_curse] {"rawtext":[{"text":"§cMission Cancelled."}]} 
tellraw @s[tag=!killquest_grade2_curse] {"rawtext":[{"text":"§cMission Cancelled.\n\n§e- We are disappointed in you..."}]}
tellraw @s[tag=!killquest_grade2_curse,scores={respawn=0}] {"rawtext":[{"text":"§l§4EXP Deducted"}]}
scoreboard players operation @s[tag=!killquest_grade2_curse,scores={respawn=0}] Exp /= two Mode
playsound random.pling @a ~~~ 0.5 0.5

tag @s[tag=killquest_5curses_lowgrade] remove killquest_5curses_lowgrade 
tag @s[tag=killquest_10curses_lowgrade] remove killquest_10curses_lowgrade
tag @s[tag=killquest_30curses_lowgrade] remove killquest_30curses_lowgrade

#curse
tag @s[tag=killquest_5sorcerers_lowgrade] remove killquest_5sorcerers_lowgrade 
tag @s[tag=killquest_10sorcerers_lowgrade] remove killquest_10sorcerers_lowgrade
tag @s[tag=killquest_30sorcerers_lowgrade] remove killquest_30sorcerers_lowgrade


# med
tag @s[tag=killquest_5curses_medgrade] remove killquest_5curses_medgrade
tag @s[tag=killquest_10curses_medgrade] remove killquest_10curses_medgrade
tag @s[tag=killquest_30curses_medgrade] remove killquest_30curses_medgrade

#curse
tag @s[tag=killquest_5sorcerers_medgrade] remove killquest_5sorcerers_medgrade
tag @s[tag=killquest_10sorcerers_medgrade] remove killquest_10sorcerers_medgrade
tag @s[tag=killquest_30sorcerers_medgrade] remove killquest_30sorcerers_medgrade

#high
tag @s[tag=killquest_3curses_highgrade] remove killquest_3curses_highgrade
tag @s[tag=killquest_1curse_highgrade] remove killquest_1curse_highgrade
tag @s[tag=killquest_30curses_medgrade] remove killquest_30curses_medgrade
tag @s[tag=killquest_5curses_highgrade] remove killquest_5curses_highgrade
tag @s[tag=killquest_special_grade_curse] remove killquest_special_grade_curse

execute as @s[tag=killquest_flyheads_infestation] as @e[type=ds:projectile,name=waypoint,c=1,tag=flyheads_quest] at @s run kill @e[family=flyhead,r=40]
execute as @s[tag=killquest_flyheads_infestation] as @e[type=ds:projectile,name=waypoint,c=1,tag=flyheads_quest] at @s run kill @s
execute as @s[tag=killquest_flyheads_infestation] run tickingarea remove flyheads_quest
tag @s[tag=killquest_flyheads_infestation] remove killquest_flyheads_infestation
execute as @s[tag=killquest_grasshopper_curse] as @e[type=ds:projectile,name=waypoint,c=1,tag=grasshopper_quest] at @s run kill @e[type=ds:grasshopper_curse,r=40]
execute as @s[tag=killquest_grasshopper_curse] as @e[type=ds:projectile,name=waypoint,c=1,tag=grasshopper_quest] at @s run kill @s
execute as @s[tag=killquest_grasshopper_curse] run tickingarea remove grasshopper_quest
tag @s[tag=killquest_grasshopper_curse] remove killquest_grasshopper_curse
execute as @s[tag=killquest_grade2_curse] as @e[type=ds:projectile,name=waypoint,c=1,tag=grade2_curse_quest] at @s run kill @e[family=grade2,r=40]
execute as @s[tag=killquest_grade2_curse] as @e[type=ds:projectile,name=waypoint,c=1,tag=grade2_curse_quest] at @s run kill @e[family=grade1,r=40]
execute as @s[tag=killquest_grade2_curse] as @e[type=ds:projectile,name=waypoint,c=1,tag=grade2_curse_quest] at @s run kill @s
execute as @s[tag=killquest_grade2_curse] run tickingarea remove grade2_curse_quest
tag @s[tag=killquest_grade2_curse] remove killquest_grade2_curse
tag @s[tag=cursed_box_mission] remove cursed_box_mission


execute as @s[tag=capture_point] as @e[type=ds:projectile,name=waypoint,c=1,tag=capture_point] at @s run kill @s
execute as @s[tag=capture_point] run tickingarea remove capture_point
execute as @s[tag=capture_point] at @s run event entity @e[type=ds:capture_point,r=200,c=1] ds:disappear
tag @s[tag=capture_point] remove capture_point


tag @s[tag=mission_exterminate_negative_field_v1] remove mission_exterminate_negative_field_v1
tag @s[tag=mission_exterminate_negative_field_v2] remove mission_exterminate_negative_field_v2


#curse
tag @s[tag=killquest_3sorcerers_highgrade] remove killquest_3sorcerers_highgrade
tag @s[tag=killquest_1sorcerer_highgrade] remove killquest_1sorcerer_highgrade
tag @s[tag=killquest_30sorcerers_medgrade] remove killquest_30sorcerers_medgrade
tag @s[tag=killquest_5sorcerers_highgrade] remove killquest_5sorcerers_highgrade
tag @s[tag=killquest_special_grade_sorcerer] remove killquest_special_grade_sorcerer

tag @s[tag=killquest_5villagers] remove killquest_5villagers
tag @s[tag=killquest_10villagers] remove killquest_10villagers

tag @s[tag=mission_negative_field_v1] remove mission_negative_field_v1
tag @s[tag=mission_negative_field_v2] remove mission_negative_field_v2

execute as @s[tag=high_sorcerer_quest] as @e[type=ds:projectile,name=waypoint,c=1,tag=high_sorcerer_curse_quest] at @s run kill @e[family=grade1,r=40]
execute as @s[tag=high_sorcerer_quest] as @e[type=ds:projectile,name=waypoint,c=1,tag=high_sorcerer_curse_quest] at @s run kill @e[family=grade2,r=40]
execute as @s[tag=high_sorcerer_quest] as @e[type=ds:projectile,name=waypoint,c=1,tag=high_sorcerer_curse_quest] at @s run kill @e[family=grade3,r=40]
execute as @s[tag=high_sorcerer_quest] as @e[type=ds:projectile,name=waypoint,c=1,tag=high_sorcerer_curse_quest] at @s run kill @e[family=grade4,r=40]
execute as @s[tag=high_sorcerer_quest] as @e[type=ds:projectile,name=waypoint,c=1,tag=high_sorcerer_curse_quest] at @s run kill @s
execute as @s[tag=high_sorcerer_quest] run tickingarea remove high_sorcerer_curse_quest
tag @s[tag=high_sorcerer_quest] remove high_sorcerer_quest
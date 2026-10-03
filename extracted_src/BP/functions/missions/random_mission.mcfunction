# --------------- kill quests ---------------

playsound note.pling @s ~~~ 1 0.5

#no flyheads
scoreboard players random @s[scores={random_mission=7..8,grade=4..}] random_mission 9 10

#no high grade missions for grade 4s
scoreboard players random @s[scores={grade=1,random_mission=5..6}] random_mission 1 4

scoreboard players random @s[scores={random_mission=17..},tag=!curse] random_mission 1 16

# sorcerer---------------------------------------------------------------------------
tag @s[scores={random_mission=1,grade=1..2},tag=!curse] add killquest_5curses_lowgrade 
tag @s[scores={random_mission=1,grade=3},tag=!curse] add killquest_5curses_medgrade
tag @s[scores={random_mission=1,grade=4..},tag=!curse] add killquest_1curse_highgrade

tag @s[scores={random_mission=2,grade=1..2},tag=!curse] add killquest_10curses_lowgrade
tag @s[scores={random_mission=2,grade=3},tag=!curse] add killquest_10curses_medgrade
tag @s[scores={random_mission=2,grade=4..},tag=!curse] add killquest_3curses_highgrade

tag @s[scores={random_mission=3,grade=1..3},tag=!curse] add killquest_30curses_lowgrade
tag @s[scores={random_mission=3,grade=4..},tag=!curse] add killquest_1curse_highgrade

tag @s[scores={random_mission=4,grade=1..2},tag=!curse] add killquest_5curses_medgrade
tag @s[scores={random_mission=4,grade=3..4},tag=!curse] add killquest_30curses_medgrade
tag @s[scores={random_mission=4,grade=5},tag=!curse] add killquest_1curse_highgrade

tag @s[scores={random_mission=5,grade=2..3},tag=!curse] add killquest_10curses_medgrade
tag @s[scores={random_mission=5,grade=4..},tag=!curse] add killquest_30curses_medgrade

tag @s[scores={random_mission=6,grade=1..3},tag=!curse] add killquest_1curse_highgrade
tag @s[scores={random_mission=6,grade=4},tag=!curse] add killquest_special_grade_curse
tag @s[scores={random_mission=6,grade=5},tag=!curse] add killquest_5curses_highgrade


#waypoint missions
tag @s[scores={random_mission=7..8,grade=1..3},tag=!curse] add killquest_flyheads_infestation
execute as @s[tag=killquest_flyheads_infestation] at @s run function missions/flyheads

tag @s[scores={random_mission=9,grade=1..5},tag=!curse] add killquest_grasshopper_curse
execute as @s[tag=killquest_grasshopper_curse] at @s run function missions/grasshopper_curse

tag @s[scores={random_mission=10,grade=2..5},tag=!curse] add killquest_grade2_curse
execute as @s[tag=killquest_grade2_curse] at @s run function missions/grade2_curse

tag @s[scores={random_mission=11..14,grade=1..5},tag=!curse] add cursed_box_mission

tag @s[scores={random_mission=15..16,grade=1..},tag=!curse] add capture_point
execute as @s[tag=capture_point,tag=!curse] at @s run function missions/capture_point_sorcerer


#curse---------------------------------------------------------------------------
tag @s[scores={random_mission=1,grade=1..2},tag=curse] add killquest_5sorcerers_lowgrade
tag @s[scores={random_mission=1,grade=3},tag=curse] add killquest_5sorcerers_medgrade
tag @s[scores={random_mission=1,grade=4..},tag=curse] add killquest_1sorcerer_highgrade

tag @s[scores={random_mission=2,grade=1..2},tag=curse] add killquest_10sorcerers_lowgrade
tag @s[scores={random_mission=2,grade=3},tag=curse] add killquest_10sorcerers_medgrade
tag @s[scores={random_mission=2,grade=4..},tag=curse] add killquest_3sorcerers_highgrade

tag @s[scores={random_mission=3,grade=1..3},tag=curse] add killquest_30sorcerers_lowgrade
tag @s[scores={random_mission=3,grade=4..},tag=curse] add killquest_1sorcerer_highgrade

tag @s[scores={random_mission=4,grade=1..2},tag=curse] add killquest_5sorcerers_medgrade
tag @s[scores={random_mission=4,grade=3..4},tag=curse] add killquest_30sorcerers_medgrade
tag @s[scores={random_mission=4,grade=5},tag=curse] add killquest_1sorcerer_highgrade

tag @s[scores={random_mission=5,grade=2..3},tag=curse] add killquest_10sorcerers_medgrade
tag @s[scores={random_mission=5,grade=4..},tag=curse] add killquest_30sorcerers_medgrade

tag @s[scores={random_mission=6,grade=1..3},tag=curse] add killquest_1sorcerer_highgrade
tag @s[scores={random_mission=6,grade=4},tag=curse] add killquest_special_grade_sorcerer
tag @s[scores={random_mission=6,grade=5},tag=curse] add killquest_5sorcerers_highgrade

tag @s[scores={random_mission=7..10,grade=1..},tag=curse] add killquest_5villagers

tag @s[scores={random_mission=11,grade=1..},tag=curse] add killquest_10villagers


#waypoint missions
tag @s[scores={random_mission=12,grade=1..},tag=curse] add high_sorcerer_quest
execute as @s[tag=high_sorcerer_quest,tag=curse] at @s run function missions/high_sorcerer_quest

tag @s[scores={random_mission=13..14,grade=1..5},tag=curse] add cursed_box_mission

tag @s[scores={random_mission=15..16,grade=1..5},tag=curse] add mission_negative_field_v1
tag @s[scores={random_mission=17,grade=1..5},tag=curse] add mission_negative_field_v2

tag @s[scores={random_mission=18..20,grade=1..},tag=curse] add capture_point
execute as @s[tag=capture_point,tag=curse] at @s run function missions/capture_point_curse

#---------------------------------------------------------------------------

#sorcerers
scoreboard players set @s activemission 1
tellraw @s[tag=!curse,tag=killquest_5curses_lowgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 5 §lLow-Grade (Grade 3-4)§r§a Curses.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_10curses_lowgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 10 §lLow-Grade (Grade 3-4)§r§a Curses.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_30curses_lowgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 30 §lLow-Grade (Grade 3-4)§r§a Curses.§r"}]} 

tellraw @s[tag=!curse,tag=killquest_5curses_medgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 5 §lMedium-Grade (Grade 3-2)§r§a Curses.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_10curses_medgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 10 §lMedium-Grade (Grade 3-2)§r§a Curses.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_30curses_medgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 30 §lMedium-Grade (Grade 3-2)§r§a Curses.§r"}]} 

tellraw @s[tag=!curse,tag=killquest_1curse_highgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill a §lGrade 1§r§a Curse.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_3curses_highgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 3 §lGrade 1§r§a Curses.§r"}]} 
tellraw @s[tag=!curse,tag=killquest_5curses_highgrade] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill 5 §lGrade 1§r§a Curses.§r"}]} 

tellraw @s[tag=!curse,tag=killquest_special_grade_curse] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Find and Kill a §l§r§5Special Grade§r§a Curse.§r"}]} 


tellraw @s[tag=!curse,tag=killquest_flyheads_infestation] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Head to the marked waypoint, there has been an infestation of flyheads swarming the area and you need to eliminate them all!§r"}]} 

tellraw @s[tag=!curse,tag=killquest_grasshopper_curse] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Head to the marked waypoint, a Dangerous §gGrade 2§r§a 'Grasshopper' curse has been spotted in the area and we need you to eliminate it.!§r"}]} 

tellraw @s[tag=!curse,tag=killquest_grade2_curse] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Head to the marked waypoint, an Abnormal §gGrade 2§r§a curse has been spotted in the area and we need you to eliminate it!§r"}]} 

tellraw @s[tag=!curse,tag=cursed_box_mission] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- We need you to find a Mysterious Box, now this may seem questionable but you're looking for a Wooden box with some lighting around it and these boxes spew cursed energy, attracting curses. We'd like for you to find one of these §r§bCursed Boxes §aand clear it out for us.§r"}]} 

tellraw @s[tag=!curse,tag=capture_point] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- We need you to retake an area, a tragedy has occured, building up energy in an important location, causing curses to swarm there, follow the Waypoint we have marked and capture the point.§r"}]} 


tellraw @s[tag=!curse,tag=mission_exterminate_negative_field_v1] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Head to the marked waypoint, an strong §dNegative Field §ahas occured in the are and we need you to exorcise the curses it has created.§r"}]} 
tellraw @s[tag=!curse,tag=mission_exterminate_negative_field_v2] {"rawtext":[{"text":"§f§l| You have been assigned a new Mission |\n§r§a- Head to the marked waypoint, an immensely powerful §dNegative Field §ahas occured in the are and we need you to exorcise the curses it has created.§r"}]} 



#curses

tellraw @s[tag=curse,tag=killquest_5sorcerers_lowgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 5 §lLow-Grade (Grade 3-4)§r§a Sorcerers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_10sorcerers_lowgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 10 §lLow-Grade (Grade 3-4)§r§a Sorcerers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_30sorcerers_lowgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 30 §lLow-Grade (Grade 3-4)§r§a Sorcerers.§r"}]} 

tellraw @s[tag=curse,tag=killquest_5sorcerers_medgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 5 §lMedium-Grade (Grade 3-2)§r§a Sorcerers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_10sorcerers_medgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 10 §lMedium-Grade (Grade 3-2)§r§a Sorcerers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_30sorcerers_medgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 30 §lMedium-Grade (Grade 3-2)§r§a Sorcerers.§r"}]} 

tellraw @s[tag=curse,tag=killquest_1sorcerer_highgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill a §lGrade 1§r§a Sorcerer.§r"}]} 
tellraw @s[tag=curse,tag=killquest_3sorcerers_highgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 3 §lGrade 1§r§a Sorcerers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_5sorcerers_highgrade] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill 5 §lGrade 1§r§a Sorcerers.§r"}]} 

tellraw @s[tag=curse,tag=killquest_special_grade_sorcerer] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Find and Kill a §l§r§5Special Grade§r§a Sorcerer.§r"}]} 

tellraw @s[tag=curse,tag=killquest_5villagers] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Kill 5 Villagers.§r"}]} 
tellraw @s[tag=curse,tag=killquest_10villagers] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Kill 10 Villagers.§r"}]} 

tellraw @s[tag=curse,tag=cursed_box_mission] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- I want you to find one of these 'Suspicious Looking Boxes' with massive amounts of Cursed Energy flowing out, lets call them Cursed Boxes. Once you have found one, I'd like for you to destroy it, other curses in the area may appear and start helping you destroy it aswell.§r"}]} 

tellraw @s[tag=curse,tag=high_sorcerer_quest] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- A Jujutsu Sorcerer killed one of my Subordinates, head to the marked waypoint and take care of them for me.§r"}]} 

tellraw @s[tag=curse,tag=mission_negative_field_v1] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Let's cause some terror. I'd like for you to cause an overload in negative energy, lets call it a §dNegative Field§a, what I want you to do is bring humans, villagers, sorcerers to a specific area and eliminate them all. Doing this should build up negative emotions in the are as they die, causing an overload of negative energy which shall bring power to us curses. I'd like for you to keep going until we create a §6Grade 2§a or higher curse. Good Luck.§r"}]} 

tellraw @s[tag=curse,tag=mission_negative_field_v2] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- Let's cause some terror. I'd like for you to cause an overload in negative energy, lets call it a §dNegative Field§a, what I want you to do is bring humans, villagers, sorcerers to a specific area and eliminate them all. Doing this should build up negative emotions in the are as they die, causing an overload of negative energy which shall bring power to us curses. I'd like for you to keep going until we create a §cGrade 1§a or higher curse. Good Luck.§r"}]} 


tellraw @s[tag=curse,tag=capture_point] {"rawtext":[{"text":"§f| §c§lThe watcher has a request of you§r |\n§r§a- It seems the sorcerers have taken over an important piece of land. Head to the waypoint and capture the point, killing any sorcerers who stand in your way!§r"}]} 


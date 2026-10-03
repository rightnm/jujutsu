execute at @s positioned ^^^3 if entity @p[tag=!has_sukuna,r=2.9] run tag @p[tag=!has_sukuna,tag=!megunacutscene_p2,c=1,r=2.9] add megunacutscene_p2

execute at @s positioned ^^^3  if entity @p[tag=!has_sukuna,r=2.9] run tag @p[hasitem={item=ds:sukuna_technique,location=slot.weapon.mainhand},scores={punch=1},c=1] add megunacutscene_p1

execute at @s positioned ^^^3  if entity @p[tag=!has_sukuna,r=2.9] run scoreboard players set @p[tag=!has_sukuna,tag=!megunacutscene_p2,c=1,r=2.9] sukunacutscene 10011

execute at @s positioned ^^^3  if entity @p[tag=!has_sukuna,r=2.9] run scoreboard players set @p[hasitem={item=ds:sukuna_technique,location=slot.weapon.mainhand},scores={punch=1},c=1] sukunacutscene 10011





execute  if entity @e[type=ds:megumi,c=1,r=10] at @s[tag=!megunacutscene_p2] run tag @e[type=ds:megumi,c=1,r=10] add megunacutscene_p2

execute  if entity @e[type=ds:megumi,c=1,r=10] at @s[tag=!megunacutscene_p2] run tag @p[hasitem={item=ds:sukuna_technique,location=slot.weapon.mainhand},scores={punch=1},c=1] add megunacutscene_p1

execute  if entity @e[type=ds:megumi,c=1,r=10] at @s[tag=!megunacutscene_p2] run scoreboard players set @e[type=ds:megumi,c=1,r=10] sukunacutscene 10011

execute  if entity @e[type=ds:megumi,c=1,r=10] at @s[tag=!megunacutscene_p2] run scoreboard players set @p[hasitem={item=ds:sukuna_technique,location=slot.weapon.mainhand},scores={punch=1},c=1] sukunacutscene 10011


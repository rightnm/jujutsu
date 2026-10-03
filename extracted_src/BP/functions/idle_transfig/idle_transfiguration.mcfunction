execute as @a[scores={Sneaking=1},tag=!uplook,tag=idle_fists] at @s run function idle_transfig/fighting_switch

execute as @a[tag=idle_transfig,has_property={property:heart=8},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,tag=!abilitying] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
playanimation @a[tag=idle_transfig,has_property={property:heart=8},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,tag=!abilitying] animation.mahito.formation
event entity @a[tag=idle_transfig,has_property={property:heart=8},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,scores={move=0,cutscene=0},tag=!abilitying] mahito_metal_off
event entity @a[tag=idle_transfig,has_property={property:heart=8},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,scores={move=0,cutscene=0},tag=!abilitying] heart_off

execute as @a[tag=idle_transfig,has_property={property:heart=9},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,tag=!abilitying] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
playanimation @a[tag=idle_transfig,has_property={property:heart=9},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,tag=!abilitying] animation.mahito.formation2
event entity @a[tag=idle_transfig,has_property={property:heart=9},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,scores={move=0,cutscene=0},tag=!abilitying] mahito_metal_off
event entity @a[tag=idle_transfig,has_property={property:heart=9},hasitem={item=ds:dash,location=slot.weapon.mainhand,quantity=0},tag=!idle_fists,scores={move=0,cutscene=0},tag=!abilitying] heart_off

execute as @a[tag=!nocts,tag=idle_transfig,hasitem={item=ds:idle_transfig1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,punch=1}] at @s run function idle_transfig/soul_ab1
execute as @a[tag=!nocts,tag=idle_transfig,hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand},scores={Sneaking=0,Disabled=0,Stun=0,Disabled2=0,punch=1}] at @s positioned ^^^5.05 run function idle_transfig/select_target
execute if entity @a[tag=idle_transfig,scores={Disabled=9}] run tag @e[tag=idle_target] remove idle_target

execute as @e[family=transfigured_human] unless entity @s[scores={entity_spawn_anim=0..}] run scoreboard players set @s entity_spawn_anim 4
playanimation @e[family=transfigured_human,c=3,scores={entity_spawn_anim=3..}] animation.transfigure_formed
effect @e[family=transfigured_human,c=3,scores={entity_spawn_anim=3..}] invisibility 1 1 true
effect @e[family=transfigured_human,c=3,scores={entity_spawn_anim=3..}] clear invisibility 

execute as @e[type=ds:soul_isomer,c=1] run function idle_transfig/soul_isomer

event entity @e[scores={move=1..3},tag=idle_transfig] ds:release_seat

event entity @a[scores={move=1..,cutscene=0},has_property={property:body_transfigure=0}] mahito_on
execute as @a[tag=!idle_fists,scores={move=0,cutscene=0,domain=0,domainstart=0},has_property={property:body_transfigure=1..,property:heart=!8,property:heart=!9}] unless entity @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] unless entity @s[hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand}] unless entity @s[hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand}] run event entity @s mahito_off


tag @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=300..,detect_jump=0,punch=1}] add form6
execute as @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..299,Sneaking=1..,detect_jump=0,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=1..,Energy=300..,detect_jump=0,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
tellraw @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=1..,Energy=300..,detect_jump=0,punch=1}] {"rawtext":[{"text":"§cMurder Manifestation is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=300..,detect_jump=0,punch=1}] move 71
scoreboard players set @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=300..,detect_jump=0,punch=1}] ability5 400
scoreboard players remove @a[tag=!nocts,hasitem={item=ds:idle_transfig2,location=slot.weapon.mainhand},scores={Energy=300..,move=71,Sneaking=1..,detect_jump=0,punch=1}] Energy 300

execute as @p[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,punch=1},hasitem={item=ds:unstable_transfigured_human,quantity=3..,location=slot.weapon.mainhand}] at @s run function idle_transfig/transfigure_human_unstable3

tag @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,Energy=500..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] add form12
execute as @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=0,Energy=0..499,Sneaking=1..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=1..,Sneaking=1..,Energy=500..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=1..,Sneaking=1..,Energy=500..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] at @s run tellraw @s {"rawtext":[{"text":"§cPolymorphic Soul Isomer is on cooldown: §e"},{"score":{"name": "@p","objective": "ability10"}},{"text":"§c."}]}
scoreboard players set @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,Energy=500..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] move 21
scoreboard players set @a[tag=!nocts,scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,Energy=500..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] ability10 200
scoreboard players remove @a[tag=!nocts,scores={Energy=500..,move=21,Sneaking=1..,detect_jump=0,punch=1},hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] Energy 500



#Calculate damage taken
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s prev_health run scoreboard players operation @s damage_taken = @s prev_health
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health run scoreboard players operation @s damage_taken -= @s detect_health

#Apply only if positive (damage taken)
scoreboard players set @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0..4},tag=!instant_body,tag=!nocts,tag=soul_damage] antiheal 5
execute as @a[tag=idle_transfig,scores={detect_health=1..,antiheal=0,damage_taken=1..,Energy=0..10},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health at @s run playsound mob.zombie.remedy @a[r=5] ~~~ 0.5 0.8
execute as @a[tag=idle_transfig,scores={detect_health=1..,antiheal=0,damage_taken=1..,Energy=0..10},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health run effect @s blindness 2 1 true
execute as @a[tag=idle_transfig,scores={detect_health=1..,antiheal=0,damage_taken=1..,Energy=0..10},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health run scoreboard players set @s antiheal 400
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0,damage_taken=1..,Energy=11..},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health run scriptevent ds:regeneration
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0,damage_taken=1..,Energy=11..},tag=!instant_body,tag=!nocts] unless score @s damage_taken = @s detect_health run scoreboard players remove @s Energy 10

#Update prev_health (delayed 1 tick)
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=0},tag=!instant_body,tag=!nocts] if score @s prev_health < @s detect_health run scoreboard players operation @s prev_health = @s detect_health
execute as @e[tag=idle_transfig,scores={detect_health=1..,antiheal=1..},tag=!instant_body,tag=!nocts] unless score @s prev_health = @s detect_health run scoreboard players operation @s prev_health = @s detect_health
execute as @a[tag=idle_transfig,scores={detect_health=1..,antiheal=0},tag=!instant_body,tag=!nocts] if score @s prev_health > @s health_max run scoreboard players operation @s prev_health = @s health_max





# Instant Spirit Body

execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,instantbody_durability=1..}] if score @s prev_health = @s detect_health run function idle_transfig/detect_health_50p
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,instantbody_durability=1..,countdown1=100..}] if score @s prev_health = @s detect_health if score @s instantbody_durability < @s detect_health_50p run scoreboard players add @s instantbody_durability 8
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,instantbody_durability=1..,countdown1=100..}] if score @s prev_health = @s detect_health if score @s instantbody_durability > @s detect_health_50p run scoreboard players operation @s instantbody_durability = @s detect_health_50p
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,instantbody_durability=1..,countdown1=100..}] if score @s prev_health = @s detect_health run scoreboard players set @s countdown1 0
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,instantbody_durability=1..}] if score @s prev_health = @s detect_health if score @s instantbody_durability < @s detect_health_50p run scoreboard players add @s countdown1 1

#Calculate damage taken
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..}] unless score @s damage_taken = @s prev_health run scoreboard players operation @s damage_taken = @s prev_health
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..}] unless score @s damage_taken = @s detect_health run scoreboard players operation @s damage_taken -= @s detect_health

#Apply only if positive (damage taken)
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,damage_taken=1..,instantbody_durability=1..,countdown1=1..}] unless score @s damage_taken = @s detect_health run scoreboard players set @s countdown1 0
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,damage_taken=1..,instantbody_durability=1..}] unless score @s damage_taken = @s detect_health run scoreboard players operation @s instantbody_durability -= @s damage_taken
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..,damage_taken=1..,instantbody_durability=..0,move=0,cutscene=0}] unless score @s damage_taken = @s detect_health at @s run function idle_transfig/end_transformation

#Update prev_health (delayed 1 tick)
execute as @e[tag=idle_transfig,tag=instant_body,scores={detect_health=1..}] unless score @s prev_health = @s detect_health run scoreboard players operation @s prev_health = @s detect_health



tag @e[tag=idle_transfig,tag=!instant_body,tag=soul_damage] remove soul_damage
tag @e[tag=idle_transfig,tag=instant_body,tag=resistance_0.5x,scores={damage=0,damagehalf=0},tag=soul_damage] remove soul_damage



tag @e[tag=instant_body,has_property={property:body_transformation=!3}] remove instant_body
execute as @e[tag=!instant_body,has_property={property:body_transformation=3}] run function idle_transfig/detect_health_50p
execute as @e[tag=!instant_body,has_property={property:body_transformation=3}] unless score @s instantbody_durability = @s detect_health_50p run scoreboard players operation @s instantbody_durability = @s detect_health_50p
execute as @e[tag=!instant_body,has_property={property:body_transformation=3}] unless score @s prev_health = @s detect_health run scoreboard players operation @s prev_health = @s detect_health
tag @e[tag=!instant_body,has_property={property:body_transformation=3}] add instant_body
replaceitem entity @e[tag=!instant_body,hasitem={item=ds:instant_armour,location=slot.armor.legs}] slot.armor.legs 1 air
replaceitem entity @e[tag=instant_body,hasitem={item=ds:instant_armour,location=slot.armor.legs,quantity=0}] slot.armor.legs 1 ds:instant_armour 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
effect @a[tag=instant_body,scores={sprinting=60..}] speed 1 25 true
effect @a[tag=instant_body,scores={sprinting=60..}] jump_boost 1 10 true
execute as @a[tag=instant_body,scores={sprinting=60}] at @s run function supersonic
#execute as @a[tag=instant_body,scores={atk=1..}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,tag=!unselect,scores={damage=0..},rm=2.95] damage 2



clear @a[tag=instant_body,hasitem={item=ds:idle_transfig_combat1}] ds:idle_transfig_combat1
clear @a[tag=instant_body,hasitem={item=ds:idle_transfig_combat2}] ds:idle_transfig_combat2
clear @a[tag=instant_body,hasitem={item=ds:idle_transfig_combat3}] ds:idle_transfig_combat3
give @a[tag=instant_body,hasitem={item=ds:instant_body_combat,quantity=0}] ds:instant_body_combat 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

clear @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig5
clear @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig_combat1
clear @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig_combat2
clear @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig_combat3
give @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig_combat1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:idle_transfig5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
clear @a[tag=!instant_body,hasitem={item=ds:instant_body_combat}] ds:instant_body_combat






execute as @a[tag=instant_body,scores={sprinting=60..}] at @s unless block ~~-0.1~ air run particle ds:dust
scoreboard players set @e[tag=instant_body,scores={shocked=3..}] shocked 2
scoreboard players set @e[tag=instant_body,scores={onfire=5..}] onfire 4
effect @e[tag=instant_body] resistance 3 0 true
tag @e[tag=instant_body,tag=!resistance_0.5x] add resistance_0.5x
#scoreboard players remove @e[tag=idle_transfig,scores={antiheal=1..},tag=!nocts] antiheal 1
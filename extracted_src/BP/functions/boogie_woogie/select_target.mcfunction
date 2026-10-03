# start
scoreboard objectives add BoogieSelfID dummy
scoreboard objectives add BoogieTargetID dummy
scoreboard objectives add temp dummy
scoreboard objectives add oldID dummy
scoreboard players set @s Disabled 10
tag @s add boogietargetting

# save current BoogieSelfID to player-specific storage
scoreboard players operation @s oldID = @s BoogieSelfID

# clear entities that had the same oldid as ur old target
execute if entity @p[r=5.1,tag=boogietargetting] run execute as @e[scores={BoogieTargetID=1..}] if score @s BoogieTargetID = @p oldID run scoreboard players set @e BoogieTargetID 0
execute if entity @p[r=5.1,tag=boogietargetting] run execute as @e[scores={BoogieTargetID=1..}] if score @s BoogieTargetID = @p oldID run tag @e remove boogie_target
execute if entity @p[r=5.1,tag=boogietargetting] run execute as @e[scores={BoogieSelfID=1..}] if score @s BoogieSelfID = @p oldID run scoreboard players set @e BoogieSelfID 0
execute if entity @p[r=5.1,tag=boogietargetting] run execute as @e[scores={BoogieSelfID=1..}] if score @s BoogieSelfID = @p oldID run tag @e remove old_target


# clear self id for clean slate
scoreboard players set @s BoogieSelfID 0

# tag new valid target nearby (that isn't the player or a Frame)
execute unless entity @e[tag=boogie_target, c=1] run tag @e[tag=!Frames,tag=!heavenlyrestriction,family=!hr,family=!heavenlyrestriction, tag=!boogietargetting, r=4.9, c=1] add boogie_target

# if new target exists, mark that it JUST got picked (used for sound/message)
execute if entity @e[tag=boogie_target, c=1] run tag @s add just_set_target

# mark that target so it doesn't retrigger next time
tag @e[tag=boogie_target] add old_target

# generate new BoogieSelfID
scoreboard players random @s[tag=boogietargetting] BoogieSelfID 1 10000

# giv BoogieSelfID to the new target, only assign BoogieTargetID to the target
execute as @e[tag=boogie_target, r=5, c=1] run scoreboard players operation @s BoogieTargetID = @p[tag=boogietargetting] BoogieSelfID

# feedback
execute as @s[tag=just_set_target] at @s if score @s Disabled matches 10 run tellraw @s {"rawtext":[{"text":"§aTarget locked: §r§f"}, {"selector":"@e[tag=boogie_target,c=1]"}]}
execute as @s[tag=just_set_target] at @s if score @s Disabled matches 10 run playsound random.orb @s
tag @s remove just_set_target

# continue further if needed
execute positioned ^^^5 if entity @e[tag=boogietargetting, r=50] unless entity @e[tag=boogie_target,c=1] run function boogie_woogie/select_target

# clear tags and shi
tag @s remove boogietargetting
tag @e[tag=boogie_target] remove boogie_target
tag @e[tag=old_target] remove old_target

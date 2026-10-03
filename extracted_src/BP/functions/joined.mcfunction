#join impframe timer
tickingarea add 0 0 0 0 0 0 spawn

scoreboard objectives add joined dummy
scoreboard players set @s joined 200
#abilities activation
scoreboard objectives add abilities dummy
scoreboard players add abilities abilities 0
#gamerules
recipe take @a ds:mysterious_artifact_spawn_egg
gamerule falldamage false
gamerule showtags false
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule doimmediaterespawn true
function add_scores

#custom joins
execute as @s[name=iiTestAlt] run tellraw @a {"rawtext":[{"text":"§l§o§4Heroic has Joined the game."}]}
execute as @s[name=iiTestAlt] run playsound mob.wither.spawn @a
execute as @s[name=iiTest7] run tellraw @a {"rawtext":[{"text":"§l§o§4Heroic has Joined the game."}]}
execute as @s[name=iiTest7] run playsound mob.wither.spawn @a
execute as @s[name="Blue Lemon6726"] run tellraw @a {"rawtext":[{"text":"§l§o§1Blue Lemon has Joined the game."}]}
execute as @s[name="Blue Lemon6726"] run playsound mob.wither.spawn @a

#warning
tellraw @s {"rawtext":[{"text":"§o§e- If your game crashes in a few seconds, disable 'impact frames' using the settings item or use the No-Impact Frames behaviour pack!!!\n\n§eMake Sure Experimental Settings, such as Script API are enabled in the world settings!"}]}



execute unless score abilities abilities = one endurance run scoreboard players set abilities abilities 1
scoreboard players set @a abilities 92174

#joined tag
tag @s add joined

scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add impactframes Mode 1
execute as @p if score impactframes Mode >= three Mode run scoreboard players set impactframes Mode 1
execute as @p if score impactframes Mode = two Mode run tag @a remove impactframesoff
execute as @p if score impactframes Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aEvery player's Impact Frames have been Turned On! \n(If they're still off for anyone, do '/tag @a remove impactframesoff')"}]}
execute as @p if score impactframes Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cEvery player's Impact Frames have been Turned Off!"}]}
execute as @p if score impactframes Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score impactframes Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999


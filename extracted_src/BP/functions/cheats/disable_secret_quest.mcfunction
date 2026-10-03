scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add secretquest Mode 1
execute as @p if score secretquest Mode >= three Mode run scoreboard players set secretquest Mode 1
execute as @p if score secretquest Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cThe Secret Quest has been Turned Off!"}]}
execute as @p if score secretquest Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score secretquest Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aThe Secret Quest has been Turned On!"}]}
execute as @p if score secretquest Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999


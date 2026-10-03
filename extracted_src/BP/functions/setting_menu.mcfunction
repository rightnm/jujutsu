scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add menuoff Mode 1
execute as @p if score menuoff Mode >= three Mode run scoreboard players set menuoff Mode 1
execute as @p if score menuoff Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cThe Home Menu has been Turned Off!"}]}
execute as @p if score menuoff Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score menuoff Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aThe Home Menu has been Turned On!"}]}
execute as @p if score menuoff Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999


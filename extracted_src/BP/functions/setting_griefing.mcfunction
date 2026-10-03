scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players set four Mode 4
scoreboard players add griefing Mode 1
execute as @p if score griefing Mode >= four Mode run scoreboard players set griefing Mode 1
execute as @p if score griefing Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cBlock Destruction/Griefing been Turned Off!"}]}
execute as @p if score griefing Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score griefing Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aBlock Destruction/Griefing been Turned On!"}]}
execute as @p if score griefing Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999
execute as @p if score griefing Mode = three Mode run tellraw @a {"rawtext":[{"text":"§cOnly Jogo's Lava Fill been Turned Off!"}]}
execute as @p if score griefing Mode = three Mode run playsound note.pling @p ~~~ 99999 0.5 99999

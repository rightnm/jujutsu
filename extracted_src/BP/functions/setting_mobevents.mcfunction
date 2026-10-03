scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players set four Mode 4
scoreboard players add mobeventstoggle Mode 1
execute as @p if score mobeventstoggle Mode >= four Mode run scoreboard players set mobeventstoggle Mode 1
execute as @p if score mobeventstoggle Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cCustom Mob Spawning/Events have been Turned Off!\nCurses and Other custom mobs may spawn, to turn them off do /gamerule domobspawning false"}]}
execute as @p if score mobeventstoggle Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score mobeventstoggle Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aCustom Mob Spawning/Events have been Turned On!\nCurses and Other custom mobs may not spawn, to turn them off do /gamerule domobspawning true"}]}
execute as @p if score mobeventstoggle Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999
execute as @p if score mobeventstoggle Mode = three Mode run tellraw @a {"rawtext":[{"text":"§cCustom Mob Spawning/Events §4and Custom Mob Loots §chave been Turned Off!\nCurses and Other custom mobs may spawn, to turn them off do /gamerule domobspawning false"}]}
execute as @p if score mobeventstoggle Mode = three Mode run playsound note.pling @p ~~~ 99999 0.5 99999


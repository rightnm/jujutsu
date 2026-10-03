scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add auto_idle_kill Mode 1
execute as @p if score auto_idle_kill Mode >= three Mode run scoreboard players set auto_idle_kill Mode 1
execute as @p if score auto_idle_kill Mode = one Mode run tellraw @a {"rawtext":[{"text":"§aIdle Transfiguration Instant-Death been Turned On!"}]}
execute as @p if score auto_idle_kill Mode = one Mode run playsound note.pling @p ~~~ 99999 0.5 99999
execute as @p if score auto_idle_kill Mode = two Mode run tellraw @a {"rawtext":[{"text":"§cIdle Transfiguration Instant-Death Turned Off!"}]}
execute as @p if score auto_idle_kill Mode = two Mode run playsound note.pling @p ~~~ 99999 2 99999

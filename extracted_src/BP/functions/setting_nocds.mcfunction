scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add nocds Mode 1
execute as @p if score nocds Mode >= three Mode run scoreboard players set nocds Mode 1
execute as @p if score nocds Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aCooldowns are now on!"}]}
execute as @p if score nocds Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cCooldowns are now off!"}]}
execute as @p if score nocds Mode = one Mode run playsound note.pling @p ~~~ 99999 2 99999
execute as @p if score nocds Mode = two Mode run playsound note.pling @p ~~~ 99999 0.5 99999


scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players add onesukuna Mode 1
execute as @p if score onesukuna Mode >= three Mode run scoreboard players set onesukuna Mode 1
execute as @p if score onesukuna Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aThis world can now only have One Sukuna user!"}]}
execute as @p if score onesukuna Mode = one Mode run tellraw @a {"rawtext":[{"text":"§cThis world can now have multiple Sukuna users!"}]}
execute as @p if score onesukuna Mode = one Mode run playsound note.pling @p ~~~ 99999 2 99999
execute as @p if score onesukuna Mode = two Mode run playsound note.pling @p ~~~ 99999 0.5 99999


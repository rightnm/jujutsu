execute unless score one Mode matches 1 run scoreboard players set one Mode 1
execute unless score two Mode matches 2 run scoreboard players set two Mode 2
execute unless score three Mode matches 3 run scoreboard players set three Mode 3
execute unless score four Mode matches 4 run scoreboard players set four Mode 4
execute unless score five Mode matches 5 run scoreboard players set five Mode 5
execute unless score six Mode matches 6 run scoreboard players set six Mode 6
execute unless score seven Mode matches 7 run scoreboard players set seven Mode 7
execute unless score eight Mode matches 8 run scoreboard players set eight Mode 8
execute unless score nine Mode matches 9 run scoreboard players set nine Mode 9
execute unless score ten Mode matches 10 run scoreboard players set ten Mode 10
execute unless score eleven Mode matches 11 run scoreboard players set eleven Mode 11
execute unless score twelve Mode matches 12 run scoreboard players set twelve Mode 12
scoreboard players add exp_multiplier Mode 1

execute as @p if score exp_multiplier Mode >= twelve Mode run scoreboard players set exp_multiplier Mode 1

execute as @p if score exp_multiplier Mode = one Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§91x EXP"}]}
execute as @p if score exp_multiplier Mode = two Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§92x EXP"}]}
execute as @p if score exp_multiplier Mode = three Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§93x EXP"}]}
execute as @p if score exp_multiplier Mode = four Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§94x EXP"}]}
execute as @p if score exp_multiplier Mode = five Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§95x EXP"}]}
execute as @p if score exp_multiplier Mode = six Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§96x EXP"}]}
execute as @p if score exp_multiplier Mode = seven Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§97x EXP"}]}
execute as @p if score exp_multiplier Mode = eight Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§98x EXP"}]}
execute as @p if score exp_multiplier Mode = nine Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§99x EXP"}]}
execute as @p if score exp_multiplier Mode = ten Mode run tellraw @a {"rawtext":[{"text":"§aExp Multiplier is now set to: §r§l§910x EXP"}]}
execute as @p if score exp_multiplier Mode = eleven Mode run tellraw @a {"rawtext":[{"text":"§cExp Multiplier is now set to: §r§l§40x EXP"}]}
execute as @p run playsound random.levelup @p ~~~ 99999 2 99999



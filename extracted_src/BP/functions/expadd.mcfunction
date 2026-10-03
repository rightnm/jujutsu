execute unless score zero Mode matches 0 run scoreboard players set zero Mode 0
execute unless score exp_multiplier Mode matches 0.. run scoreboard players add exp_multiplier Mode 0
execute as @p if score exp_multiplier Mode <= zero Mode run scoreboard players set exp_multiplier Mode 1

execute unless score exp_multiplier Mode = eleven Mode run scoreboard players operation @s expadd *= exp_multiplier Mode
execute unless score exp_multiplier Mode = eleven Mode run scoreboard players operation @s Exp += @s expadd

scoreboard players set @s[scores={expadd=1..}] expadd 0


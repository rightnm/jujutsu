summon ds:projectile "lightning_strike"
scoreboard players set @e[name="lightning_strike",c=1] atk 1
scoreboard players set @e[name="lightning_strike",c=1] Deleter 11
spreadplayers ~ ~ 0 1 @e[name="lightning_strike",c=1]
execute as @e[name="lightning_strike",c=1] at @s run particle ds:kamutoke_lightning_spawn1
execute as @e[name="lightning_strike",c=1] at @s run particle ds:kamutoke_lightning_spawn2

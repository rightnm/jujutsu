execute as @s at @s anchored eyes run summon ds:projectile dismantleTRG ^^^50
execute as @s at @s anchored eyes run summon ds:projectile ^^^1 facing @e[name=dismantleTRG,c=1] none dismantle 
execute as @s at @s anchored eyes positioned ^^^50 run scoreboard players set @e[name=dismantleTRG,c=1] Deleter 14

scoreboard players set @e[name=dismantle,c=1] Deleter 13
tag @s add delusional_trait 
give @s ds:delusional 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

playsound random.orb @s
tellraw @p {"rawtext":[{"text":"§r§fYou have been granted §dDelusional Idol Fan Trait§r§f."}]}

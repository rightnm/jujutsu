execute as @s[tag=!failed] at @s run scoreboard players set @s Stun 5
execute as @s[tag=!failed] at @s run particle mcdp_v:knockback_roar_particle
execute as @s[tag=!failed] at @s run tellraw @a[r=20,tag=!sorcerer,tag=!curse] {"rawtext":[{"text":"< Principle Yaga > §eGood Job, welcome to Jujutsu Tech."}]}
execute as @s[tag=!failed] at @s run tellraw @a[r=20,tag=!sorcerer,tag=!curse] {"rawtext":[{"text":"\n\n§a- You are now a Jujutsu Academy Sorcerer!\n§aYou can now take on Missions using your §eMissions Phone§a!\n\n§r§l§f---[ New Technique Unlocked ]---\n§r§eDivergent Fists Technique, allows you to engulf your hands in cursed energy, amplifying your damage on melee attacks..."}]}
execute as @s[tag=!failed] at @s run scoreboard players set @a[r=20,tag=!sorcerer,tag=!curse] divergentfistown 1
execute unless score exp_multiplier Mode = eleven Mode as @s[tag=!failed] at @s run execute as @a[r=20,tag=!sorcerer,tag=!curse] at @s run scoreboard players operation @s Exp = @s ExpMax
execute as @s[tag=!failed] at @s run give @a[r=20,tag=!sorcerer,tag=!curse] ds:sorcerers_outfit
execute as @s[tag=!failed] at @s run give @a[r=20,tag=!sorcerer,tag=!curse] ds:phone 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[tag=!failed] at @s run tag @a[r=20,tag=!sorcerer,tag=!curse] add sorcerer



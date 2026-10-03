scoreboard players set @s Stun 5
fill ~10~10~10 ~-10~-10~-10 air [] replace barrier
camera @a[r=5] fade time 0 1 0.5 color 0 0 0
particle mcdp_v:knockback_roar_particle ~~~
tellraw @a[r=20,tag=curse,tag=!watching] {"rawtext":[{"text":"< Watcher > §4įʍ ցӀąժ վօմ ąցɾҽҽ..."}]}
tellraw @a[r=20,tag=curse,tag=!watching] {"rawtext":[{"text":"\n\n§c§o- You feel a presence watching you...\n§aYou can now take on Missions using your §eMissions Phone§a!\n\n§r§l§f---[ New Technique Unlocked ]---\n§r§eDivergent Fists Technique, allows you to engulf your hands in cursed energy, amplifying your damage on melee attacks..."}]}
scoreboard players set @a[r=20,tag=curse,tag=!watching] divergentfistown 1
execute unless score exp_multiplier Mode = eleven Mode run execute as @a[r=20,tag=curse,tag=!watching] at @s run scoreboard players operation @s Exp = @s ExpMax
give @a[r=20,tag=curse,tag=!watching] ds:phone 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[r=20] tpdown 7
scoreboard players set @e[type=ds:watcher,c=1] Deleter 10
tag @a[r=20,tag=curse,tag=!watching] add watching

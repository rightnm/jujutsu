

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] at @s run function remove_ct

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] at @s run event entity @s volcano_head

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=flames] {"rawtext":[{"text":"§cYou are already using Disaster Flames Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=!flames] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=flames] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] {"rawtext":[{"text":"\n§e"},{"text":"§e- §eYou are now using §6Disaster Flames Technique§f §e\n"},{"text":"§e"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] forms 7
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] ds:flames_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] ds:flames1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames7 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] ds:flames2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!flames] add flames

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=flames] at @s run function clear_skills



playsound note.pling @s[tag=cantupgrade] ~ ~ ~ 1 0.3 1
camerashake add @s[tag=cantupgrade] 2 0.1


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=flames] ds:flames_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=flames] ds:flames1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique 2nd Skillset: §6Ember insects + Geysers§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=curse,tag=flames] ds:flames2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique 3rd Skillset: §gRanged Flames§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=curse,tag=flames] ds:flames3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique 4th Skillset: §6Explosive Flames§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=curse,tag=flames] ds:flames4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique 5th Skillset: §6Molten Lava§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=curse,tag=flames] ds:flames5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique 6th Skillset: §4Maximum Techniques§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6..},tag=curse,tag=flames] ds:flames6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] {"rawtext":[{"text":"§eDisaster Flames Technique: §l§6Domain Expansion: Coffin of the Iron Mountain§r§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7..},tag=curse,tag=flames] ds:flames7 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7..,invest=10..},tag=curse,tag=flames]  {"rawtext":[{"text":"§cYou have already Mastered Disaster Flames Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..7,invest=10..},tag=curse,tag=flames,tag=!cantupgrade] invest 10
tag @s remove cantupgrade



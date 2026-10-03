

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] at @s run function remove_ct

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] at @s run event entity @s mahito_on

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=idle_transfig] {"rawtext":[{"text":"§cYou are already using Idle Transfiguration Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=idle_transfig] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] {"rawtext":[{"text":"\n§e"},{"text":"§e- §eYou are now using §uIdle Transfiguration Technique§f §e\n"},{"text":"§e"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] forms 7



clear @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfiguration_technique
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig_combat1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfig5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:stable_transfigured_human 64 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:unstable_transfigured_human 64 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] ds:idle_transfiguration_technique 1 0 

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!idle_transfig] add idle_transfig

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=idle_transfig] at @s run function clear_skills



playsound note.pling @s[tag=cantupgrade] ~ ~ ~ 1 0.3 1
camerashake add @s[tag=cantupgrade] 2 0.1

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..7,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..7,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..7,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000



give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=idle_transfig,tag=!instant_body] ds:idle_transfig_combat1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=idle_transfig,tag=instant_body] ds:instant_body_combat 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §uSoul Manipulation§4!\n§9[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=curse,tag=idle_transfig] ds:idle_transfig1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §uCombat Style Transfiguration§4!\n§9[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §gBody Transfiguration§9!\n§9[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=curse,tag=idle_transfig] ds:idle_transfig2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §uSoul Multiplicity§9!\n§9[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=curse,tag=idle_transfig] ds:idle_transfig3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §l§uDomain Expansion: §5Self-Embodiment Of Perfection§r§9!\n§9[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6..},tag=curse,tag=idle_transfig] ds:idle_transfig4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] {"rawtext":[{"text":"§9Idle Transfiguration Technique: §uInstant Spirit Body of Distorted Killing§9!\n§9[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7..},tag=curse,tag=idle_transfig] ds:idle_transfig5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7..,invest=10..},tag=curse,tag=idle_transfig]  {"rawtext":[{"text":"§cYou have already Mastered Idle Transfiguration Technique, you have nothing else to advance."}]}


scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..7,invest=10..},tag=curse,tag=idle_transfig,tag=!cantupgrade] invest 10
tag @s remove cantupgrade



tag @s[tag=heavenlyrestriction_zenin] remove heavenlyrestriction_zenin

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=heavenlyrestriction] {"rawtext":[{"text":"§cYou are already using Heavenly Restriction you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=heavenlyrestriction] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] {"rawtext":[{"text":"\n§5╔════════════╗\n"},{"text":"§5║ §eYou are now using   §f§5║ \n§5║§8 Heavenly Restriction.§f§5║\n"},{"text":"§5╚════════════╝"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=c] forms 4
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] ds:hr_combat 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=c] ds:hr1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=c] ds:hr2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=c] ds:hr3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!heavenlyrestriction] add heavenlyrestriction

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=heavenlyrestriction] at @s run function clear_skills

scoreboard players add @s forms 0

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..4,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..4,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..4,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=heavenlyrestriction] ds:hr_combat 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] {"rawtext":[{"text":"§5Combat Skills: §7Strength Combos §7!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=heavenlyrestriction] ds:hr1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] {"rawtext":[{"text":"§5Combat Skills: §7Speed Combos §7!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=heavenlyrestriction] ds:hr2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] {"rawtext":[{"text":"§5Combat Skills: §7Destructive Combos §7!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=!curse,tag=heavenlyrestriction] ds:hr3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..,invest=10..},tag=!curse,tag=heavenlyrestriction]  {"rawtext":[{"text":"§cYou have already Mastered Heavenly Restriction, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..4,invest=10..},tag=!curse,tag=heavenlyrestriction,tag=!cantupgrade] invest 10
tag @s[tag=cantupgrade] remove cantupgrade


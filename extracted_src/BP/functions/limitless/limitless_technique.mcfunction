execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=limitless] {"rawtext":[{"text":"§cYou are already using Limitless Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!limitless] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=limitless] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] {"rawtext":[{"text":"\n§1\n"},{"text":"§1- §eYou are now using §bLimitless Technique§f §1\n"},{"text":"§1"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] forms 6
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] ds:limitless_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] ds:limitless1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] ds:limitless2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] ds:limitless3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] ds:limitless4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] ds:limitless5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] ds:limitless6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!limitless] add limitless

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=limitless] at @s run function clear_skills

tag @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=limitless,tag=!sixeyes] add cantupgrade
tellraw @s[tag=cantupgrade,tag=!sixeyes] {"rawtext":[{"text":"§cThis Upgrade Requires the great §l§bSix Eyes§c!"}]}

tag @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=limitless,tag=!reversecursed] add cantupgrade
tellraw @s[tag=cantupgrade,tag=!reversecursed] {"rawtext":[{"text":"§cThis Upgrade Requires knowledge of the §l§fReverse cursed Technique§c!"}]}


playsound note.pling @s[tag=cantupgrade] ~ ~ ~ 1 0.3 1
camerashake add @s[tag=cantupgrade] 2 0.1


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=limitless] ds:limitless_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=limitless] ds:limitless1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] {"rawtext":[{"text":"§1Limitless Technique 2nd Skill: §bLapse Blue§4!\n§e[Unlocked]"}]}

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=limitless] ds:limitless2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] {"rawtext":[{"text":"§1Limitless Technique 3rd Skill: §cReversal Red§4!\n§e[Unlocked]"}]}

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=limitless] ds:limitless3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] {"rawtext":[{"text":"§1Limitless Technique 4th Skill: §3Spacial Blitz§4!\n§e[Unlocked]"}]}

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=!curse,tag=limitless] ds:limitless4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] {"rawtext":[{"text":"§1Limitless Technique 5th Skill: §5Hollow Purple§4!\n§e[Unlocked]"}]}

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=!curse,tag=limitless] ds:limitless5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] {"rawtext":[{"text":"§1Limitless Technique 6th Skill: §9Domain Expansion: Unlimited Void§4!\n§e[Unlocked]"}]}

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6..},tag=!curse,tag=limitless] ds:limitless6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6..,invest=10..},tag=!curse,tag=limitless]  {"rawtext":[{"text":"§cYou have already Mastered Limitless Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=limitless,tag=!cantupgrade] invest 10
tag @s remove cantupgrade



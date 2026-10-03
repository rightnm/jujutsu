execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] at @s run function remove_ct

tag @s[scores={forms=3..},tag=!cantupgrade] add cantupgrade

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=absorption] {"rawtext":[{"text":"§cYou are already using Absorption Cursed Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!absorption] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=absorption] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] {"rawtext":[{"text":"§g- §eYou are now using: Absorption Cursed Technique"}]}

scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=!c] forms 0
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=c] forms 3

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0,forms=1..},tag=!absorption,m=!c] ds:absorption1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0,forms=2..},tag=!absorption,m=!c] ds:absorption2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0,forms=3..},tag=!absorption,m=!c] ds:absorption3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=c] ds:absorption1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=c] ds:absorption2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=c] ds:absorption3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!absorption] add absorption

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..},tag=absorption] at @s run function clear_skills

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,invest=10..},tag=absorption,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,invest=10..},tag=absorption,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,invest=10..},tag=absorption,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1,invest=10..},tag=absorption,tag=!cantupgrade] {"rawtext":[{"text":"§gAbsorption Cursed Technique 1st Skillset: §eAbsorption Melee §g!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=absorption] ds:absorption1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=absorption,tag=!cantupgrade] {"rawtext":[{"text":"§gAbsorption Cursed Technique 2nd Skillset: §eAbsorption Ranged §g!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=absorption] ds:absorption2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=absorption,tag=!cantupgrade] {"rawtext":[{"text":"§gAbsorption Cursed Technique 3rd Skillset: §eMaximum Output §g!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=absorption] ds:absorption3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0},tag=absorption,tag=cantupgrade]  {"rawtext":[{"text":"§cYou have already Mastered the Absorption Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,invest=10..},tag=absorption,tag=!cantupgrade] invest 10
tag @s[tag=cantupgrade] remove cantupgrade




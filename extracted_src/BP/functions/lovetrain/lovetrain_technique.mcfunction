scoreboard objectives add luck dummy
scoreboard players add @s luck 0
scoreboard objectives add hakarimode dummy
scoreboard players add @s hakarimode 0

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=lovetrain] {"rawtext":[{"text":"§cYou are already using Private Pure Lovetrain Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=lovetrain] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] {"rawtext":[{"text":"\n§2\n"},{"text":"§2- §eYou are now using the:                §f§2║ \n§2║§a Private Pure Lovetrain Technique  §f§2\n"},{"text":"§2"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] forms 6
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] ds:lovetrain_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] ds:lovetrain1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] ds:lovetrain2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] ds:lovetrain3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] ds:lovetrain4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] ds:lovetrain5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lovetrain] add lovetrain

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=lovetrain] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=lovetrain] ds:lovetrain_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=lovetrain] ds:lovetrain1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] {"rawtext":[{"text":"§2Private Pure Lovetrain Technique 2nd Skill: §gPachinko Balls §4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=lovetrain] ds:lovetrain2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] {"rawtext":[{"text":"§2Private Pure Lovetrain Technique 3rd Skill: §4Slots §4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=lovetrain] ds:lovetrain3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] {"rawtext":[{"text":"§2Private Pure Lovetrain Technique 4th Skill: §cCargo Haul §4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=!curse,tag=lovetrain] ds:lovetrain4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] {"rawtext":[{"text":"§2Private Pure Lovetrain Technique 5th Skill: §a§lDomain Expansion: Idle Death Gamble §r§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=!curse,tag=lovetrain] ds:lovetrain5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..,invest=10..},tag=!curse,tag=lovetrain]  {"rawtext":[{"text":"§cYou have already Mastered the Private Pure Lovetrain Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=lovetrain,tag=!cantupgrade] invest 10
tag @e remove cantupgrade

scoreboard objectives add fever dummy
scoreboard players add @a[tag=lovetrain] fever 0

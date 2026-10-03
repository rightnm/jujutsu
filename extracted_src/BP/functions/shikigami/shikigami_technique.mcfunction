execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=shikigami] {"rawtext":[{"text":"§cYou are already using 10 Shadows Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!shikigami] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=shikigami] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] {"rawtext":[{"text":"\n§0\n"},{"text":"§0- §eYou are now using the §810 Shadows Technique§f §0\n"},{"text":"§0"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=c] forms 12

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] ds:shadow_wheel 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=c] ds:shikigami12 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=c] ds:shikigami11 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=c] ds:shikigami10 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!shikigami] add shikigami

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=shikigami] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..12,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..12,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..12,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=shikigami] ds:shadow_wheel 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=10..},tag=!curse,tag=shikigami] ds:shikigami11 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=11..},tag=!curse,tag=shikigami] ds:shikigami10 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=12..},tag=!curse,tag=shikigami] ds:shikigami12 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Toad§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Divine Dogs§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Nue§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Great Serpent§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=6,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Piercing Ox§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=7,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Max Elephant§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=8,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §7Round Deer§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=9,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §cTiger Funeral (UNRELEASED/COMING SOON)§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=10,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§7Shikigami: §l§fMerged Beast, Agito§7!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=10},tag=!curse,tag=shikigami] ds:shikigami11 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=11,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Shikigami: §l§fDivine General, Mahoraga§7!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=12,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] {"rawtext":[{"text":"§710 Shadows Technique: §l§fDomain Expansion: Chimera Shadow Garden§7!\n§e[Unlocked]"}]}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=13..,invest=10..},tag=!curse,tag=shikigami]  {"rawtext":[{"text":"§cYou have already Mastered 10 Shadows Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..12,invest=10..},tag=!curse,tag=shikigami,tag=!cantupgrade] invest 10
tag @s remove cantupgrade



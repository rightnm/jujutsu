execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=explosive] {"rawtext":[{"text":"§cYou are already using Explosive Cursed Energy you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=!explosive] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=curse,tag=explosive] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] {"rawtext":[{"text":"\n§g\n"},{"text":"§g- §eYou are now using: Explosive Cursed Energy      §f§g\n"},{"text":"§g"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive,m=c] forms 4
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] ds:explosive1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive,m=c] ds:explosive2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive,m=c] ds:explosive3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=curse,tag=!explosive] add explosive

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=explosive] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=curse,tag=explosive] ds:explosive1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] {"rawtext":[{"text":"§gExplosive Cursed Energy 2nd Skillset: §gRanged Explosives §b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=curse,tag=explosive] ds:explosive2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] {"rawtext":[{"text":"§gExplosive Cursed Energy 3rd Skill: §6Destructive Attacks §b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=curse,tag=explosive] ds:explosive3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..,invest=10..},tag=curse,tag=explosive]  {"rawtext":[{"text":"§cYou have already Mastered Explosive Cursed Energy, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..4,invest=10..},tag=curse,tag=explosive,tag=!cantupgrade] invest 10
tag @e remove cantupgrade

scoreboard objectives add fever dummy
scoreboard players add @a[tag=explosive] fever 0

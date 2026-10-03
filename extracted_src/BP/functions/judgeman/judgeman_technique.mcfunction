
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=judgeman] {"rawtext":[{"text":"§cYou are already using Judgeman Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!judgeman] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=judgeman] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] {"rawtext":[{"text":"\n§g\n"},{"text":"§g- §eYou are now using the: Judgeman Technique  §f§g\n"},{"text":"§g"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman,m=c] forms 5
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] ds:gavel1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman,m=c] ds:judgeman1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman,m=c] ds:judgeman2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!judgeman] add judgeman

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=judgeman] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=judgeman] ds:gavel1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] {"rawtext":[{"text":"§eJudgeman Technique 2nd Upgrade: §gLong-Size Gavel §4!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] {"rawtext":[{"text":"§eJudgeman Technique 3rd Upgrade: §gLarge-Size Gavel §4!\n§e[Unlocked]"}]}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] {"rawtext":[{"text":"§eJudgeman Technique 1st Skill: §gJudgement Moves §r§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=!curse,tag=judgeman] ds:judgeman1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] {"rawtext":[{"text":"§eJudgeman Technique 2nd Skill: §g§lDomain Expansion: Deadly Sentencing §r§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=!curse,tag=judgeman] ds:judgeman2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..,invest=10..},tag=!curse,tag=judgeman]  {"rawtext":[{"text":"§cYou have already Mastered the Judgeman Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=judgeman,tag=!cantupgrade] invest 10
tag @s[tag=cantupgrade] remove cantupgrade

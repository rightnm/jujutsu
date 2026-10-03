scoreboard objectives add BoogieSelfID dummy
scoreboard objectives add BoogieTargetID dummy
scoreboard objectives add temp dummy
scoreboard objectives add oldID dummy

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=boogie_woogie] {"rawtext":[{"text":"§cYou are already using Boogie Woogie Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=boogie_woogie] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] {"rawtext":[{"text":"§3- §3You are now using the: §bBoogie Woogie Technique"}]}


scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=c] forms 5


give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] ds:boogie_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=c] ds:boogie_woogie1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=c] ds:boogie_woogie2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=c] ds:boogie_woogie3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!boogie_woogie] add boogie_woogie


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=boogie_woogie] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=boogie_woogie] ds:boogie_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] {"rawtext":[{"text":"§3Boogie Woogie: §bSwitch Moves§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=boogie_woogie] ds:boogie_woogie1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] {"rawtext":[{"text":"§3Boogie Woogie: §bBrother Combos§e!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=boogie_woogie] ds:boogie_woogie2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=boogie_woogie] ds:boogie_woogie3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..,invest=10..},tag=!curse,tag=boogie_woogie]  {"rawtext":[{"text":"§cYou have already Mastered the Boogie Woogie Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=boogie_woogie,tag=!cantupgrade] invest 10
tag @s[tag=cantupgrade] remove cantupgrade

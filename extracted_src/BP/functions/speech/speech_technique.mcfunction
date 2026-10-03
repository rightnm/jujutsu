execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=cursed_speech] {"rawtext":[{"text":"§cYou are already using Cursed Speech Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=cursed_speech] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] {"rawtext":[{"text":"§g- You are now using the: §8Cursed Speech Technique"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=c] forms 4

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] ds:speech1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=c] ds:speech2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=c] ds:speech3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=c] ds:speech4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!cursed_speech] add cursed_speech

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=cursed_speech] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=cursed_speech] ds:speech1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] {"rawtext":[{"text":"§eCursed Speech Technique 2nd Skillset: §7Offensive Force Words §r§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=cursed_speech] ds:speech2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=0..29},tag=!curse,tag=cursed_speech,tag=!cantupgrade] {"rawtext":[{"text":"§c- You need atleast 30 Invest Points for this Domain Expansion."}]}
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=30..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] {"rawtext":[{"text":"§eCursed Speech Technique §l§9Domain Expansion: §8Chamber of Resonance §r§4!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=cursed_speech] ds:speech3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..,invest=10..},tag=!curse,tag=cursed_speech]  {"rawtext":[{"text":"§cYou have already Mastered the Cursed Speech Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..3,invest=10..},tag=!curse,tag=cursed_speech,tag=!cantupgrade] invest 10
tag @s[tag=cantupgrade] remove cantupgrade
event entity @s[tag=cursed_speech,has_property={property:ct_face=!8}] speech_tattoos_on

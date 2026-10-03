clear @s[hasitem={item=ds:sukuna_fists}] ds:sukuna_fists
clear @s[hasitem={item=ds:four_fists}] ds:four_fists
clear @s[hasitem={item=ds:cleave_fists}] ds:cleave_fists
clear @s[hasitem={item=ds:heian_transformation}] ds:heian_transformation
clear @s[hasitem={item=ds:sukuna1}] ds:sukuna1
clear @s[hasitem={item=ds:sukuna2}] ds:sukuna2
clear @s[hasitem={item=ds:sukuna3}] ds:sukuna3
clear @s[hasitem={item=ds:sukuna4}] ds:sukuna4
tellraw @s[scores={finger=2..},tag=!reversecursed,tag=sukuna] {"rawtext":[{"text":"§l§f---[ New Technique Unlocked ]---\n§r§eReverse Cursed Technique, allows you create and manipulate positive energy at will for things like healing..."}]}
tag @s[scores={finger=2..},tag=!reversecursed,tag=sukuna] add reversecursed
execute as @s[scores={finger=5..,hollowbasketown=0},tag=sukuna] at @s run function cheats/give_basket
scoreboard players add @s[scores={finger=9..},tag=!rctmaster,tag=sukuna] rctuses 2
tellraw @s[scores={finger=9..},tag=!rctmaster,tag=sukuna] {"rawtext":[{"text":"§l§f---[ New Trait Unlocked ]---\n§r§eReverse Cursed Master, allowing you to automatically gain RCT and spread that healing to heal others while Sneaking. RCT also costs less Cursed Energy..."}]}
tag @s[scores={finger=9..},tag=!rctmaster,tag=sukuna] add rctmaster
give @s[scores={finger=1..},has_property={property:body_transformation=0},tag=sukuna,tag=!remove_heian_era] ds:sukuna_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=1..},has_property={property:body_transformation=1..4},tag=sukuna,tag=!remove_heian_era] ds:four_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=1..},tag=sukuna,tag=remove_heian_era] ds:sukuna_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=1..},tag=sukuna] ds:sukuna1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=2..},tag=sukuna] ds:sukuna2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=3..},tag=sukuna] ds:sukuna3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=15..},tag=sukuna] ds:sukuna4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s Sneaking 0

give @s[scores={finger=20..},has_property={property:body_transformation=0},tag=sukuna,tag=!remove_heian_era] ds:heian_transformation 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=20..},tag=sukuna,tag=remove_heian_era] ds:heian_transformation 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={finger=1..},hasitem={item=ds:sukuna_technique,quantity=0}] ds:sukuna_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

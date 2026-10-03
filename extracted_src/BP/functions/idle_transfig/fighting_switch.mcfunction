tellraw @s[scores={forms=1..2}] {"rawtext":[{"text":"§cYou haven't unlocked combat style transfiguration yet."}]}

scoreboard players set @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={forms=3..}] chance2 1
scoreboard players set @s[hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={forms=3..}] chance2 2
scoreboard players set @s[hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={forms=3..}] chance2 3

replaceitem entity @s[scores={chance2=1,forms=3..}] slot.weapon.mainhand 1 ds:idle_transfig_combat2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[scores={chance2=2,forms=3..}] slot.weapon.mainhand 1 ds:idle_transfig_combat3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[scores={chance2=3,forms=3..}] slot.weapon.mainhand 1 ds:idle_transfig_combat1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

scoreboard players set @s[scores={forms=3..}] chance2 0
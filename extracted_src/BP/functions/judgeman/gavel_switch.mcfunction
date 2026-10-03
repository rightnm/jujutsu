
tag @s[scores={move=1..3},tag=switch] remove switch

playanimation @s[scores={move=10}] animation.gavel1.ab5

execute as @s[scores={move=9}] at @s run playsound beacon.power @a[r=20] ~~~ 9999 2 9999
execute as @s[scores={move=9}] at @s run scoreboard objectives add weapontype dummy
execute unless entity @s[scores={weapontype=1}] run scoreboard players set @s[scores={move=5..},hasitem={item=ds:gavel1,location=slot.hotbar},type=player] weapontype 1
execute unless entity @s[scores={weapontype=2}] run scoreboard players set @s[scores={move=5..,forms=2..},hasitem={item=ds:gavel2,location=slot.hotbar},type=player] weapontype 2




tellraw @s[scores={move=6,forms=1},hasitem={item=ds:gavel1}] {"rawtext":[{"text":"§cYou haven't unlocked this form yet."}]}
scoreboard players set @s[scores={move=6,forms=1},hasitem={item=ds:gavel1}] move 2
tellraw @s[scores={move=6,forms=1..2},hasitem={item=ds:gavel2}] {"rawtext":[{"text":"§cYou haven't unlocked this form yet."}]}
scoreboard players set @s[scores={move=6,forms=1..2},hasitem={item=ds:gavel2}] move 2

execute unless entity @s[scores={weapontype=3}] run scoreboard players set @s[scores={move=5..,forms=3..},hasitem={item=ds:gavel3,location=slot.hotbar},type=player] weapontype 3



execute as @s[scores={move=4}] at @s anchored eyes run particle ds:gavel_return1 ^^-0.25^0.35
execute as @s[scores={move=4}] at @s anchored eyes run particle ds:gavel_return2 ^^-0.25^0.35

clear @s[scores={move=5},hasitem={item=ds:gavel1}] ds:gavel1
clear @s[scores={move=5},hasitem={item=ds:gavel2}] ds:gavel2
clear @s[scores={move=5},hasitem={item=ds:gavel3}] ds:gavel3
replaceitem entity @s[scores={move=4,weapontype=3}] slot.weapon.mainhand 1 ds:gavel1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[scores={move=4,weapontype=2}] slot.weapon.mainhand 1 ds:gavel3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[scores={move=4,weapontype=1}] slot.weapon.mainhand 1 ds:gavel2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}


execute unless entity @s[scores={weapontype=1}] run scoreboard players set @s[scores={move=1..4},hasitem={item=ds:gavel1,location=slot.weapon.mainhand},type=!player] weapontype 1
execute unless entity @s[scores={weapontype=2}] run scoreboard players set @s[scores={move=1..4,forms=2..},hasitem={item=ds:gavel2,location=slot.weapon.mainhand},type=!player] weapontype 2
execute unless entity @s[scores={weapontype=3}] run scoreboard players set @s[scores={move=1..4,forms=3..},hasitem={item=ds:gavel3,location=slot.weapon.mainhand},type=!player] weapontype 3



give @s[scores={finger=18..}] ds:sukuna5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
playsound mob.wither.spawn @a ~~~
camerashake add @a[r=10] 4 0.25
function sukuna/attacks/worldslash/charge_vfx
tellraw @p {"rawtext":[{"text":"§r§l§fYou have learned a new Technique!§r\n\n§l§o§dWorld-Cutting Slash§r§e\nThis technique allows you to conjure immensely powerful slashes that cut through space itself. Allowing you to bypass infinity and cause devastating damage."}]}

scoreboard players set @s simpledomainown 1
tag @s remove simpledomainquest2completed
tag @s add shadowstyle
playsound beacon.activate @a ~~~
camera @s fade time 0 1 0.5 color 0 0 0
camerashake add @a[r=10] 4 0.25
tellraw @s {"rawtext":[{"text":"§f< §gKusakabe §f> I didn't expect you to actually do it, nice, here's a katana of mine, it's pretty durable, I'll teach you my sword techniques."}]}
tellraw @s {"rawtext":[{"text":"\n§l§f---[ New Technique Unlocked ]---\n§r§eNew Shadow Style: Katana Techniques, allows you to combine your simple domain with sword techniques, aswell as release powerful attacks using the sword drawing techniques!"}]}
give @s ds:shadow_style_katana  1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

scoreboard players add @s expadd 200

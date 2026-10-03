
scoreboard players set @p simpledomainown 1
tag @s remove simpledomainquest1
clear @s ds:cursed_object_v4
playsound beacon.activate @a ~~~
camera @s fade time 0 1 0.5 color 0 0 0
camerashake add @a[r=10] 4 0.25
tellraw @s {"rawtext":[{"text":"§f< §gKusakabe §f> Good job."}]}
tellraw @s {"rawtext":[{"text":"\n§l§f---[ New Technique Unlocked ]---\n§r§eNew Shadow Style: Simple Domain Technique, allows you conjure a field of cursed energy that acts as a direct counter to domain expansions.\nWith Kusakabe's combat style you can expand upon the abilities of this technique even further!"}]}
scoreboard players add @s expadd 100

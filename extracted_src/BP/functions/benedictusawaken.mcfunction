tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§f§cI will wipe you out of reality itself."}]}
event entity @s luminosity_emblem
event entity @s awakened
camera @a fade time 0 1 0.5 color 255 255 255
scoreboard players set @s damageadd 12
playsound mob.wither.spawn @a ~~~ 99999 0.5 99999
particle ds:lightstrike1b ~~1~
particle ds:lightstrike2b ~~1~
particle ds:lightstrike2b ~~1~
particle ds:lightstrike2b ~~1~
particle ds:lightstrike3b ~~1~
particle ds:lightstrike3b ~~1~
particle ds:lightstrike3b ~~1~
particle ds:rift_charging3 ~~1~
particle ds:rift_charging3 ~~1~
particle ds:rift_charging3 ~~1~
particle ds:rift_charging3 ~~1~
scoreboard players set @s Stun 25
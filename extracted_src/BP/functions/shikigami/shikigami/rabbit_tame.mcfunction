tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Escape Rabbits have been tamed." } ] }
tag @p add rabbit_tame
scoreboard players set @p[tag=rabbit_tame] ability1 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.rabbit.death
tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Piercing Ox has been tamed." } ] }
tag @p add ox_tame
scoreboard players set @p[tag=ox_tame] ability6 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.cow.hurt @a ~~~ 1 0.55
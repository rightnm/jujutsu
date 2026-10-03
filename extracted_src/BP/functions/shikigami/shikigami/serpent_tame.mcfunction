tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Great Serpent has been tamed." } ] }
tag @p add serpent_tame
scoreboard players set @p[tag=serpent_tame] ability5 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.serpent @a ~~~ 1 0.75
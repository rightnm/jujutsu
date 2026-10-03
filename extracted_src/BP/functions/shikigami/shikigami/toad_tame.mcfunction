tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Toad has been tamed." } ] }
tag @p add toad_tame
scoreboard players set @p[tag=toad_tame] ability2 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.slime.jump @a ~~~
tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Divine Dogs have been tamed." } ] }
tag @p add dog_tame
scoreboard players set @p[tag=dog_tame] ability3 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.wolf.death @a ~~~ 1 0.75
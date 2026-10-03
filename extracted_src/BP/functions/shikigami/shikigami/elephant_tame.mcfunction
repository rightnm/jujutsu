tellraw @p { "rawtext": [ { "text":"§l§e- §8ꜱʜɪᴋɪɢᴀᴍɪ ᴅᴇꜰᴇᴀᴛᴇᴅ §e-\n§r§e- Max Elephant has been tamed." } ] }
tag @p add elephant_tame
scoreboard players set @p[tag=elephant_tame] ability7 0
playsound random.levelup @a ~~~ 1 0.5
playsound mob.elephant @a ~~~ 1 0.55
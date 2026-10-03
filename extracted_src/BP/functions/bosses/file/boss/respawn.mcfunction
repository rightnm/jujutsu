
tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ʏ ᴏ ᴜ ʀ   ᴘ ᴀ ᴛ ʜ ᴇ ᴛ ɪ ᴄ\nᴄ ᴏ ᴍ ᴍ ᴀ ɴ ᴅ ꜱ   ᴡ ᴏ ɴ ᴛ\nᴡ ᴏ ʀ ᴋ   ᴏ ɴ   ᴍ ᴇ..."}]}
tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ʏ ᴏ ᴜ ʀ   ᴘ ᴀ ᴛ ʜ ᴇ ᴛ ɪ ᴄ\nᴄ ᴏ ᴍ ᴍ ᴀ ɴ ᴅ ꜱ   ᴡ ᴏ ɴ ᴛ\nᴡ ᴏ ʀ ᴋ   ᴏ ɴ   ᴍ ᴇ..."}]}
tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ʏ ᴏ ᴜ ʀ   ᴘ ᴀ ᴛ ʜ ᴇ ᴛ ɪ ᴄ\nᴄ ᴏ ᴍ ᴍ ᴀ ɴ ᴅ ꜱ   ᴡ ᴏ ɴ ᴛ\nᴡ ᴏ ʀ ᴋ   ᴏ ɴ   ᴍ ᴇ..."}]}
tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ʏ ᴏ ᴜ ʀ   ᴘ ᴀ ᴛ ʜ ᴇ ᴛ ɪ ᴄ\nᴄ ᴏ ᴍ ᴍ ᴀ ɴ ᴅ ꜱ   ᴡ ᴏ ɴ ᴛ\nᴡ ᴏ ʀ ᴋ   ᴏ ɴ   ᴍ ᴇ..."}]}

execute unless entity @e[type=ds:primesoul,tag=respawned] run summon ds:primesoul
tag @e[type=ds:primesoul,scores={Energy=1..},c=1] add respawned
event entity @s ds:disappear

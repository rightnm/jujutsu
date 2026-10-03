execute if entity @p[r=300] run particle ds:obelisk_aura1
execute if entity @p[r=3000] unless score secretquest Mode = one Mode run tickingarea add ~70 ~ ~70 ~-70 ~ ~-70 void_obelisk
execute if entity @p[r=3000] unless score secretquest Mode = one Mode run kill @e[type=!ds:knockback,type=!ds:red_reverse,type=!ds:astaroth,type=!ds:benedictus,type=!ds:kaiguy,type=!ds:duke,type=!ds:void_eye,family=!projectile,type=!ds:rift,type=!player,r=200,type=!ds:dash,type=!ds:dash0,type=!ds:dash2,type=!ds:void_reactor,type=!ds:mysterious_artifact]
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute positioned ~ 231 ~ run kill @e[type=item,r=300,rm=20,type=!ds:void_reactor,type=!ds:mysterious_artifact]
execute if entity @p[r=300] unless score secretquest Mode = one Mode run tellraw @a[r=200,scores={nocts=0}] {"rawtext":[{"text":"§cSomething seems to be interfering with your cursed technique..."}]}

execute if entity @p[r=300] unless score secretquest Mode = one Mode run scoreboard players set @a[scores={nocts=0..5},r=200] nocts 100
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute unless entity @e[type=ds:void_reactor,r=300] run event entity @e[type=ds:void_eye] ds:disappear
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute unless entity @e[type=ds:void_reactor,r=300] run summon ds:void_eye ~ 231 ~
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute unless entity @e[type=ds:void_reactor,r=300] run function structure_void
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute unless entity @e[type=ds:void_reactor,r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> §ᴏᴄᴏɴsᴏʟᴇ ᴅᴀᴍᴀɢᴇᴅ, ʀᴇᴘᴀɪʀɪɴɢ. ᴅᴀᴛᴀ ʟᴏꜱᴛ."}]}
execute if entity @p[r=300] unless score secretquest Mode = one Mode run execute unless entity @e[type=ds:void_reactor,r=300] run summon ds:void_reactor ~ 231 ~

execute if entity @p[r=300] unless score secretquest Mode = one Mode run gamemode a @a[r=200,name=!iiTestAlt,name=!iiTest7]
execute if entity @p[r=300] unless score secretquest Mode = one Mode run gamemode s @a[r=225,rm=200,name=!iiTestAlt,name=!iiTest7]


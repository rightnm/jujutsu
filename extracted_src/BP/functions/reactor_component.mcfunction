execute as @s if entity @p[hasitem={item=ds:core_component},scores={component=1..}] run particle ds:reactor_activate2 ~~1~
execute as @s if entity @p[hasitem={item=ds:core_component},scores={component=1..}] run playsound block.end_portal.spawn @a ~~~ 9999 1.75 9999
execute as @s if entity @p[hasitem={item=ds:core_component},scores={component=1..}] run camerashake add @a[r=100] 2 0.15
execute as @s if entity @p[hasitem={item=ds:core_component},scores={component=1..}] run camera @a fade time 0 1 1 color 255 255 255
execute as @s if entity @p[hasitem={item=ds:core_component},scores={component=1..}] run scoreboard players set @a[r=20] component 1
tellraw @a[r=300] {"rawtext":[{"text":"§l§a> ʀɪFᴛ ᴄᴏᴍᴍᴀɴᴅ ᴄᴏʀᴇ ᴅᴇᴛᴇᴄᴛᴇᴅ.\n> ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴄᴏᴍᴘʟᴇᴛᴇ.\n\n> ᴀʟʟ ꜱʏꜱᴛᴇᴍꜱ [ ꜰᴜɴᴄᴛɪᴏɴᴀʟ ]\n\n> ᴀᴡᴀɪᴛɪɴɢ ɪɴᴘᴜᴛ..."}]}
clear @a ds:core_component
tag @s remove missingcomponent

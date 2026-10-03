playanimation @s[scores={move=200..201}] animation.void_reactor.activation
execute as @s[scores={move=200..201}] run playsound random.click @a ~~~ 9999 1.5 9999
execute as @s[scores={move=200..201}] run playsound mob.evocation_illager.cast_spell @a ~~~ 9999 2 9999
execute as @s[scores={move=200..201}] run particle ds:heavy_impact2 ~~0.5~
execute as @s[scores={move=200..201}] run camerashake add @a[r=10] 0.08 0.08
execute as @s[scores={move=199..201}] run playsound beacon.ambient @a[r=100] ~~~ 9999 0.6 9999
execute as @s[scores={move=199..201}] run playsound beacon.activate @a[r=100] ~~~ 9999 2.25 9999

execute as @s[scores={move=199..201}] run scoreboard objectives add activated dummy
execute as @s[scores={move=199..201}] run scoreboard players set @s activated 1

execute as @s[scores={move=200..201}] run event entity @s ds:void_reactor
execute as @s[scores={move=200..201}] run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=200..201}] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=200..201}] run particle ds:heavy_impact2 ~~1~


execute as @s[scores={move=200}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§a> ᴋᴇʏ ɪɴsᴇʀᴛᴇᴅ."}]}
execute as @s[scores={move=180}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§a> ᴀᴜᴛʜᴏʀɪsᴇᴅ. ᴄᴏɴsᴏʟᴇ ᴀᴄᴛɪᴠᴀᴛɪɴɢ.."}]}
execute as @s[scores={move=180}] run playsound note.bell @a ~~~ 1 2

execute as @s[scores={move=130}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴇʀʀᴏʀ."}]}
execute as @s[scores={move=130}] run event entity @s ds:void_reactor_red
execute as @s[scores={move=120}] run event entity @s ds:void_reactor
execute as @s[scores={move=130}] run playsound note.pling @a ~~~ 1 0.33
execute as @s[scores={move=120}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴄᴏʀᴇ ꜰʀᴀɢᴍᴇɴᴛ ᴜɴsᴛᴀʙʟᴇ. ᴇssᴇɴᴛɪᴀʟ ᴄᴏᴍᴘᴏɴᴇɴᴛ ᴍɪssɪɴɢ..."}]}
execute as @s[scores={move=105}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§c> ʟᴏᴄᴀᴛɪɴɢ ᴍɪssɪɴɢ ᴄᴏᴍᴘᴏɴᴇɴᴛ..."}]}
execute as @s[scores={move=10}] run tellraw @a[r=300] {"rawtext":[{"text":"§l§a> ᴄᴏᴍᴘᴏɴᴇɴᴛ ꜰᴏᴜɴᴅ, ᴘʟᴀᴄɪɴɢ ᴡᴀʏᴘᴏɪɴᴛ."}]}



execute as @s[scores={move=105}] run effect @a[r=100] night_vision 4 1 true
execute as @s[scores={move=105}] run playsound mob.guardian.death @a[r=100] ~~~ 9999 0.33 9999
execute as @s[scores={move=105}] run playsound beacon.power @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=105}] run particle ds:reactor_activate1 ~~0.75~
execute as @s[scores={move=105}] run particle ds:reactor_activate2 ~~0.75~
execute as @s[scores={move=105}] run camera @a fade time 0.25 0 0.1 color 255 255 255


execute as @s[scores={move=100..105}] run tag @s add missingcomponent

playanimation @s[scores={move=1..100}] animation.void_reactor.active

tag @s[scores={move=1..4}] remove activation



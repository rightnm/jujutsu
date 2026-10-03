
execute as @s[scores={move=200}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§a> ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴄᴏᴍᴘʟᴇᴛᴇ."}]}
execute as @s[scores={move=200}] run event entity @s ds:void_reactor
execute as @s[scores={move=200}] run scoreboard players set @s endurance 0
execute as @s[scores={move=200}] run scoreboard players set @e[type=ds:rift_stabilizer] Deleter 5
playanimation @s[scores={move=200}]  animation.void_reactor.complete
playanimation @s[scores={move=100..101}] animation.void_reactor.complete
tag @s[scores={move=200..}] remove destabilizing_final

execute as @s[scores={move=140}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴅᴇᴛᴇᴄᴛᴇᴅ ᴀɴ ᴜɴᴀᴜᴛʜᴏʀɪsᴇᴅ ᴀɴᴏᴍᴀʟʏ ᴛᴀᴍᴘᴇʀɪɴɢ ᴡɪᴛʜ ᴛʜᴇ ᴄᴏɴsᴏʟᴇ."}]}
execute as @s[scores={move=80}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ʀᴇʟᴏᴄᴀᴛɪɴɢ ᴄᴏɴsᴏʟᴇ ᴠɪᴀ-ʀɪfᴛ ᴛʀᴀɴsᴘᴏʀᴛᴀᴛɪᴏɴ."}]}

execute as @s[scores={move=60}] at @s run camera @a fade time 1 5 1 color 255 255 255
execute as @s[scores={move=5..40}] at @s run fill ~7~2~7~-7~-100~-7 air
execute as @s[scores={move=5..40}] at @s positioned ~~-50~ run fill ~7~2~7~-7~-100~-7 air
execute as @s[scores={move=40..50}] at @s run function 32x32sphere
execute as @s[scores={move=40..50}] at @s positioned ~~-40~ run function 32x32sphere
execute as @s[scores={move=40..50}] at @s positioned ~~-80~ run function 32x32sphere
execute as @s[scores={move=40..50}] at @s positioned ~~-120~ run function 32x32sphere
execute as @s[scores={move=40..50}] at @s positioned ~~-165~ run function 32x32sphere
execute as @s[scores={move=15..60}] at @s run particle ds:rift_charging1 ~~1~
execute as @s[scores={move=15..60}] at @s run particle ds:rift_charging2 ~~1~
execute as @s[scores={move=15..60}] at @s run camerashake add @a[r=100] 1 0.15
execute as @s[scores={move=25..60}] at @s run playsound portal.trigger @a ~~~ 999999 3 999999

execute as @s[scores={move=51..60}] at @s run scoreboard objectives add consolerejected dummy
execute as @s[scores={move=51..60}] at @s run scoreboard players set @a consolerejected 1

execute as @s[scores={move=51..60}] at @s run scoreboard players set @a component 0


event entity @s[scores={move=1..3}] ds:disappear
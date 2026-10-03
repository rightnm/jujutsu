
execute as @s[scores={move=60}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴇʀʀᴏʀ."}]}
execute as @s[scores={move=60}] run event entity @s ds:void_reactor_red
execute as @s[scores={move=50}] run event entity @s ds:void_reactor
playanimation @s[scores={move=60..,endurance=1}] animation.void_reactor.error1
playanimation @s[scores={move=60..,endurance=2}] animation.void_reactor.error2
playanimation @s[scores={move=20..21,endurance=2}] animation.void_reactor.error2
playanimation @s[scores={move=60..,endurance=3}] animation.void_reactor.error3
playanimation @s[scores={move=40..41,endurance=3}] animation.void_reactor.error3
playanimation @s[scores={move=20..21,endurance=3}] animation.void_reactor.error3
execute as @s[scores={move=60,endurance=1}] at @s run summon ds:knockback
execute as @s[scores={move=60,endurance=1}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=60,endurance=1}] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=60,endurance=1}] at @s run playsound mob.alarm @a ~~~ 99999 0.8 99999
execute as @s[scores={move=60,endurance=2}] at @s run playsound mob.alarm @a ~~~ 99999 0.9 99999
execute as @s[scores={move=60,endurance=3}] at @s run playsound mob.alarm @a ~~~ 99999 1.2 99999

execute as @s[scores={move=20,endurance=1}] at @s run playsound mob.alarm @a ~~~ 99999 0.8 99999
execute as @s[scores={move=20,endurance=2}] at @s run playsound mob.alarm @a ~~~ 99999 0.9 99999
execute as @s[scores={move=20,endurance=3}] at @s run playsound mob.alarm @a ~~~ 99999 1.2 99999


execute as @s[scores={move=20,endurance=1}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴜɴᴇxᴘᴇᴄᴛᴇᴅ ʀᴇᴀʟɪᴛʏ ꜰʀᴀɢᴍᴇɴᴛꜱ ᴅᴇᴛᴇᴄᴛᴇᴅ, ɪɴɪᴛɪᴀᴛɪɴɢ ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴘʀᴏᴄᴇꜱꜱ. ᴅᴏ ɴᴏᴛ ɪɴᴛᴇʀʀᴜᴘᴛ."}]}
execute as @s[scores={move=20,endurance=2}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴜɴᴇxᴘᴇᴄᴛᴇᴅ ʀᴇᴀʟɪᴛʏ ꜰʀᴀɢᴍᴇɴᴛꜱ ᴅᴇᴛᴇᴄᴛᴇᴅ, ꜰᴏᴄᴜꜱꜱɪɴɢ ᴄᴏʀᴇ ᴏɴ ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴘʀᴏᴄᴇꜱꜱ. ᴅᴏ ɴᴏᴛ ɪɴᴛᴇʀʀᴜᴘᴛ."}]}
execute as @s[scores={move=20,endurance=3}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ᴜɴᴇxᴘᴇᴄᴛᴇᴅ ʀᴇᴀʟɪᴛʏ ꜰʀᴀɢᴍᴇɴᴛꜱ ᴅᴇᴛᴇᴄᴛᴇᴅ, ᴄᴏɴsᴏʟᴇ ɪs ᴅᴇsᴛᴀʙɪʟɪᴢɪɴɢ, ᴀᴛᴛᴇᴍᴘᴛɪɴɢ ᴄᴏʀᴇ ʀᴇʙᴏᴏᴛ."}]}

scoreboard players set @s scroll 2400

tag @s[scores={move=1..3}] remove shardinputted
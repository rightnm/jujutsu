
execute as @s[scores={move=2400..2401}] run event entity @s ds:void_reactor_red
execute as @s[scores={move=2350}] run event entity @s ds:void_reactor
execute as @s[scores={move=2350}] run time set midnight
playanimation @s[scores={move=2400..2401}] animation.void_reactor.error4

clear @a[hasitem={item=ds:reality_shard1}] ds:reality_shard1
clear @a[hasitem={item=ds:reality_shard2}] ds:reality_shard2
clear @a[hasitem={item=ds:reality_shard3}] ds:reality_shard3
clear @a[hasitem={item=ds:reality_shard4}] ds:reality_shard4

execute as @s[scores={move=2400..2401}] at @s run damage @a[r=200] 5 override
execute as @s[scores={move=2400..2401}] at @s run scoreboard players set @a[r=200] Hit 5
execute as @s[scores={move=2400..2401}] at @s run effect @a[r=200] night_vision 1 1 true
execute as @s[scores={move=1..}] at @s run effect @a[r=200] slow_falling 3 1 true
execute as @s[scores={move=1..}] at @s run effect @a[r=200] jump_boost 3 15 true

execute as @s[scores={move=2400}] at @s run effect @a darkness 1 1 true
execute as @s[scores={move=2400}] at @s run summon gg:impact_frame
execute as @s[scores={move=2395}] at @s run summon gg:impact_frame
execute as @s[scores={move=2390}] at @s run summon gg:impact_frame

particle ds:riftaura5 ~~1~

execute as @s[scores={move=2400}] at @s run particle ds:invert ^^^15
execute as @s[scores={move=2396}] at @s run particle ds:invert ^^^-15
execute as @s[scores={move=2392}] at @s run particle ds:invert ^15^^
execute as @s[scores={move=2387}] at @s run particle ds:invert ^-15^^ 

execute as @s[scores={move=2400}] at @s run particle ds:rift_explode ~~1~
execute as @s[scores={move=2390..2400}] at @s run particle ds:rift_explode2 ~~1~
execute as @s[scores={move=2400}] at @s run particle ds:large_shockwave ~~1~
execute as @s[scores={move=2400}] at @s run particle ds:riftaura3 ~~1~ 
execute as @s[scores={move=2400}] at @s run particle ds:riftaura4 ~~1~ 
execute as @s[scores={move=2400}] at @s run playsound mob.shock2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound mob.distort1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound mob.distort3 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound music.distort1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound music.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run playsound music.distort3 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=2400}] at @s run summon ds:red_reverse
execute as @s[scores={move=2400}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=2400}] at @s run particle ds:large_impact2 ~~1~

execute as @s[scores={move=2140}] at @s run tellraw @a {"rawtext":[{"text":"§l§c> ʟᴀꜱᴛ ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴀᴛᴛᴇᴍᴘᴛ. ᴅɪᴠᴇʀᴛɪɴɢ ʀɪfᴛ ᴇɴᴇʀɢʏ ᴀɴᴅ ᴄᴏᴍᴍᴀɴᴅꜱ ᴛᴏ ᴏʀɪɢɪɴᴀʟ ᴄᴏɴsᴏʟᴇ."}]}
execute as @s[scores={move=1..2140}] at @s run particle ds:rift_form8 ~~1.5~
execute as @s[scores={move=2140}] at @s run particle ds:reactor_activate2
execute as @s[scores={move=2140}] at @s run playsound mob.blitz2 @a ~~~ 99999 2 99999

execute as @s[scores={move=2080}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴅᴏ ɴᴏᴛ ᴄᴀᴜꜱᴇ ᴄᴏɴfʟɪᴄᴛ ᴛᴏ ꜱᴜʀʀᴏᴜɴᴅɪɴɢ ʀɪfᴛ ꜱᴛᴀʙɪʟɪᴢᴇʀs!"}]}
execute as @s[scores={move=2000}] at @s run tellraw @a {"rawtext":[{"text":"§l§c> ꜱᴛᴀʙɪʟɪᴢᴀᴛɪᴏɴ ᴄᴏᴍᴘʟᴇᴛɪɴɢ ɪɴ 100 ꜱᴇᴄᴏɴᴅꜱ!"}]}
execute as @s[scores={move=1950}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ʀᴇᴘᴇᴀᴛ..."}]}
execute as @s[scores={move=1920}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴅᴏ ɴᴏᴛ ᴄᴀᴜꜱᴇ ᴄᴏɴfʟɪᴄᴛ ᴛᴏ ꜱᴜʀʀᴏᴜɴᴅɪɴɢ ʀɪfᴛ ꜱᴛᴀʙɪʟɪᴢᴇʀs!"}]}


execute as @s[scores={move=2400..2401}] at @s run event entity @e[type=ds:rift_stabilizer] ds:disappear
execute as @s[scores={move=2400..2401}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴡᴀʀɴɪɴɢ."}]}
execute as @s[scores={move=2340}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴄᴏɴsᴏʟᴇ ᴄᴏʀᴇ ᴏᴠᴇʀʟᴏᴀᴅᴇᴅ."}]}
execute as @s[scores={move=2300}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴄᴀᴛᴀꜱᴛʀᴏᴘʜɪᴄ ᴛʜʀᴇᴀᴛ ʟᴇᴠᴇʟ. §cᴅᴇᴘʟᴏʏɪɴɢ ʀɪfᴛ ꜱᴛᴀʙɪʟɪᴢᴇʀs"}]}
#deploy 4 stabilizers around via rift openings and have them channel energy into the core
execute as @s[scores={move=2300}] at @s run summon ds:rift_stabilizer ~~~30 facing ~~~
execute as @s[scores={move=2300}] at @s run summon ds:rift_stabilizer ~~~-30 facing ~~~
execute as @s[scores={move=2300}] at @s run summon ds:rift_stabilizer ~-30~~ facing ~~~
execute as @s[scores={move=2300}] at @s run summon ds:rift_stabilizer ~30~~ facing ~~~



execute as @s[scores={move=2200}] at @s run camerashake add @a[r=100] 2 0.15 rotational
execute as @s[scores={move=2230}] at @s run tellraw @a {"rawtext":[{"text":"§l§c> ᴏᴘᴇɴɪɴɢ ʀɪfᴛ ᴛᴏ ᴏʀɪɢɪɴᴀʟ ʀᴇᴀʟɪᴛʏ."}]}
execute as @s[scores={move=2220}] at @s run playsound mob.blitz1 @a ~~~  999999 0.8 999999
execute as @s[scores={move=2207}] at @s run playsound mob.shock2 @a ~~~  999999 0.8 999999
execute as @s[scores={move=2205}] at @s run particle ds:invert ~~15~
execute as @s[scores={move=2204}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=2203}] at @s run particle ds:blue_tint ~~15~
execute as @s[scores={move=2200}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=2200}] at @s run effect @a night_vision 2 1 true
execute as @s[scores={move=2200}] at @s run playsound block.end_portal.spawn @a ~~~  999999 0.85 999999
execute as @s[scores={move=1..2205}] at @s run playsound mob.wither.spawn @a ~~~  999999 0.5 999999
execute as @s[scores={move=1..2205}] at @s run particle ds:rift_form1 ~~2~
execute as @s[scores={move=1..2205}] at @s run particle ds:rift_form4 ~~1.5~
execute as @s[scores={move=1..2205}] at @s run particle ds:rift_form5 ~~1.5~
execute as @s[scores={move=1..2205}] at @s run particle ds:rift_form7 ~~1.5~
execute as @s[scores={move=1..2205}] at @s run particle ds:white_lightning1 ~~1.5~
execute as @s[scores={move=2200}] at @s run particle ds:shockwave_up ~~1.5~
execute as @s[scores={move=2205}] at @s run particle ds:reactor_activate2 ~~1.5~

execute as @s[scores={move=2190}] at @s run particle ds:rift_form_up1 ~~52~
execute as @s[scores={move=2190}] at @s run particle ds:rift_form_up2 ~~52~
execute as @s[scores={move=1..2185}] at @s run particle ds:rift1b ~~50~


scoreboard players set @s[scores={move=0..15}] scroll 0


execute as @s[scores={move=15..2100}] at @s unless entity @e[type=ds:rift_stabilizer] run scoreboard players set @s scroll -999
execute as @s[scores={move=15..2100}] at @s unless entity @e[type=ds:rift_stabilizer] run scoreboard players set @s move 10001


tag @s[scores={move=1..3}] remove destabilizing_final

execute as @s[scores={move=10000}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ʀɪfᴛ ꜱᴛᴀʙɪʟɪᴢᴇʀs ᴅɪsfᴜɴᴄᴛɪᴏɴᴀʟ."}]}
execute as @s[scores={move=9990}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ʀ-"}]}
execute as @s[scores={move=9988}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ʀ-i"}]}
execute as @s[scores={move=9985}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴏʀɪɢɪɴ ʀɪfᴛ ᴄᴏʟʟᴀᴘꜱɪɴɢ."}]}
execute as @s[scores={move=9970}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ɪ-"}]}
execute as @s[scores={move=9970}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> §k§4DESTABILIZED"}]}
execute as @s[scores={move=9950}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴘʀɪᴍᴀʀʏ ᴏʀɪɢɪɴ ʀɪfᴛ ɪɴᴛᴇɢʀɪᴛʏ ꜰᴀɪʟɪɴɢ."}]}
execute as @s[scores={move=9900}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴄᴀᴛᴀꜱᴛʀᴏᴘʜɪᴄ ʀᴇᴀʟɪᴛʏ ᴄᴏʟʟᴀᴘꜱᴇ ɪᴍᴍɪɴᴇɴᴛ. 10 ꜱᴇᴄᴏɴᴅꜱ ʀᴇᴍᴀɪɴɪɴɢ."}]}
execute as @s[scores={move=9900}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> §k§40111010111011"}]}

execute as @s[scores={move=10000..}] at @s run damage @a[r=200] 5 override
execute as @s[scores={move=10000..}] at @s run scoreboard players set @a[r=200] Hit 5
execute as @s[scores={move=10000..}] at @s run effect @a[r=200] night_vision 1 1 true
execute as @s[scores={move=10000..}] at @s run effect @a[r=200] nausea 16 1 true

execute as @s[scores={move=10000}] at @s run effect @a darkness 1 1 true
execute as @s[scores={move=10000}] at @s run summon gg:impact_frame
execute as @s[scores={move=9999}] at @s run summon gg:impact_frame
execute as @s[scores={move=9994}] at @s run summon gg:impact_frame


execute as @s[scores={move=10000}] at @s run particle ds:invert ^^^15
execute as @s[scores={move=9996}] at @s run particle ds:invert ^^^-15
execute as @s[scores={move=9992}] at @s run particle ds:invert ^15^^
execute as @s[scores={move=9988}] at @s run particle ds:invert ^-15^^ 

execute as @s[scores={move=10000}] at @s run particle ds:rift_explode ~~1~
execute as @s[scores={move=9990..10000}] at @s run particle ds:rift_explode2 ~~1~
execute as @s[scores={move=10000}] at @s run particle ds:large_shockwave ~~1~
execute as @s[scores={move=10000}] at @s run particle ds:riftaura3 ~~1~ 
execute as @s[scores={move=10000}] at @s run particle ds:riftaura4 ~~1~ 
execute as @s[scores={move=10000}] at @s run playsound mob.shock2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound mob.distort1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound mob.distort3 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound music.distort1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound music.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run playsound music.distort3 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10000}] at @s run summon ds:red_reverse
execute as @s[scores={move=10000}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=10000}] at @s run particle ds:large_impact2 ~~1~



execute as @s[scores={move=9999..10001}] at @s run camerashake add @a[r=1000] 0.25 0.15
execute as @s[scores={move=9000..10001}] at @s run particle ds:rift1b ~~50~
execute as @s[scores={move=9000..10001}] at @s run particle ds:rift_unstable1 ~~50~
execute as @s[scores={move=9000..10001}] at @s run particle ds:rift_charging1b ~~50~
execute as @s[scores={move=9000..10001}] at @s run particle ds:rift_charging2b ~~50~
execute as @s[scores={move=9000..10001}] at @s run particle ds:rift_charging3b ~~50~
execute as @s[scores={move=10000..10001}] at @s run execute as @a[r=1000] at @s run playsound music.buildup @s ~~~ 99999 1 99999
execute as @s[scores={move=9800..9801}] at @s run execute as @a[r=1000] at @s run camera @s fade time 5 10 1 color 255 255 255

execute as @s[scores={move=9720..9730}] at @s run fill ~7~2~7~-7~-100~-7 air
execute as @s[scores={move=9720..9730}] at @s positioned ~~-50~ run fill ~7~2~7~-7~-100~-7 air
execute as @s[scores={move=9722..9725}] at @s run function 32x32sphere
execute as @s[scores={move=9722..9725}] at @s positioned ~~-40~ run function 32x32sphere
execute as @s[scores={move=9722..9725}] at @s positioned ~~-80~ run function 32x32sphere
execute as @s[scores={move=9722..9725}] at @s positioned ~~-120~ run function 32x32sphere
execute as @s[scores={move=9722..9725}] at @s positioned ~~-165~ run function 32x32sphere

execute as @s[scores={move=9798..}] at @s run tickingarea add -60000 238 -60000 -59871 238 -59872 reality_arena
execute as @s[scores={move=10000..10001}] at @s run function bosses/file/arena_load
execute as @s[scores={move=9690..9691}] at @s run function rat

execute as @s[scores={move=9600..9688}] at @s run event entity @s ds:disappear

execute as @s[scores={move=10000..}] at @s run camera @a[r=200] fade time 0.25 0.25 0.25 color 0 0 0
execute as @s[scores={move=9980..9981}] at @s run camera @a[r=200] set minecraft:free pos ^^20^35 facing ~~50~
execute as @s[scores={move=9977..9978}] at @s run camera @a[r=200] set minecraft:free ease 13 in_sine pos ^^49^3 facing ~~50~


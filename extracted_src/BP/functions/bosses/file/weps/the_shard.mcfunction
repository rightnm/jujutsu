scoreboard players set @s[tag=itemUse:ds:the_shard,scores={wep5=0,Stun=0}] move 171
scoreboard players set @s[tag=itemUse:ds:the_shard,scores={wep5=0,Stun=0}] wep5 6000


execute as @s[scores={move=160}] at @s if entity @e[type=ds:primesoul,r=200] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ʜᴏᴡ ᴅɪᴅ ʏᴏᴜ ɢᴇᴛ ᴛʜᴀᴛ? ɴᴏ ᴘʀᴏʙʟᴇᴍ, ɪ ᴏᴠᴇʀᴄᴀᴍᴇ ᴛʜᴀᴛ ᴘᴏᴡᴇʀ ᴀɢᴇꜱ ᴀɢᴏ."}]}

playanimation @s[scores={move=170..}] animation.the_shard
execute as @s[scores={move=160}] at @s run execute as @a[r=100] at @s run playsound music.laser1 @s ~~~ 99999 0.25 99999
execute as @s[scores={move=100}] at @s run stopsound @a music.laser1
execute as @s[scores={move=110}] at @s run playsound mob.blitz2 @a ~~~ 99999 1 99999
execute as @s[scores={move=110}] at @s run execute as @a[r=100] at @s run playsound music.enuma @s ~~~ 99999 1.25 99999
execute as @s[scores={move=110}] at @s run camerashake add @a 4 0.25 rotational
execute as @s[scores={move=110}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=110}] at @s run summon gg:impact_frame
execute as @s[scores={move=109}] at @s run particle ds:red_tint ^^1^1
execute as @s[scores={move=108}] at @s run particle ds:blue_tint ^^1^1
execute as @s[scores={move=107}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=106}] at @s run summon gg:impact_frame
execute as @s[scores={move=105}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=108}] at @s run effect @a[r=200] night_vision 6 1 true
scoreboard players set @s[scores={move=20..114}] Frames 8

execute as @s[scores={move=170}] at @s run effect @s slow_falling 8 1 true
execute as @s[scores={move=20..150}] at @s run scriptevent ds:antiair
execute as @s[scores={move=20..104}] at @s run camerashake add @a[r=100] 2.5 0.2
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^10 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^20 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^30 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^40 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^50 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^60 run function bosses/file/weps/shard_dmg
execute as @s[scores={move=20..104}] at @s anchored eyes positioned ^^^70 run function bosses/file/weps/shard_dmg



scoreboard players set @s[scores={move=15..}] Move 6




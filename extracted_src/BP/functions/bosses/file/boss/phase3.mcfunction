


scoreboard players set @s[scores={move=1..}] move 0
scoreboard players set @s[scores={chance=1..}] chance 0

playanimation @s[scores={cutscene=200..}] animation.primesoul.minion_phase


execute as @s[scores={cutscene=200}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mᴜɢʜ, ʏᴏᴜ'ʀᴇ ᴀɴɴᴏʏɪɴɢ."}]}
execute as @s[scores={cutscene=120}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mᴛɪᴍᴇ ꜰᴏʀ ʏᴏᴜ ᴛᴏ ᴍᴇᴇᴛ ꜱᴏᴍᴇ ᴏꜰ §oʜɪs §r§mꜰʀɪᴇɴᴅꜱ."}]}
execute as @s[scores={cutscene=60}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §a//Transferring Data//"}]}

execute as @s[scores={move=200}] at @s run playsound beacon.activate @a[r=200] ~~~ 99999 1.4 99999
execute as @s[scores={move=200}] at @s run playsound mob.fuga_hands @a[r=200] ~~~ 99999 2.4 99999


execute as @s[scores={cutscene=125..130}] at @s run function bosses/file/boss/tp
execute as @s[scores={cutscene=1..127}] at @s run tp @s -59936 260 -59936 facing @p
execute as @s[scores={cutscene=1..127}] at @s run scoreboard players set @s[scores={phase=0..2}] phase 3

execute as @s[scores={cutscene=60}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᴀʀɪsᴇ, ᴇᴄʜᴏᴇꜱ!"}]}
execute as @s[scores={cutscene=60}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={cutscene=60}] at @s run particle ds:large_shockwave ~~1~
execute as @s[scores={cutscene=60}] at @s run effect @a[r=300] instant_health 1 10 true


execute as @s[scores={cutscene=60..120}] at @s positioned ~ 247 ~-30 run particle ds:rift1
execute as @s[scores={cutscene=60..120}] at @s positioned ~ 247 ~30 run particle ds:rift1
execute as @s[scores={cutscene=60..120}] at @s positioned ~-30 247 ~ run particle ds:rift1
execute as @s[scores={cutscene=60..120}] at @s positioned ~30 247 ~ run particle ds:rift1
execute as @s[scores={cutscene=60}] at @s positioned ~ 247 ~-30 run summon ds:butterjaffa 
execute as @s[scores={cutscene=60}] at @s positioned ~ 247 ~30 run summon ds:frogdog
execute as @s[scores={cutscene=60}] at @s positioned ~30 247 ~ run summon ds:magroic
execute as @s[scores={cutscene=60}] at @s positioned ~-30 247 ~ run summon ds:glitchyturtle
execute as @s[scores={cutscene=1..59}] at @s run tag @s add minion_phase





tag @s[scores={cutscene=1..5}] remove phase3
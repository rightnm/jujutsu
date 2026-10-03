


scoreboard players set @s[scores={cutscene=1200..}] move 0
playanimation @s[scores={cutscene=1200..}] animation.primesoul.rage
execute as @s[scores={cutscene=1999..}] at @s run execute as @a[r=200] at @s run playsound music.glitch_start @s ~~~ 99999 0.75 9999 
execute as @s[scores={cutscene=1999..}] at @s run event entity @s primekatana_off
execute as @s[scores={cutscene=1999..}] at @s run event entity @s scythe

execute as @s[scores={cutscene=1175..}] at @s run tp @s ~ 240 ~
execute as @s[scores={cutscene=1175..}] at @s run tag @a[r=200] add darkness
execute as @s[scores={cutscene=1200}] at @s run event entity @s organs
execute as @s[scores={cutscene=1200}] at @s run event entity @s wings_off

execute as @s[scores={cutscene=1200..}] at @s run execute as @a[r=200]  at @s run stopsound @s
execute as @s[scores={cutscene=1164..1165}] at @s run execute as @a[r=200]  at @s run playsound music.ultra1 @s ~~~ 0.25 0.15

execute as @s[scores={cutscene=2000}] at @s run playsound mob.crash @a[r=200] ~~~ 99999 1.9 99999
execute as @s[scores={cutscene=2000}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={cutscene=2000}] at @s run particle ds:crash ~~0.1~

execute as @s[scores={cutscene=1200}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mῳɧąɬ...?"}]}
execute as @s[scores={cutscene=1200}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={cutscene=1160}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mɧ...ɧơῳ?"}]}
execute as @s[scores={cutscene=1160}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={cutscene=1110}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cɎØɄ.."}]}
execute as @s[scores={cutscene=1110}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={cutscene=1070}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cɎØɄ ₱₳₮ⱧɆ₮ł₵-..."}]}
execute as @s[scores={cutscene=1070}] at @s run playsound mob.glitch_intense1 @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=1070}] at @s run playsound music.glitch_intense2 @a[r=200] ~~~ 99999 0.25 99999


execute as @s[scores={cutscene=1020}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cł₦₴Ʉ₣₣ɆⱤ₳฿ⱠɆ-..."}]}
execute as @s[scores={cutscene=1020}] at @s run playsound mob.glitch3 @a[r=200] ~~~ 99999 0.5 99999

execute as @s[scores={cutscene=970}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §c₣Ʉ₵₭ł₦₲-..."}]}
execute as @s[scores={cutscene=970}] at @s run playsound mob.glitchtalk2 @a[r=200] ~~~ 99999 0.85 99999

execute as @s[scores={cutscene=900}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ł'VɆ Ⱨ₳Đ Ɇ₦ØɄ₲Ⱨ!"}]}
execute as @s[scores={cutscene=900}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1.15 99999


execute as @s[scores={cutscene=880}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᴊᴜꜱᴛ!.."}]}
execute as @s[scores={cutscene=880}] at @s run playsound mob.glitch2 @a[r=200] ~~~ 99999 0.85 99999


execute as @s[scores={cutscene=870..875}] at @s run playsound mob.distort1 @a ~~1~ 99999 2 99999
execute as @s[scores={cutscene=870}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᎠįƐ!"}]}
execute as @s[scores={cutscene=880}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.85 99999
execute as @s[scores={cutscene=840}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ĐłɆ!!"}]}
execute as @s[scores={cutscene=840}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.85 99999
execute as @s[scores={cutscene=820}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᗪ丨乇!!!"}]}
execute as @s[scores={cutscene=820}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.85 99999

execute as @s[scores={cutscene=780}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ĐłɆ ɎØɄ ł₦₴ł₲₦ł₣ł₵₳₦₮ ₣Ʉ₵₭!"}]}
execute as @s[scores={cutscene=780}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1.15 99999

execute as @s[scores={cutscene=740}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4₴₮Ø₱ ₲Ɇ₮₮ł₦₲ Ø₦ ₥Ɏ ₦ɆⱤVɆ₴!!!"}]}
execute as @s[scores={cutscene=740}] at @s run playsound mob.glitchtall2 @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={cutscene=690}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4₲łVɆ Ʉ₱!!"}]}
execute as @s[scores={cutscene=690}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.5 99999

execute as @s[scores={cutscene=600}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ʏᴏᴜ  §8ᴄ ᴀ ɴ ɴ ᴏ ᴛ  §4ᴅᴇꜰᴇᴀᴛ ᴍᴇ!"}]}
execute as @s[scores={cutscene=600}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1 99999

execute as @s[scores={cutscene=535}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ꜰᴏʀ ɪ ᴀᴍ..."}]}
execute as @s[scores={cutscene=535}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.75 99999

execute as @s[scores={cutscene=500}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4I̶N̶E̶V̶I̶T̶A̶B̶L̶E"}]}
execute as @s[scores={cutscene=500}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.45 99999
execute as @s[scores={cutscene=500}] at @s run playsound mob.endermen.idle @a[r=200] ~~~ 99999 0.75 99999


execute as @s[scores={cutscene=460}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ł ₳₥... Ɇ₮ɆⱤ₦₳Ⱡ!"}]}
execute as @s[scores={cutscene=460}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.45 99999
execute as @s[scores={cutscene=460}] at @s run playsound mob.endermen.idle @a[r=200] ~~~ 99999 0.75 99999

execute as @s[scores={cutscene=370}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ ＡＭ．．． ＯＭＮＩ－ＰＯＴＥＮＴ！"}]}


execute as @s[scores={cutscene=320}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＡＮＤ．．．"}]}
execute as @s[scores={cutscene=300}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ ＷＩＬＬ ＮＯＴ ＬＥＴ ＹＯＵ ＧＥＴ ＩＮ ＭＹ ＷＡＹ！！！"}]}

execute as @s[scores={cutscene=460}] at @s run stopsound @a music.ultra1

execute as @s[scores={cutscene=460}] at @s run playsound music.glitch_start @a[r=200]
execute as @s[scores={cutscene=460}] at @s run playsound mob.ambient_glitch @a[r=200] ~~~ 99999 0.8 99999
execute as @s[scores={cutscene=370}] at @s run playsound music.glitch_intense2 @a[r=200]
execute as @s[scores={cutscene=399..400}] at @s run playsound mob.wither.spawn @a ~~~ 9999 0.8 9999
execute as @s[scores={cutscene=380}] at @s run execute as @a[r=200] at @s run playsound music.ultra2 @s ~~~ 99999 1 99999

execute as @s[scores={cutscene=375}] at @s run playsound mob.distort2 @a ~~1~ 0.2 0.25
execute as @s[scores={cutscene=290..375}] at @s run playsound mob.eye @a ~~1~ 0.2 0.3
execute as @s[scores={cutscene=320}] at @s run execute as @a[r=200] at @s run playsound music.soul @s ~~~ 99999 0.3 99999

execute as @s[scores={move=220}] at @s run playsound beacon.activate @a[r=200] ~~~ 99999 1.4 99999
execute as @s[scores={move=220}] at @s run playsound mob.fuga_hands @a[r=200] ~~~ 99999 2.4 99999

execute as @s[scores={cutscene=375}] at @s run particle ds:invert 
execute as @s[scores={cutscene=372}] at @s run particle ds:invert 
execute as @s[scores={cutscene=370}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={cutscene=369}] at @s run particle ds:red_tint
execute as @s[scores={cutscene=368}] at @s run particle ds:blue_tint
execute as @s[scores={cutscene=364}] at @s run particle ds:invert 


execute as @s[scores={cutscene=370}] at @s run playsound music.buildup @a[r=50] ~~~ 99999 3 99999
execute as @s[scores={cutscene=320}] at @s run particle ds:invert 
execute as @s[scores={cutscene=317}] at @s run particle ds:invert 
execute as @s[scores={cutscene=319}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={cutscene=315}] at @s run particle ds:red_tint
execute as @s[scores={cutscene=314}] at @s run particle ds:blue_tint
execute as @s[scores={cutscene=313}] at @s run particle ds:invert 
execute as @s[scores={cutscene=312}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={cutscene=310}] at @s run particle ds:invert 
execute as @s[scores={cutscene=308}] at @s run particle ds:blue_tint
execute as @s[scores={cutscene=306}] at @s run particle ds:red_tint
execute as @s[scores={cutscene=303}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={cutscene=280..375}] at @s run particle ds:corrupt1 ~~2~
execute as @s[scores={cutscene=280..375}] at @s run particle ds:corrupt2 ~~2~
execute as @s[scores={cutscene=280..875}] at @s run particle ds:corrupt3 ~~2~
execute as @s[scores={cutscene=280..375}] at @s run particle ds:corrupt4 ~~2~
execute as @s[scores={cutscene=280..375}] at @s run camerashake add @a[r=200] 1 0.15
execute as @s[scores={cutscene=315}] at @s run effect @a[r=200] darkness 3 1 true
execute as @s[scores={cutscene=290}] at @s run camera @a[r=200] fade time 0.5 0.5 1 color 0 0 0
execute as @s[scores={cutscene=276}] at @s run event entity @s organs2
execute as @s[scores={cutscene=276}] at @s run event entity @s wings_on
execute as @s[scores={cutscene=270..276}] at @s run scoreboard players set @s phase 5


tag @s[scores={cutscene=0..100}] remove finalphase


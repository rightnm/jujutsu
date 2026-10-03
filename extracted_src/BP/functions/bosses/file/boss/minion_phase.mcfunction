tp @s -59936 262 -59936 facing @p
execute unless entity @e[type=ds:chaos,r=200] run particle ds:reality_start ~~-1.5~
playanimation @s[scores={cutscene=0}] animation.primesoul.chilling
scoreboard players set @s[scores={Frames=0..5}] Frames 40
scoreboard players set @s[scores={Energy=0..6}] Energy 50
execute if entity @a[r=10] run summon ds:mahoraga_knockback2 

effect @s resistance 1 10 true

execute as @s[scores={phase=1..4}] unless entity @e[type=ds:frogdog] unless entity @e[type=ds:butterjaffa] unless entity @e[type=ds:magroic] unless entity @e[type=ds:glitchyturtle] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cꜰɪɴᴇ, ɪ ɢᴜᴇꜱꜱ ɪ'ʟʟ ᴅᴏ ɪᴛ ᴍʏsᴇʟf."}]}
execute as @s[scores={phase=1..4}] unless entity @e[type=ds:frogdog] unless entity @e[type=ds:butterjaffa] unless entity @e[type=ds:magroic] unless entity @e[type=ds:glitchyturtle] run tag @s remove minion_phase

execute as @e[family=heroic,rm=300] at @s run tp @s -59936 240 -59936

execute as @s[scores={phase=5..6}] unless entity @e[type=ds:bluelemon] unless entity @e[type=ds:xeroscoof] unless entity @e[type=ds:soulking] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＷＨＹ ＩＳ ＥＶＥＲＹＯＮＥ ＳＯ ＵＳＥＬＥＳＳ！？"}]}
execute as @s[scores={phase=5..6}] unless entity @e[type=ds:bluelemon] unless entity @e[type=ds:xeroscoof] unless entity @e[type=ds:soulking] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fNice one heroic, you just sat up there while we do all the work, Real useful mate."}]}
execute as @s[scores={phase=5..6}] unless entity @e[type=ds:bluelemon] unless entity @e[type=ds:xeroscoof] unless entity @e[type=ds:soulking] run tag @s remove minion_phase



execute as @s[scores={phase=7}] unless entity @e[type=ds:chaos] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＨＯＷ！？"}]}
execute as @s[scores={phase=7}] unless entity @e[type=ds:chaos] run tag @s remove minion_phase
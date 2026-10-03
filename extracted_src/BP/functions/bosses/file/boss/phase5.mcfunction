



playanimation @s[scores={cutscene=600..}] animation.primesoul.minion_phase
scoreboard players set @s[scores={move=1..}] move 0
scoreboard players set @s[scores={chance=1..}] chance 0

execute as @s[scores={cutscene=600}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ʏᴏᴜ'ᴠᴇ ɢᴏᴛᴛᴀ ʙᴇ ᴋɪᴅᴅɪɴɢ ᴍᴇ."}]}
execute as @s[scores={cutscene=550}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᴀʟʀɪɢʜᴛ ᴛʜᴇɴ..."}]}
execute as @s[scores={cutscene=400}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ɪ ᴡᴀꜱ ꜱᴀᴠɪɴɢ ᴛʜᴇꜱᴇ ᴏɴᴇꜱ ᴛᴏ ᴛᴏʀᴛᴜʀᴇ ʜɪᴍ, ʙᴜᴛ ɪ ɢᴜᴇꜱꜱ ɪ ʜᴀᴠᴇ ɴᴏ ᴄʜᴏɪᴄᴇ ʙᴜᴛ ᴛᴏ ᴜꜱᴇ ᴛʜᴇᴍ ɴᴏᴡ."}]}
execute as @s[scores={cutscene=360}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §a//Transferring Data//"}]}

execute as @s[scores={move=200}] at @s run playsound beacon.activate @a[r=200] ~~~ 99999 1.4 99999
execute as @s[scores={move=200}] at @s run playsound mob.fuga_hands @a[r=200] ~~~ 99999 2.4 99999


execute as @s[scores={cutscene=525..530}] at @s run function bosses/file/boss/tp
execute as @s[scores={cutscene=1..526}] at @s run tp @s @s
execute as @s[scores={cutscene=390..400}] at @s run tp @s -59936 260 -59936 facing @p
execute as @s[scores={cutscene=1..526}] at @s run tp @s -59936 260 -59936 facing ^^^10
execute as @s[scores={cutscene=1..526}] at @s run scoreboard players set @s[scores={phase=0..5}] phase 6

execute as @s[scores={cutscene=200}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ᴇ ʟ ɪ ᴍ ɪ ɴ ᴀ ᴛ ᴇ   ᴛ ʜ ᴇ ᴍ"}]}
execute as @s[scores={cutscene=200}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={cutscene=200}] at @s run particle ds:large_shockwave ~~1~
execute as @s[scores={cutscene=200}] at @s run effect @a[r=300] instant_health 1 15 true
execute as @s[scores={cutscene=200}] at @s run scoreboard players set @e[family=heroic,type=!ds:primesoul] Stun 5
execute as @s[scores={cutscene=200}] at @s run scoreboard players set @e[family=heroic,type=!ds:primesoul] cutscene 5
execute as @s[scores={cutscene=200}] at @s run scoreboard players set @e[family=heroic,type=!ds:primesoul] Disabled 5


execute as @s[scores={cutscene=330}] at @s run execute as @e[family=heroic,type=!ds:primesoul] at @s run playsound random.explode @a[r=100] ~~~ 9999 3 9999
execute as @s[scores={cutscene=330}] at @s run execute as @e[family=heroic,type=!ds:primesoul] at @s run particle ds:rubble3 ~ 240.1 ~
execute as @s[scores={cutscene=330}] at @s run execute as @e[family=heroic,type=!ds:primesoul] at @s run particle ds:bounce ~ 240.1 ~
execute as @s[scores={cutscene=310}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fOmg why bring us here for someone that looks so weak?"}]}

execute as @s[scores={cutscene=300}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§5Soulking §r§f> §fNo drip?"}]}

execute as @s[scores={cutscene=245}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fBecause you need carrying Blue."}]}

execute as @s[scores={cutscene=240}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§5Soulking §r§f> §fSo loud.."}]}



execute as @s[scores={cutscene=360..420}] at @s positioned ~ 247 ~ run particle ds:rift1
execute as @s[scores={cutscene=360}] at @s anchored eyes positioned ~ 240 ~ positioned ^-1.5 ^ ^ run summon ds:xeroscoof ~~~ facing @p
execute as @s[scores={cutscene=360}] at @s anchored eyes positioned ~ 240 ~ positioned ^^^ run summon ds:bluelemon ~~~ facing @p
execute as @s[scores={cutscene=360}] at @s anchored eyes positioned ~ 240 ~ positioned ^1.5 ^ ^ run summon ds:soulking ~~~ facing @p

execute as @s[scores={cutscene=358..360}] at @s  run scoreboard players set @e[family=heroic,type=!ds:primesoul,r=30] cutscene 300
execute as @s[scores={cutscene=369..370}] at @s positioned ~ 241.5 ~ positioned ^^^1 run camera @a[r=200] set minecraft:free pos ^^^2 facing ~~~
execute as @s[scores={cutscene=367..369}] at @s positioned ~ 241.5 ~ positioned ^^^1 run camera @a[r=200] set minecraft:free ease 5 in_sine pos ^^^8 facing ~~~

execute as @s[scores={cutscene=390..400}] at @s run execute as @a[r=200] at @s run tp @s ~~~ facing @e[type=ds:primesoul,c=1]
execute as @s[scores={cutscene=250..400}] at @s run scoreboard players set @a[r=200] Stun 20
execute as @s[scores={cutscene=259..260}] at @s run camera @a fade time 0.8 1 0.5 color 0 0 0
execute as @s[scores={cutscene=200..240}] at @s run camera @a clear

execute as @s[scores={cutscene=6..199}] at @s run scoreboard players set @s cutscene 5

execute as @s[scores={cutscene=1..360}] at @s run tag @s add minion_phase


tag @s[scores={cutscene=1..5}] remove phase5
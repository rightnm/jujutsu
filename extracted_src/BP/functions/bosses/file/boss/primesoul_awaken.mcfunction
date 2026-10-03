
execute positioned  -59936 250 -59936 unless entity @a[r=250] run function nostopcheating

playanimation @s[scores={cutscene=1200..}] animation.primesoul.awaken
execute as @s[scores={cutscene=1200..}] at @s run stopsound @a[r=300]

execute as @s[scores={cutscene=1175..}] at @s run tp @s ~ 260 ~
execute as @s[scores={cutscene=1175..}] at @s run tag @a[r=200] add darkness

execute as @s[scores={cutscene=5}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§e- You have 5 lives."}]}
execute as @s[scores={cutscene=5}] at @s run scoreboard players set @a[r=300] lives 5

execute as @s[scores={cutscene=1200}] at @s run playsound mob.glitch_start @a[r=200] ~~~ 99999 0.75 99999

execute as @s[scores={cutscene=1150}] at @s run execute as @a[r=100]  at @s run playsound music.toji_awaken @s ~~~ 0.75 0.2

execute as @s[scores={cutscene=1165..1170}] at @s run tp @s ~ 240 ~
execute as @s[scores={cutscene=1166}] at @s run playsound mob.crash @a[r=200] ~~~ 99999 0.9 99999
execute as @s[scores={cutscene=1166}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={cutscene=1166}] at @s run particle ds:crash ~~0.1~

execute as @s[scores={cutscene=1190}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mƑìղąӀӀվ..."}]}
execute as @s[scores={cutscene=1190}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.75 99999


execute as @s[scores={cutscene=1160}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mI αɱ ϝɾҽҽ αƚ ʅαʂƚ..."}]}
execute as @s[scores={cutscene=1160}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1.75 99999

execute as @s[scores={cutscene=1070}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mI'ʋҽ ʂρҽɳƚ ɯαყ ƚσσ ʅσɳɠ ιɳ ƚԋαƚ ԃαɱɳҽԃ ρʅαƈҽ..."}]}
execute as @s[scores={cutscene=1070}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1 99999


execute as @s[scores={cutscene=970}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mAʅʅ Ⴆҽƈαυʂҽ σϝ ԋιɱ..."}]}
execute as @s[scores={cutscene=970}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 2 99999

execute as @s[scores={cutscene=900}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mHҽ ʂαɯ ɯԋαƚ I ɯαʂ ƈαραႦʅҽ σϝ.\nAɳԃ ԋҽ ʂƚαႦႦҽԃ ɱҽ ιɳ ƚԋҽ Ⴆαƈƙ, ƈαʂƚ ɱҽ συƚ ʅιƙҽ §4TRASH§m!"}]}
execute as @s[scores={cutscene=900}] at @s run playsound mob.glitchtalk2 @a[r=200] ~~~ 99999 0.76 99999


execute as @s[scores={cutscene=800}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §mȺӀӀ į աąղէҽժ էօ ժօ աąʂ հҽӀք, ҍմէ §4ហටට§m. φҽօքӀҽ çąղ'է ҍҽ էɾմʂէҽժ. Ӌօմ ժìʂçąɾժҽժ օƒ ʍվ §4ƑȺ↻Ɛ§m, ʍվ §4చįꝈꝈ§m ąղժ ʍվ §4ƑའƐƐᎠටⱮ§m!!!"}]}
execute as @s[scores={cutscene=800}] at @s run playsound mob.glitchtalk2 @a[r=200] ~~~ 99999 0.65 99999
execute as @s[scores={cutscene=730}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 0.85 99999


execute as @s[scores={cutscene=680}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4§oʏᴏᴜʀ ʙᴇᴛʀᴀʏᴀʟ ᴄᴀʀᴠᴇᴅ ᴍʏ ᴀɢᴏɴʏ ɪɴᴛᴏ ᴇᴛᴇʀɴɪᴛʏ!"}]}

execute as @s[scores={cutscene=625}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4§oNow I rise, UNBOUND, to return§r§k§4egg§r§4§o your gift.\nI WILL TEAR the heart from your chest and SCATTER the threads of§r§k§4egg§r§4§o your existence across the 匚ㄖㄩ几ㄒㄥ乇丂丂 realities, so even the echoes of your name will choke on silence!"}]}
execute as @s[scores={cutscene=625}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=590..610}] at @s run playsound mob.glitch_intense1 @a[r=200] ~~~ 99999 0.85 99999

execute as @s[scores={cutscene=541..542}] at @s run playsound mob.ambient_glitch @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=539..542}] at @s run playsound mob.dukelaugh @a ~~~ 99999 0.825 99999
execute as @s[scores={cutscene=540}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ȺǶȺǶȺǶȺǶȺǶǶȺǶȺǶȺǶȺǶȺǶ. į ↻ȺហហටͲ చȺįͲ ȺហӋ ꝈටហƓƐའ!!!!!!"}]}

execute as @s[scores={cutscene=445}] at @s run tp @s ~~~ facing @p
execute as @s[scores={cutscene=445}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cNσɯ... A Pʅαყҽɾ? Wԋαƚ αɾҽ ყσυ ԃσιɳɠ ԋҽɾҽ?"}]}
execute as @s[scores={cutscene=445}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 1 99999


execute as @s[scores={cutscene=390}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cAɾҽ ყσυ σɳҽ σϝ ԋιʂ???"}]}
execute as @s[scores={cutscene=390}] at @s run playsound mob.glitchtalk2 @a[r=200] ~~~ 99999 1 99999

execute as @s[scores={cutscene=310}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4Hҽ ʂҽɳƚ ყσυ ԋҽɾҽ ƚσ ɠҽƚ ɾιԃ σϝ ɱҽ, DIDNT HE!????"}]}
execute as @s[scores={cutscene=310}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 0.8 99999

execute as @s[scores={cutscene=240}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cTσσ αϝɾαιԃ ƚσ ϝαƈҽ ɱҽ ყσυɾʂҽʅϝ... ʂσ ყσυ ʂҽɳƚ α ɱҽɾҽ §4PAWN."}]}
execute as @s[scores={cutscene=240}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~~ 99999 0.7 99999

execute as @s[scores={cutscene=190}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cENOUGH GAMES!"}]}
execute as @s[scores={cutscene=190}] at @s run playsound mob.glitch2 @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=190}] at @s run playsound mob.endermen.idle @a[r=200] ~~~ 99999 0.4 99999

execute as @s[scores={cutscene=140}] at @s positioned ^-0.75^^ run playsound beacon.power @a ~~~ 99999 2.5 99999
execute as @s[scores={cutscene=140}] at @s positioned ^-0.75^^ run playsound mob.fuga_hands @a ~~~ 99999 2.5 99999

execute as @s[scores={cutscene=88}] at @s positioned ^-0.75^^ run playsound mob.crash @a ~~~ 9999 2.5 9999
execute as @s[scores={cutscene=88}] at @s positioned ^-0.75^^ run camerashake add @a[r=100] 2 0.15
execute as @s[scores={cutscene=88}] at @s positioned ^-0.75^^ run particle ds:dirt2

execute as @s[scores={cutscene=18..20}] at @s run stopsound @a 
execute as @s[scores={cutscene=60}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4Cσɱҽ ϝσɾƚԋ ყσυ ραƚԋҽƚιƈ ραɯɳ..."}]}
execute as @s[scores={cutscene=60}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={cutscene=60}] at @s run playsound mob.endermen.idle @a[r=200] ~~~ 99999 0.4 99999

execute as @s[scores={cutscene=20}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4Aɳԃ DIE!"}]}
execute as @s[scores={cutscene=20}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=20}] at @s run playsound mob.endermen.idle @a[r=200] ~~~ 99999 0.4 99999


execute as @s[scores={cutscene=6}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §0??? §f> §fTry to Parry by punching when he is attacking, Parrying will increase your health aswell as negating damage and dealing damage/stun. However simply dashing/avoiding attacks is alot easier if you've got the agility to do so."}]}
execute as @s[scores={cutscene=20}] at @s run effect @a[r=300] blindness 2 1 true
execute as @s[scores={cutscene=4..5}] at @s run tag @a[r=300] remove darkness
execute as @s[scores={cutscene=4..5}] at @s run execute as @a[r=300] at @s run playsound music.ultra1 @s ~~~ 99999 1 99999

tag @s[scores={cutscene=1..5}] remove awaken
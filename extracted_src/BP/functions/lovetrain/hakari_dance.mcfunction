playanimation @s[scores={cutscene=430},tag=hakaridance] animation.hakari_dance

execute as @s[scores={cutscene=430..},tag=hakaridance] at @s run tp @s @s
execute as @s[scores={cutscene=430..},tag=hakaridance] at @s run playsound music.jackpot2 @a[r=44] ~~~ 99999 1 99999

scoreboard players set @s[scores={cutscene=1..},tag=hakaridance,type=!player] combat 800
tag @e[scores={cutscene=1..2},tag=hakaridance] remove hakaridance

scoreboard players add @s[scores={cutscene=430..}] infinity 15
scoreboard players add @s[scores={cutscene=1..}] infinity 1
scoreboard players set @s[scores={cutscene=1..}] ProjImmune 50

execute as @s run scoreboard players set @s Frames 4
execute as @s[scores={cutscene=70..}] run scoreboard players set @e[r=40,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,type=!armor_stand] Stun 5
execute as @s run scoreboard players set @e[r=40,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,type=!armor_stand] Move 4
execute as @s run scoreboard players set @e[r=40,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,type=!armor_stand] Camera 4

tag @s[tag=blackflash1] remove blackflash1
tag @s[tag=blackflash2] remove blackflash2
tag @s[tag=blackflash3] remove blackflash3
tag @s[tag=blackflash4] remove blackflash4
tag @s[tag=gojo_blackflash_finisher] remove gojo_blackflash_finisher
tag @s[tag=gojo_blackflash_finisher2] remove gojo_blackflash_finisher2
tag @s[tag=imyoucutscene] remove imyoucutscene


execute as @s[scores={cutscene=55},tag=hakaridance] at @s run playsound music.alwaysbetonahakari @a[r=50] ~~~ 99999 1 99999

execute as @s[scores={cutscene=25},tag=hakaridance] at @s anchored eyes run  tellraw @s {"rawtext":[{"text":"§aYou hit the Jackpot, Turn Up the volume!\n§5- For the next 4 minutes and 11 seconds you will have infinite cursed energy and effectively be immortal.\n§e- New Fist-Combat moves unlocked."}]}

execute as @s[scores={cutscene=430..},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^ ^-0.25 ^1.5 rot ~ ~180
execute as @s[scores={cutscene=429},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1.85 in_sine pos ^ ^-0.25 ^2 rot ~ ~180

execute as @s[scores={cutscene=404},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.2 0.1 0.2 color 0 0 0

execute as @s[scores={cutscene=398},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^2 ^-0.85 ^-3 rot ~5 ~30
execute as @s[scores={cutscene=397},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.5 in_out_circ pos ^3 ^-0.85 ^-4 rot ~-5 ~40

execute as @s[scores={cutscene=380},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.5 0.1 0.1 color 0 0 0
execute as @s[scores={cutscene=369},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^ ^-0.3 ^1 rot ~15 ~
execute as @s[scores={cutscene=368},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.75 in_sine pos ^ ^-0.3 ^1 rot ~-2 ~
execute as @s[scores={cutscene=360},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.35 0.5 0.5 color 255 255 255

execute as @s[scores={cutscene=386..392},tag=hakaridance] at @s run  camerashake add @a[r=40] 2 0.15
execute as @s[scores={cutscene=386..392},tag=hakaridance] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 0.5 0.75 
execute as @s[scores={cutscene=356..392},tag=hakaridance] at @s run particle ds:hakari_dance_start1 ~~~
execute as @s[scores={cutscene=356..392},tag=hakaridance] at @s run particle ds:hakari_dance_start2 ~~~
execute as @s[scores={cutscene=356..355},tag=hakaridance] at @s run particle ds:hakari_dance_start3 ~~~


execute as @s[scores={cutscene=246..350},tag=hakaridance] at @s run camerashake add @a[r=44] 0.15 0.05

execute as @s[scores={cutscene=76..186},tag=hakaridance] at @s run camerashake add @a[r=44] 0.15 0.05

execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance1 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance2 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance3 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance4 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance5 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance6 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance7 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance8 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance9 ~~~
execute as @s[scores={cutscene=1..355},tag=hakaridance] at @s run particle ds:hakari_dance10 ~~~

execute as @s[scores={cutscene=348},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^2.5 ^2 ^5 rot ~25 ~150
execute as @s[scores={cutscene=347},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.1 0 0.15 color 255 255 255
execute as @s[scores={cutscene=346},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^1.25 ^0.25 ^2 rot ~10 ~140

execute as @s[scores={cutscene=308},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^-1.5 ^-0.5 ^2.25 rot ~ ~210
execute as @s[scores={cutscene=307},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.1 0 0.15 color 255 255 255
execute as @s[scores={cutscene=306},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^-1.25 ^-0.5 ^2 rot ~-15 ~220

execute as @s[scores={cutscene=278},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^ ^1 ^4 rot ~15 ~180
execute as @s[scores={cutscene=277},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.1 0 0.15 color 255 255 255
execute as @s[scores={cutscene=276},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^ ^0.25 ^1.5 rot ~5 ~180

execute as @s[scores={cutscene=248},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^ ^-1.25 ^0.95 rot ~20 ~180
execute as @s[scores={cutscene=236},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.5 0 0.5 color 255 255 255
execute as @s[scores={cutscene=246},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^ ^-1.35 ^0.65 rot ~16 ~180

execute as @s[scores={cutscene=228},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^-1.5 ^ ^2.25 rot ~ ~210
execute as @s[scores={cutscene=226},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.15 in_sine pos ^-1 ^-0.3 ^0.75 rot ~ ~230
execute as @s[scores={cutscene=223},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.175 in_sine pos ^-0.75 ^-0.15 ^0.75 rot ~3 ~225
execute as @s[scores={cutscene=219},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.15 in_sine pos ^-1 ^-0.3 ^0.75 rot ~ ~230
execute as @s[scores={cutscene=216},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.175 in_sine pos ^-0.75 ^-0.15 ^0.75 rot ~3 ~225
execute as @s[scores={cutscene=212},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.15 in_sine pos ^-1 ^-0.3 ^0.75 rot ~ ~230
execute as @s[scores={cutscene=208},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.175 in_sine pos ^-0.75 ^-0.15 ^0.75 rot ~3 ~225
execute as @s[scores={cutscene=205},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.15 in_sine pos ^-1 ^-0.3 ^0.75 rot ~ ~230
execute as @s[scores={cutscene=202},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.175 in_sine pos ^-0.75 ^-0.15 ^0.75 rot ~3 ~225
execute as @s[scores={cutscene=198},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.15 in_sine pos ^-1 ^-0.3 ^0.75 rot ~ ~230
execute as @s[scores={cutscene=186},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 0.175 in_sine pos ^-0.75 ^-0.15 ^0.75 rot ~3 ~225
execute as @s[scores={cutscene=197},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.5 0.15 0.5 color 255 255 255

execute as @s[scores={cutscene=186},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^-0.5 ^-0.6 ^ rot ~15 ~-90
execute as @s[scores={cutscene=175},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^-1.25 ^-0.5 ^ rot ~-2 ~-90

execute as @s[scores={cutscene=140},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.2 0.05 0.2 color 255 255 255
execute as @s[scores={cutscene=136},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^-2 ^-0.75 ^-3 rot ~5 ~-30
execute as @s[scores={cutscene=135},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^-2 ^-0.75 ^-3 rot ~-15 ~-30

execute as @s[scores={cutscene=100},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.2 0.05 0.2 color 255 255 255
execute as @s[scores={cutscene=96},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^0.3 ^-0.25 ^0.4 rot ~35 ~-150
execute as @s[scores={cutscene=95},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_out_circ pos ^-0.65 ^0.75 ^1 rot ~35 ~-150


execute as @s[scores={cutscene=52},tag=hakaridance] at @s run playsound music.tukadonka @a[r=44]  ~~~ 99999 1 99999
execute as @s[scores={cutscene=52},tag=hakaridance] at @s run scoreboard objectives add hakarimode dummy
execute as @s[scores={cutscene=1..40},tag=hakaridance] at @s run scoreboard players set @s hakarimode 5020
execute as @s[scores={cutscene=1..40},tag=hakaridance] at @s run scoreboard players set @s countdown2 1480

execute as @s[scores={cutscene=60..70},tag=hakaridance] at @s run scoreboard players set @e[type=ds:kashimo,r=60] ability2 0
execute as @s[scores={cutscene=150},tag=hakaridance] at @s if entity @e[type=ds:kashimo,r=60] run tellraw @a[r=60] {"rawtext":[{"text":"§f<Hajime Kashimo> If I can get through Hakari's jackpot for the next 4 minutes and 11 seconds, then I will WIN!"}]}
execute as @s[scores={cutscene=115},tag=hakaridance] at @s if entity @e[type=ds:kashimo,r=60] run tellraw @a[r=60] {"rawtext":[{"text":"§f<Hajime Kashimo> But, that's how LOSERS THINK!"}]}
execute as @s[scores={cutscene=80},tag=hakaridance] at @s if entity @e[type=ds:kashimo,r=60] run tellraw @a[r=60] {"rawtext":[{"text":"§f<Hajime Kashimo> Fine then, TURN UP THE VOLUME!"}]}
execute as @s[scores={cutscene=55},tag=hakaridance] at @s if entity @e[type=ds:kashimo,r=60] run tellraw @a[r=60] {"rawtext":[{"text":"§f<Hajime Kashimo> Because THIS... IS A FUNERAL FOR THE LIVING!!!"}]}
execute as @s[scores={cutscene=55},tag=hakaridance] at @s if entity @e[type=ds:kashimo,r=60] run damage @e[type=ds:kashimo] 1 none entity @s

execute as @s[scores={cutscene=53},tag=hakaridance] at @s run scoreboard objectives add divfist dummy
execute as @s[scores={cutscene=53},tag=hakaridance] at @s run scoreboard objectives add damageinsurance dummy
execute as @s[scores={cutscene=53},tag=hakaridance] at @s run scoreboard objectives add energyinsurance dummy
execute as @s[scores={cutscene=51..52},tag=hakaridance] at @s run  scoreboard players operation @s damageinsurance = @s damageadd
execute as @s[scores={cutscene=50},tag=hakaridance] at @s run  scoreboard players set two endurance 2
execute as @s[scores={cutscene=50},tag=hakaridance] at @s run  scoreboard players operation @s divfist = @s damageadd
execute as @s[scores={cutscene=50},tag=hakaridance] at @s run  scoreboard players operation @s divfist /= two endurance
execute as @s[scores={cutscene=50},tag=hakaridance] at @s run  scoreboard players operation @s damageadd += @s divfist
execute as @s[scores={cutscene=50},tag=roughce,tag=hakaridance] at @s run  scoreboard players operation @s divfist /= two endurance
execute as @s[scores={cutscene=50},tag=roughce,tag=hakaridance] at @s run  scoreboard players operation @s damageadd += @s divfist


execute as @s[scores={cutscene=52},tag=hakaridance] at @s anchored eyes run camera @a[r=44] fade time 0.5 1 0.5 color 0 0 0
execute as @s[scores={cutscene=66},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^0.5 ^ ^-1 rot ~ ~15
execute as @s[scores={cutscene=65},tag=hakaridance] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 2 in_sine pos ^0.75 ^ ^-3 rot ~ ~
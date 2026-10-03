
scoreboard players remove @s[scores={blackflashing2=1..}] blackflashing2 1

scoreboard players set @s Frames 10
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Frames 10
scoreboard players set @s Move 6
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Move 6
scoreboard players set @s Camera 6
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Camera 6
scoreboard players set @s Move 8
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Stun 25
scoreboard players set @s Disabled 5
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Disabled 15
scoreboard players set @s Disabled2 5
scoreboard players set @e[tag=blackflash_finisher_gojo2,c=1,r=15] Disabled2 15
execute as @s[scores={blackflashing=419..}] at @s run effect @e[tag=blackflashcutscene,c=2,r=15] slowness 21 99 true

playanimation @s[scores={blackflashing=420..}] animation.gojo_blackflash
execute as @s at @s run playanimation @e[tag=blackflash_finisher_gojo2,c=1,scores={cutscene=419..},r=15] animation.gojo_blackflash_hit

execute as @s[scores={blackflashing=401..}] at @s run tp @s @s
execute as @s[scores={blackflashing=400}] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @s[scores={blackflashing=341..}] at @s run tp @e[tag=blackflash_finisher_gojo2,c=1,r=15] ^^^1 facing @s
execute as @s[scores={blackflashing=1..340}] at @s run tp @e[tag=blackflash_finisher_gojo2,c=1,r=15] ^^^0.75 facing @s
execute as @s[scores={blackflashing=1..}] at @s run tp @s ~~~

execute as @s[scores={blackflashing=420..}] at @s run playsound music.gojoblackflash @a[r=20] ~~~ 99999 1 99999
camera @s[scores={blackflashing=420..},type=player] fade time 0 0.2 0.25 color 0 0 0
camera @p[tag=blackflash_finisher_gojo2,scores={cutscene=420..},r=15] fade time 0 0.2 0.15 color 0 0 0

execute as @s[scores={blackflashing=3..}] at @s run tag @e[tag=blackflash_finisher_gojo2,tag=!blackflashcutscene,r=15] add blackflashcutscene
execute as @s[scores={blackflashing=3..}] at @s run tag @s[tag=blackflash_finisher_gojo,tag=!blackflashcutscene] add blackflashcutscene

execute as @s[scores={blackflashing=1..2}] at @s run tag @e[tag=blackflashcutscene,c=1,r=15,tag=blackflash_finisher_gojo2] remove blackflash_finisher_gojo2
tag @s[scores={blackflashing=1..2},tag=blackflash_finisher_gojo] remove blackflash_finisher_gojo
execute as @s[scores={blackflashing=1..2}] at @s run tag @e[tag=blackflashcutscene,c=2,r=15,tag=blackflashcutscene] remove blackflashcutscene

scoreboard players set @e[r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] infinity 10


execute as @s[scores={blackflashing=420}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^1 ^2 rot ~15 ~180
execute as @s[scores={blackflashing=410}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^1 ^2 rot ~35 ~180
execute as @s[scores={blackflashing=380}] at @s anchored eyes run camerashake add @a[r=20] 4 0.35
execute as @s[scores={blackflashing=410}] at @s anchored eyes run playsound mob.red1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={blackflashing=380}] at @s anchored eyes run playsound mob.shock1 @a[r=100] ~~~ 99999 1.6 99999


execute as @s[scores={blackflashing=380}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^3 ^-0.65 ^7 rot ~-15 ~155

execute as @s[scores={blackflashing=379}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:red_ex6 ~~1~
execute as @s[scores={blackflashing=379}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={blackflashing=379}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:impact ~~1~

execute as @s[scores={blackflashing=380}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^3 ^-0.65 ^7 rot ~-15 ~155



execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:red_ex1 ~~1~
execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:red_ex1 ~~1~
execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:red_ex6 ~~1~
execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={blackflashing=340}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s run particle ds:impact ~~1~
execute as @s[scores={blackflashing=340}] at @s anchored eyes run camerashake add @a[r=20] 4 1
execute as @s[scores={blackflashing=340}] at @s anchored eyes run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={blackflashing=360}] at @s anchored eyes run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^2.5 ^1.5 rot ~15 ~180

execute as @s[scores={blackflashing=339}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^-3 ^-0.35 ^-3 rot ~-10 ~-25
execute as @s[scores={blackflashing=336..339}] at @s run particle ds:flashstep1 ^^^-1.5
execute as @s[scores={blackflashing=336..339}] at @s run particle ds:flashstep2 ^^^-1.5


execute as @s[scores={blackflashing=309}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=285}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=270}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=259}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=262}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=256}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=250}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=244}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=236}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=229}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=222}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=217}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^0.15 ^0.75 rot ~22 ~155
execute as @s[scores={blackflashing=213}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^0.11 ^ ^0.35 rot ~-25 ~155
execute as @s[scores={blackflashing=209}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^-0.3 ^-0.25 ^0.6 rot ~5 ~170
execute as @s[scores={blackflashing=185}] at @s anchored eyes run camera @a[r=20] fade time 0.25 0.5 0 color 255 255 255

execute as @s[scores={blackflashing=169}] at @s anchored eyes run camera @a[r=20] fade time 0 1 0.2 color 0 0 0

execute as @s[scores={blackflashing=182..}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 

execute as @s[scores={blackflashing=180}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=179}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=178}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=177}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=176}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=175}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=174}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=173}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=172}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=171}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=170}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=169}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=168}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=167}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=166}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=165}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=164}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=163}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=162}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=161}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=160}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=159}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=158}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=157}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=156}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=155}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=155}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=154}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=153}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=152}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=147..151}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=146}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=145}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=144}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=143}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=142}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 
execute as @s[scores={blackflashing=11..141}] at @s run title @a[tag=!impactframesoff,tag=blackflashcutscene,c=2,r=15] title 

execute as @s[scores={blackflashing=146..160}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^-1.5 ^2 ^-2 rot ~35 ~-25
execute as @s[scores={blackflashing=121}] at @s anchored eyes run camera @a[r=20] fade time 0.25 0.2 0.15 color 0 0 0

execute as @s[scores={blackflashing=115}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^1 ^-0.15 ^0.4 rot ~25 ~25

execute as @s[scores={blackflashing=91}] at @s anchored eyes run camera @a[r=20] fade time 0.25 0.2 0.15 color 0 0 0
execute as @s[scores={blackflashing=85}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^ ^3 ^ rot ~90 ~

execute as @s[scores={blackflashing=56}] at @s anchored eyes run camera @a[r=15] fade time 0.25 0.2 0.15 color 0 0 0
execute as @s[scores={blackflashing=1..50}] at @s anchored eyes run camera @a[tag=blackflashcutscene,c=2,r=15] set minecraft:free pos ^-1.5 ^2 ^-2 rot ~35 ~-25

execute as @s[scores={blackflashing=13}] at @s anchored eyes run camera @a[r=15] fade time 0.35 0.5 0.15 color 0 0 0

execute as @s[scores={blackflashing=98..100}] at @s run execute as @e[tag=blackflash_finisher_gojo2,c=1,r=15] at @s anchored eyes run particle ds:bleeding ^^^

execute as @s[scores={blackflashing=150}] at @s run camerashake add @a[r=20] 3 0.25
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:heavy_impact5 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:heavy_impact2 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:heavy_impact3 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash1 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash3 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash4 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash5 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash6 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash7 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash8 ^^-0.15^1
execute as @s[scores={blackflashing=145..150}] at @s anchored eyes run particle ds:black_flash9 ^^-0.15^1
execute as @s[scores={blackflashing=150}] at @s anchored eyes run particle ds:black_flash10 ^^-0.15^1

execute as @s[scores={blackflashing=147..150}] at @s anchored eyes run particle ds:blood0 ^^-0.15^1
execute as @s[scores={blackflashing=147..150}] at @s anchored eyes run particle ds:blood1 ^^-0.15^1
execute as @s[scores={blackflashing=147..150}] at @s anchored eyes run particle ds:blood2 ^^-0.15^1
execute as @s[scores={blackflashing=147..150}] at @s anchored eyes run particle ds:blood3 ^^-0.15^1

execute as @s[scores={blackflashing=416..417}] at @s anchored eyes run particle ds:flashstep1 ~~~
execute as @s[scores={blackflashing=416..417}] at @s anchored eyes run particle ds:flashstep2 ~~~

tag @s[scores={blackflashing=150},tag=!thezone] add thezone
scoreboard players set @s[scores={blackflashing=150}] thezone 200
scoreboard players set @s[scores={blackflashing=150},hasitem={item=ds:yuji_fists},tag=!sukuna,type=player] thezone 221
execute unless entity @s[tag=has_sukuna,tag=sukuna] run scoreboard players set @s[scores={blackflashing=150},family=yuji] thezone 221
execute as @s[scores={blackflashing=150}] at @s run scoreboard players random @s expadd 20 100
execute as @s[scores={blackflashing=150},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
tag @s[scores={blackflashing=150,blackflashlearn=0},tag=!nomusic] add nomusic
execute as @s[scores={blackflashing=150,blackflashlearn=0}] at @s run function blackflash_first
scoreboard players add @s[scores={blackflashing=150,blackflash_amount=0..},type=!player] blackflash_amount 1

execute as @s[scores={blackflashing=150},tag=yuji_awakened] at @s run scoreboard players add @e[tag=blackflash_finisher_gojo2,r=15,c=1] antiheal 250
execute as @s[scores={blackflashing=10..13}] at @s run scoreboard players set @e[tag=blackflash_finisher_gojo2,r=15,c=1] dying 100

tag @s[scores={blackflashing=1..5},tag=blackflash1] remove blackflash1
tag @s[scores={blackflashing=1..5},tag=blackflash2] remove blackflash2
tag @s[scores={blackflashing=1..5},tag=blackflash3] remove blackflash3
tag @s[scores={blackflashing=1..5},tag=blackflash4] remove blackflash4

execute as @s[scores={blackflashing=1..12}] at @s run function end_blackflash
scoreboard players set @s[scores={blackflashing=0..12}] blackflashing 0
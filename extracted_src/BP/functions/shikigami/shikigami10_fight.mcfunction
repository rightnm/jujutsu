playanimation @s[scores={move=705}] animation.mahoraga_summon

execute as @s[scores={move=660..}] at @s run effect @a[r=66] darkness 2 1 true
execute as @s[scores={move=700}] at @s run camerashake add @a[r=33] 4 0.1
execute as @s[scores={move=704..}] at @s run playsound music.mahoragasummon @a[r=33] ~ ~ ~ 1000000 1 1000000

scoreboard players set @s[scores={move=3..}] Frames 6
scoreboard players set @s[scores={move=3..},type=player] infinity 6
scoreboard players set @s[scores={move=3..},type=player] Move 6
scoreboard players set @s[scores={move=3..},type=player] Camera 6
execute as @s[scores={move=1..700},type=player] at @s run scoreboard players set @e[type=!item,r=33,rm=1] Stun 10
execute as @s[scores={move=1..700},type=player] at @s run scoreboard players set @e[type=!item,r=33,rm=1] Camera 6


execute as @s[scores={move=1..700}] at @s run execute as @e[type=!player,rm=2,r=33] at @s run tp @s ~~~


tag @s[scores={move=1..2}] remove form10

execute as @s[type=!player,scores={move=704..}] at @s run kill @e[family=shikigami,r=50]
execute as @s[type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=604..}] at @s run  tp @e[type=ds:haruta,c=1,r=50] ^2.5^^12 facing ~~~

execute as @s[scores={move=704..}] at @s run tp @s @s

execute as @s[scores={move=704..}] at @s run camera @a[r=33] fade time 0 0.25 0.25 color 0 0 0

execute as @s[scores={move=61..705}] at @s run particle ds:cutscene_black2
execute as @s[scores={move=61..705}] at @s run particle ds:cutscene_black4 ~~0.15~
 
execute as @s[scores={move=549}] at @s run camera @a[r=33] fade time 0.15 0.1 1 color 0 0 0
execute as @s[scores={move=547}] at @s run effect @a[r=66] darkness 3 1 true
execute as @s[scores={move=547}] at @s run camerashake add @a[r=33] 0.2 0.1
execute as @s[scores={move=500..547}] at @s run particle ds:shadowy_area
execute as @s[scores={move=500..547}] at @s run particle ds:shadowy_area2

execute as @s[scores={move=703}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^ ^6 rot ~ ~180
execute as @s[scores={move=701}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_sine pos ^ ^ ^2 rot ~ ~180

execute as @s[scores={move=638}] at @s run camera @a[r=33] fade time 0 0.25 0.2 color 0 0 0
execute as @s[scores={move=636}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^ ^17 rot ~ ~180
execute as @s[scores={move=634}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 5 in_sine pos ^ ^ ^16.5 rot ~ ~180

execute as @s[scores={move=518}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 5 in_sine pos ^ ^ ^12 rot ~ ~180

execute as @s[scores={move=548}] at @s run summon ds:mahoraga_ritual1 ~~30~
execute as @s[scores={move=532..548}] at @s run playanimation @e[type=!item,type=ds:mahoraga_ritual1,c=1,r=33] animation.mahoraga_ritual1
execute as @s[scores={move=412..548}] at @s run scoreboard players set @e[type=!item,type=ds:mahoraga_ritual1,c=1,r=33] Deleter 11
execute as @s[scores={move=60..546}] at @s run tp @e[type=!item,type=ds:mahoraga_ritual1,c=1,r=33] ^^^0.5 facing ^^^30

execute as @s[scores={move=408}] at @s run summon ds:mahoraga_ritual2 ^^^-2 facing ^^^30
execute as @s[scores={move=406..408}] at @s run playanimation @e[type=!item,type=ds:mahoraga_ritual2,c=1,r=33] animation.mahoraga.summon
execute as @s[scores={move=54..408}] at @s run scoreboard players set @e[type=!item,type=ds:mahoraga_ritual2,c=1,r=33] Deleter 270

execute as @s[scores={move=60..407}] at @s run tp @e[type=!item,type=ds:mahoraga_ritual2,c=1,r=33] ^^^-2 facing ^^^30
execute as @s[scores={move=409}] at @s run camera @a[r=33] fade time 0 0.22 0 color 0 0 0

execute as @s[scores={move=406}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 5.8 in_sine pos ^-2 ^ ^8 rot ~-5 ~190

execute as @s[scores={move=300}] at @s run camera @a[r=33] fade time 0.5 0.2 0.15 color 0 0 0
execute as @s[scores={move=290}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^7 ^-2 rot ~90 ~
execute as @s[scores={move=288}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 4.5 in_sine pos ^ ^4.5 ^-2 rot ~90 ~180
execute as @s[scores={move=205}] at @s run camera @a[r=33] fade time 0.35 0.22 0 color 0 0 0

execute as @s[scores={move=197}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^-0.4 ^1.25 rot ~5 ~180
execute as @s[scores={move=195}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 4.5 in_sine pos ^ ^-0.05 ^1.15 rot ~5 ~180

execute as @s[scores={move=400..410}] at @s run tp @e[type=!item,type=ds:mahoraga_ritual1,c=1,r=33] ~~-20~



playanimation @s[scores={sukunacutscene=1000..}] animation.sukuna_finger.awaken

scoreboard players set sukunauser Mode 1

tag @s[scores={sukunacutscene=990..}] remove finger_rejected
tag @s[scores={sukunacutscene=1..}] remove finger_eaten

execute as @e[type=!player,r=50] at @s run tp @s ~~~
effect @a[r=8] weakness 1 10 true

scoreboard players set @s Move 116
scoreboard players set @s infinity 116
scoreboard players set @s Frames 116
scoreboard players set @s Camera 116
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]
 
execute as @s[scores={sukunacutscene=1000..}] at @s run tp @s @s
execute as @s[scores={sukunacutscene=1000}] at @s run playsound mob.sukunaawaken1 @a[r=100] ~~~ 999999 1 99999
execute as @s[scores={sukunacutscene=699}] at @s run execute as @a[r=25] at @s run playsound music.ryomensukuna @s ~~~ 0.08 1

tag @s[scores={sukunacutscene=1..2}] remove sukuna_awakening


playanimation @s[scores={sukunacutscene=570..571}] animation.sukuna_finger.awaken2
execute as @s[scores={sukunacutscene=570}] at @s run playsound mob.sukunaawaken2 @a[r=100] ~~~ 999999 1 99999

effect @s[scores={sukunacutscene=920}] darkness 4 1 true
execute as @s[scores={sukunacutscene=900}] at @s run playsound mob.heartbeat @a[r=30] ~~~ 9999 0.8 9999
event entity @s[scores={sukunacutscene=900}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=899}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=898}] sukuna_markings_red
event entity @s[scores={sukunacutscene=866}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=864}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=860..863}] sukuna_markings

execute as @s[scores={sukunacutscene=661..675}] at @s run titleraw @a[r=25] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oAh, I knew it!"}]}
execute as @s[scores={sukunacutscene=590..630}] at @s run titleraw @a[r=25]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oThe light feels best in the flesh!"}]}

execute as @s[scores={sukunacutscene=550..565}] at @s run titleraw @a[r=25]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oA Cursed spirit's flesh is so boring..."}]}
execute as @s[scores={sukunacutscene=500..520}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oWhere are the people!? The Women!?"}]}

execute as @s[scores={sukunacutscene=420..460}]  at @s run titleraw @a[r=25] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oWhat a wonderful era to be in."}]}

execute as @s[scores={sukunacutscene=330..400}]  at @s run titleraw @a[r=25] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oWomen and children are crawling everywhere like maggots..."}]}

execute as @s[scores={sukunacutscene=290..320}]  at @s run titleraw @a[r=25] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oMarvelous!"}]}

execute as @s[scores={sukunacutscene=270..280}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oIt'll be a massacre!"}]}

execute as  @s[scores={sukunacutscene=135..140}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§lWhat do you think you're doing with my body!?"}]}
execute as  @s[scores={sukunacutscene=110..122}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§lGive it back."}]}

execute as @s[scores={sukunacutscene=89..100}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oHow are you able to move?"}]}

execute as  @s[scores={sukunacutscene=55..62}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§lI mean, it's my body."}]}

execute as @s[scores={sukunacutscene=10..20}] at @s run titleraw @a[r=25]  title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§oI'm.... being suppressed???"}]}


execute as @s[scores={sukunacutscene=1000..}] at @s anchored eyes run camera @s set minecraft:free pos ^4^-1.25^1 facing ^^^1.5
execute as @s[scores={sukunacutscene=999}] at @s anchored eyes run camera @s set minecraft:free ease 3.9 in_sine pos ^4^-1.25^1 facing ^^^-0.5
camera @s[scores={sukunacutscene=932}] fade time 0.5 0.6 0.45 color 0 0 0

execute as @s[scores={sukunacutscene=920}] at @s anchored eyes run camera @s set minecraft:free pos ^-2.5^-1.25^4 facing ~~-1~
execute as @s[scores={sukunacutscene=919}] at @s anchored eyes run camera @s set minecraft:free ease 6.9 in_sine pos ^-2.5^-1.25^4 facing ~~0.25~ 

execute as @s[scores={sukunacutscene=780}] at @s anchored eyes run camera @s set minecraft:free pos ^0.65^0.15^0.65 facing ~~-0.25~
execute as @s[scores={sukunacutscene=779}] at @s anchored eyes run camera @s set minecraft:free ease 3.9 in_sine pos ^-0.15^0.45^ facing ^^-0.2^-0.35


execute as @s[scores={sukunacutscene=680}] at @s anchored eyes run camera @s set minecraft:free pos ^1^-1.25^-4 facing ^^0.5^0.5
execute as @s[scores={sukunacutscene=679}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^1^-1.25^-4 facing ^-0.15^0.55^0.65
execute as @s[scores={sukunacutscene=659}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^1^-1.25^-4 facing ^0.1^0.45^0.45
execute as @s[scores={sukunacutscene=639}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^1^-1.25^-4 facing ^-0.1^0.4^0.5
execute as @s[scores={sukunacutscene=619}] at @s anchored eyes run camera @s set minecraft:free ease 2.5 in_sine pos ^1^-1.25^-4 facing ^^0.5^0.5
camera @s[scores={sukunacutscene=580}] fade time 0.4 0.7 0.25 color 0 0 0

execute as @s[scores={sukunacutscene=560}] at @s anchored eyes run camera @s set minecraft:free pos ^1.5^-0.75^1.5 facing ^-0.15^^-0.25
execute as @s[scores={sukunacutscene=559}] at @s anchored eyes run camera @s set minecraft:free ease 2.9 in_sine pos ^1^-0.25^1 facing ^-0.15^^-0.25

execute as @s[scores={sukunacutscene=470}] at @s anchored eyes run camera @s set minecraft:free pos ^-0.4^-1^0.6 facing ^^-1.5^-0.25

execute as @s[scores={sukunacutscene=350..440}] at @s run tp @s @s
execute as @s[scores={sukunacutscene=350..440}] at @s anchored eyes run camera @s set minecraft:free pos ^-1^-0.75^ facing ^^-0.75^
execute as @s[scores={sukunacutscene=350..440}] at @s run tp @s ^^^0.02 

execute as @s[scores={sukunacutscene=349}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^^-0.75^2 facing ^^^
execute as @s[scores={sukunacutscene=328}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^^-0.25^1.5 facing ^^^

execute as @s[scores={sukunacutscene=280}] at @s anchored eyes run camera @s set minecraft:free ease 0.45 in_out_circ pos ^^^1 facing ^^^
execute as @s[scores={sukunacutscene=268}] at @s anchored eyes run camera @s set minecraft:free ease 2 in_sine pos ^^^2.5 facing ^^^

execute as @s[scores={sukunacutscene=210}] at @s anchored eyes run camera @s set minecraft:free ease 0.25 in_sine pos ^^^1.25 facing ^^^
execute as @s[scores={sukunacutscene=204}] at @s anchored eyes run camera @s set minecraft:free ease 0.35 in_sine pos ^^^1.35 facing ^^^


execute as @s[scores={sukunacutscene=155..165}] at @s run tp @s @s
execute as @s[scores={sukunacutscene=155..165}] at @s anchored eyes run camera @s set minecraft:free pos ^-8^6^4 facing ^^-0.5^-0.5
execute as @s[scores={sukunacutscene=155..165}] at @s run tp @s ^^^-0.09
execute as @s[scores={sukunacutscene=151..154}] at @s run tp @s ^^^-0.05

execute as @s[scores={sukunacutscene=105}] at @s run playsound mob.sukunaawaken3 @a[r=100] ~~~ 999999 1 99999

execute as @s[scores={sukunacutscene=140}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.5^^0.15 facing  ^^^0.15

execute as @s[scores={sukunacutscene=100}] at @s anchored eyes run camera @s set minecraft:free pos ^1.5^^0.15 facing  ^^^0.15

execute as @s[scores={sukunacutscene=62}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.5^^0.15 facing ^^^0.15

execute as @s[scores={sukunacutscene=20}] at @s anchored eyes run camera @s set minecraft:free pos ^1.5^^0.15 facing ^^^0.15

camera @s[scores={sukunacutscene=22}] fade time 1.75 2.5 1 color 0 0 0
execute as @s[scores={sukunacutscene=20}] at @s run playsound mob.heartbeat @a[r=30] ~~~ 9999 0.7 9999
effect @s[scores={sukunacutscene=22}] darkness 5 1 true

tag @s[tag=!sukuna,tag=!has_sukuna] add has_sukuna
execute as @s[scores={sukunacutscene=1000}] at @s run scoreboard objectives add fingers dummy
execute as @s[scores={sukunacutscene=1000}] at @s run scoreboard players set @s fingers 1

scoreboard players set @s[scores={sukunacutscene=1..20}] sukunaCD 0

scoreboard players add @s[scores={sukunacutscene=25}] EnergyCap 1000

give @s[scores={sukunacutscene=10}] ds:sukuna_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

event entity @s[scores={sukunacutscene=24}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=22}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=20}] sukuna_markings_red
event entity @s[scores={sukunacutscene=18}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=9}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=1..7}] sukunatextureoff





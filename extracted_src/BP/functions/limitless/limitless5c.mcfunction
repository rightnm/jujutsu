

playanimation @s[tag=form5c,tag=limitless,scores={move=320..}] animation.200_purple
execute as @s[tag=form5c,tag=limitless,scores={move=320}] at @s run playsound music.200hollow2 @s ~~~ 1000 1 1000
execute as @s[tag=form5c,tag=limitless,scores={move=320}] at @s run playsound mob.200hollow @a[rm=0.5] ~~~ 1000 1 1000

tag @e[type=!item,type=!item,scores={move=1..2},tag=form5c,tag=limitless] remove form5c

execute as @s[scores={move=171..,Stun=1..}] at @s run function cancel_attack


scoreboard players add @s[tag=form5c,tag=limitless,scores={move=320..}] infinity 320
scoreboard players add @s[tag=form5c,tag=limitless,scores={move=1..}] infinity 1
scoreboard players set @s[tag=form5c,tag=limitless,scores={move=1..320}] ProjImmune 50
scoreboard players set @s[tag=form5c,tag=limitless,scores={move=1..}] Camera 4
scoreboard players set @s[tag=form5c,tag=limitless,scores={move=1..}] Move 4

execute as @s[tag=form5c,tag=limitless,scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:knockback,r=15]
execute as @s[tag=form5c,tag=limitless,scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:running,r=8]
execute as @s[tag=form5c,tag=limitless,scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:lapse_explode,r=15]
execute as @s[tag=form5c,tag=limitless,scores={move=1..}] at @s run kill @e[type=!item,type=!item,type=ds:red_reversal,r=25]
execute as @s[tag=form5c,tag=limitless,scores={move=320..}] at @s run tp @s @s


execute as @s[scores={move=1..}] at @s run scriptevent ds:antiair

execute as @s[tag=form5c,tag=limitless,scores={move=320}] at @s run camera @s fade time 0.2 0.2 0.3 color 255 255 255
execute as @s[tag=form5c,tag=limitless,scores={move=316}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^15 ^25 rot ~35 ~180
execute as @s[tag=form5c,tag=limitless,scores={move=314}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^ ^ ^3.5 rot ~ ~180

execute as @s[tag=form5c,tag=limitless,scores={move=291}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^ ^10 ^-13.5 rot ~54 ~
execute as @s[tag=form5c,tag=limitless,scores={move=250}] at @s anchored eyes run camera @s set minecraft:free pos ^25 ^20 ^28.5 rot ~44 ~130
execute as @s[tag=form5c,tag=limitless,scores={move=249}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^-7 ^10 ^-13.5 rot ~34 ~-37
execute as @s[tag=form5c,tag=limitless,scores={move=238}] at @s anchored eyes run camera @s set minecraft:free ease 0.75 in_out_circ pos ^ ^ ^3.5 rot ~ ~180

execute as @s[tag=form5c,tag=limitless,scores={move=130}] at @s anchored eyes run camera @s fade time 0.3 0.2 0.3 color 255 25 255
execute as @s[tag=form5c,tag=limitless,scores={move=125}] at @s anchored eyes run camera @s set minecraft:free pos ^25 ^20 ^-12.5 rot ~24 ~32
execute as @s[tag=form5c,tag=limitless,scores={move=45}] at @s anchored eyes run camera @s set minecraft:free ease 2.4 in_out_circ pos ^19 ^20 ^-12.5 rot ~14 ~5

execute as @s[tag=form5c,tag=limitless,scores={move=255..275}] at @s run particle ds:cutscene_black1 ~ 310 ~
execute as @s[tag=form5c,tag=limitless,scores={move=281}] at @s run camera @s fade time 0.2 0.2 0.1 color 0 0 0
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=258}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=257}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=256}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=255}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=253}] title §l
execute as @s[tag=form5c,tag=limitless,scores={move=260}] at @s run camera @s fade time 0 0.3 1 color 255 20 255
execute as @s[tag=form5c,tag=limitless,scores={move=251}] at @s run camera @s clear
execute as @s[tag=form5c,tag=limitless,scores={move=277}] at @s run camera @s set minecraft:free pos ~ 310 ~ rot ~ ~174

execute as @e[type=!item,type=!item,name=HBlue2] at @s run tp @s ~~~ facing @e[type=!item,type=!item,name=HBlueRedTRG2,c=1]
execute as @e[type=!item,type=!item,name=HRed2] at @s run tp @s ~~~ facing @e[type=!item,type=!item,name=HBlueRedTRG2,c=1]
execute as @e[type=!item,type=!item,name=HRed2,scores={Deleter=0..120}] at @s run particle ds:hollow_red5 ^0.25 ^ ^-0.15
execute as @e[type=!item,type=!item,name=HBlue2,scores={Deleter=0..120}] at @s run particle ds:hollow_blue5 ^0.25 ^ ^-0.15
playanimation @e[type=!item,type=!item,name=HBlue2] animation.hollow_blue
playanimation @e[type=!item,type=!item,name=HRed2] animation.hollow_red
execute as @e[type=!item,type=!item,name=HBlueRedTRG2] at @s if entity @e[type=!item,type=!item,name=HRed2,r=0.6] if entity @e[type=!item,type=!item,name=HBlue2,r=0.6] run particle ds:hollow_colliding ~~~
execute as @e[type=!item,type=!item,name=HBlueRedTRG2] at @s if entity @e[type=!item,type=!item,name=HRed2,r=0.6] if entity @e[type=!item,type=!item,name=HBlue2,r=0.6] run particle ds:hollow_colliding ~~~
execute as @e[type=!item,type=!item,name=HBlueRedTRG2] at @s if entity @e[type=!item,type=!item,name=HRed2,r=0.85] if entity @e[type=!item,type=!item,name=HBlue2,r=0.85] run particle ds:hollow_colliding2 ~~~
execute as @e[type=!item,type=!item,name=HBlueRedTRG2] at @s if entity @e[type=!item,type=!item,name=HRed2,r=0.8] if entity @e[type=!item,type=!item,name=HBlue2,r=0.8] run particle ds:hollow_colliding3 ~~~


execute as @e[type=!item,type=!item,name=HBlueRedTRG2,scores={Deleter=1..15}] at @s run particle ds:hollow_colliding5 ^^^0.35
execute as @e[type=!item,type=!item,name=HBlueRedTRG2,scores={Deleter=1..15}] at @s run particle ds:hollow_colliding4^^^0.35
execute as @e[type=!item,type=!item,name=HBlueRedTRG2,scores={Deleter=1..15}] at @s run particle ds:hollow_absorb ^^^0.35

execute as @e[type=!item,type=!item,name=HBlue2] at @s run tp @s ~ 310 ~
execute as @e[type=!item,type=!item,name=HRed2] at @s run tp @s ~ 310 ~
execute as @e[type=!item,type=!item,name=HBlueRedTRG2] at @s run tp @s ~ 310 ~

execute as @s[tag=form5c,tag=limitless,scores={move=295}] at @s run summon ds:projectile HBlue2 ^2 ^ ^-3.5
execute as @s[tag=form5c,tag=limitless,scores={move=276..295}] at @s run scoreboard players set @e[type=!item,type=!item,name=HBlue2,c=1] Deleter 39

execute as @s[tag=form5c,tag=limitless,scores={move=295}] at @s run summon ds:projectile HRed2 ^-2.675^ ^-4
execute as @s[tag=form5c,tag=limitless,scores={move=276..295}] at @s run scoreboard players set @e[type=!item,type=!item,name=HRed2,c=1] Deleter 39

execute as @s[tag=form5c,tag=limitless,scores={move=295}] at @s run summon ds:projectile HBlueRedTRG2 ^^^-4.5
execute as @s[tag=form5c,tag=limitless,scores={move=267..295}] at @s run scoreboard players set @e[type=!item,type=!item,name=HBlueRedTRG2,c=1] Deleter 19


execute as @e[type=!item,type=!item,name=HRed2,c=1,scores={Deleter=1..33}] at @s run tp @s ^^^0.171 facing @e[type=!item,type=!item,name=HBlueRedTRG2,c=1]
execute as @e[type=!item,type=!item,name=HBlue2,c=1,scores={Deleter=1..33}] at @s run tp @s ^^^0.171 facing @e[type=!item,type=!item,name=HBlueRedTRG2,c=1]

title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=295}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=294}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=293}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=292}] title §r§l
execute as @s[tag=form5c,tag=limitless,scores={move=297}] at @s run particle ds:200purple_shockwave1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=90..215}] at @s run particle ds:200purple_floor ~~0.02~
execute as @s[tag=form5c,tag=limitless,scores={move=90..175}] at @s run particle ds:200purple_floor2 ~~0.02~
execute as @s[tag=form5c,tag=limitless,scores={move=287}] at @s run particle ds:200purple_shockwave1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=247}] at @s run particle ds:200purple_shockwave1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=207}] at @s run particle ds:200purple_shockwave1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170}] at @s run particle ds:200purple_shockwave1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..295}] at @s run camerashake add @a[r=40] 0.15 0.1
execute as @s[tag=form5c,tag=limitless,scores={move=170..295}] at @s run particle ds:charging_rubble
execute as @s[tag=form5c,tag=limitless,scores={move=295}] at @s run particle ds:purplelightning_maximpact1
execute as @s[tag=form5c,tag=limitless,scores={move=165..170}] at @s run particle ds:purplelightning_redblue ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_blue_splash1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_blue_splash2 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_blue_splash3 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_blue_splash4 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_red_splash1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_red_splash2 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_red_splash3 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=169..170}] at @s run particle ds:200_red_splash4 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..225}] at @s run particle ds:200purple_starsarea ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=214..220}] at @s run particle ds:200purple_stars1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=290..295}] at @s run particle ds:purplelightning_maximum1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..295}] at @s run particle ds:purplelightning_maximum2 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..215}] at @s run particle ds:purplelightning_maximum1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..215}] at @s run particle ds:200purple_shockwave2 ~~0.05~
execute as @s[tag=form5c,tag=limitless,scores={move=170..215}] at @s run particle ds:200purple_shockwave3 ~~0.2~
execute as @s[tag=form5c,tag=limitless,scores={move=170..287}] at @s run particle ds:200purple_energy1 ~~1~
execute as @s[tag=form5c,tag=limitless,scores={move=170..287}] at @s run particle ds:200purple_energy2 ~~1~

execute as @s[tag=form5c,tag=limitless,scores={move=97}] at @s anchored eyes run camera @s clear
execute as @s[tag=form5c,tag=limitless,scores={move=95}] at @s run playsound music.hollow3 @a[r=160]
execute as @s[tag=form5c,tag=limitless,scores={move=93}] at @s anchored eyes run camera @s set minecraft:free pos ^25 ^20 ^-12.5 rot ~24 ~32

execute as @s[tag=form5c,tag=limitless,scores={move=300}] run tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §l§dɴɪɴᴇ ʀᴏᴘᴇꜱ"}]}
execute as @s[tag=form5c,tag=limitless,scores={move=278}] run  tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §l§dᴘᴏʟᴀʀɪᴢᴇᴅ ʟɪɢʜᴛ"}]}
execute as @s[tag=form5c,tag=limitless,scores={move=249}] run  tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §l§dᴄʀᴏᴡ ᴀɴᴅ ᴅᴇᴄʟᴀʀᴀᴛɪᴏɴ,"}]} 
execute as @s[tag=form5c,tag=limitless,scores={move=190}] run  tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §l§dʙᴇᴛᴡᴇᴇɴ ꜰʀᴏɴᴛ ᴀɴᴅ ʙᴀᴄᴋ."}]} 
execute as @s[tag=form5c,tag=limitless,scores={move=131}]  run tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §l§dʜᴏʟʟᴏᴡ ᴛᴇᴄʜɴɪQᴜᴇ:"}]} 
execute as  @s[tag=form5c,tag=limitless,scores={move=92}]  run tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §o§l§5ᴘᴜʀᴘʟᴇ"}]} 

title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=89}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=88}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=87}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=86}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=85}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=84}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=83}] title 
title @s[tag=!impactframesoff,tag=form5c,tag=limitless,scores={move=80..82}] title §r§l
execute as @s[tag=form5c,tag=limitless,scores={move=85}] at @s anchored eyes run camera @s fade time 0 0.65 2 color 255 245 255
execute as @s[tag=form5c,tag=limitless,scores={move=80..85}] at @s run camerashake add @a[r=200] 3 0.1


execute as @s[tag=form5c,tag=limitless,scores={move=120}] at @s run summon ds:projectile 200HollowP ^^^16
execute as @s[tag=form5c,tag=limitless,scores={move=85..120}] at @s run scoreboard players set @e[type=!item,type=!item,name=200HollowP,c=1] Deleter 255
execute as @s[tag=form5c,tag=limitless,scores={move=80..120}] at @s run tp @e[type=!item,type=!item,name=200HollowP,c=1] ^^^16 facing ^^^40

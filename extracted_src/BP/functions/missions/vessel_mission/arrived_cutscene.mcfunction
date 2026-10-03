execute unless entity @s[scores={Deleter=0..}] at @s run scoreboard players set @s Deleter 1021
#start
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={Evade=1..}] Evade 0
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={Stun=0..21}] Stun 30
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={cutscene=0..6}] cutscene 20
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={Move=0..6}] Move 20
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={Camera=0..6}] Camera 20
execute as @s[scores={Deleter=20..1021}] at @s run scoreboard players set @e[r=60,scores={infinity=4..}] infinity 0
execute as @s[scores={Deleter=20..1021}] at @s run effect @e[type=!player,r=60] slowness 1 15 true

#kill distractions
kill @e[family=purecurse,type=!ds:flyhead,type=!ds:flyhead2,type=!ds:flyhead3,type=!ds:flyhead4,r=60]
execute as @s[scores={Deleter=1..1007}] at @s run kill @e[family=purecurse,family=villain,type=!ds:toji_boss,r=60]

kill @e[family=q_clan,r=60]
scoreboard players set mobevent Mode 5

execute as @s[scores={Deleter=1002..1021}] at @s run camera @a[r=50] fade time 0 0.25 0.15 color 0 0 0

#tps
playanimation @s[scores={Deleter=801..1021}] animation.riko_amanai.resting
playanimation @s[scores={Deleter=1..800}] animation.riko_amanai.cowering
execute as @s[scores={Deleter=1..}] at @s run tp @s 5027 63 2053 facing 5033 63 2031

execute as @s[scores={Deleter=1002..1007}] at @s positioned 5033 63 2047 run tp @p[tag=special_mission_vessel,c=1] ~~~ facing ~~~-10
execute as @s[scores={Deleter=1000..1021}] at @s positioned 5033 63 2047 run playanimation @p[tag=special_mission_vessel,c=1] animation.riko_amanai.stage3_cutscene


#air-fall
execute as @s run tp @s ~~~~ 0

execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=1005..1021}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run scriptevent ds:knockback 2



#dialogue

execute as @s[scores={Deleter=970..1021}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > Are we there yet...? My legs are killing me!"}]}
execute as @s[scores={Deleter=990..1021}] at @s run camera @a[r=50] set minecraft:free pos 5023 75 2059 facing @p[tag=special_mission_vessel,c=1]
execute as @s[scores={Deleter=970..990}] at @s run camera @a[r=50] set minecraft:free ease 0.15 in_sine pos 5023 75 2059 facing @p[tag=special_mission_vessel,c=1]

execute as @s[scores={Deleter=900..969}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Yes, we're here."}]}


execute as @s[scores={Deleter=840..889}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Just through that entrance over there and we will be approaching Tengen."}]}
execute as @s[scores={Deleter=800..839}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8All right, let's go Riko. They're waiting for us insi-"}]}

execute as @s[scores={Deleter=760..799}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8..."}]}
execute as @s[scores={Deleter=720..759}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8And who might you be?"}]}

execute as @s[scores={Deleter=675..699}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§c< Toji > The Name's Fushiguro Toji"}]}
execute as @s[scores={Deleter=660..674}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Never heard of you!"}]}


execute as @s[scores={Deleter=620..640}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8He's fast.."}]}
execute as @s[scores={Deleter=580..619}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8And there's something... off about him. I'm not sensing *any* Cursed Energy from him at all."}]}
execute as @s[scores={Deleter=520..579}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8The only Cursed Energy I can sense is that cursed spirit on his shoulder, but where did it even come from?"}]}

execute as @s[scores={Deleter=470..519}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8You idiot, the bounty on Riko Amanai is already off!"}]}
execute as @s[scores={Deleter=470..519}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-1^1^1 facing ~~1.4~

execute as @s[scores={Deleter=420..469}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§c< Toji > I set that bounty myself, I just had to wear you out and strike when you lowered your guard."}]}
execute as @s[scores={Deleter=420..469}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-3^4^12 facing @e[type=ds:toji_cutscene,c=1]


execute as @s[scores={Deleter=390..419}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Riko, Get out of here fast!"}]}
execute as @s[scores={Deleter=400..419}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-1^1^1 facing ~~1.4~



execute as @s[scores={Deleter=340..389}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Hey big guy, Eyes on me!"}]}
execute as @s[scores={Deleter=340..399}] at @s positioned 5033 63 2047 run execute as @e[type=ds:toji_cutscene] at @s run camera @a[r=50] set minecraft:free pos ^1^1^1 facing ~~1.4~

execute as @s[scores={Deleter=290..339}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§c< Toji > Heh, sure, she wont get far anyways."}]}

execute as @s[scores={Deleter=200..289}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§8Neither will you."}]}
execute as @s[scores={Deleter=288..289}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^^1^4 facing ~~1.4~
execute as @s[scores={Deleter=287..288}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free ease 2.5 in_out_circ pos ^^1.25^2.5 facing ~~1.4~

execute as @s[scores={Deleter=270}] at @s  run camera @a[r=100] fade time 2.4 1.5 1 color 0 0 0
execute as @s[scores={Deleter=220}] at @s  run execute as @a[r=100] at @s run playsound music.toji @s ~~~ 0.6 1
execute as @s[scores={Deleter=210..220}] at @s positioned 5034 68 2014 unless entity @e[type=ds:toji_boss,r=10] run execute as @e[type=ds:toji_cutscene,c=1] at @s run summon ds:toji_boss ~~~ facing @p
execute as @s[scores={Deleter=210..220}] at @s positioned 5034 68 2014 as @e[type=ds:toji_cutscene,c=1] at @s run effect @e[type=ds:toji_boss,r=0.15,c=1] instant_health 1 0 true
execute as @s[scores={Deleter=210..220}] at @s positioned 5034 68 2014 at @e[type=ds:toji_cutscene,c=1] run damage @e[type=ds:toji_boss,r=0.15,c=1] 0 suicide entity @s
execute as @s[scores={Deleter=210..220}] at @s positioned 5034 68 2014 as @e[type=ds:toji_cutscene,c=1] at @s run effect @e[type=ds:toji_boss,r=0.15,c=1] instant_health 0 1 true
execute as @s[scores={Deleter=210..220}] at @s  run event entity @e[type=ds:toji_cutscene,c=1] ds:disappear
execute as @s[scores={Deleter=206}] at @s run titleraw @a[r=70] title {"rawtext":[{"text":"§e- Eliminate Toji Fushiguro."}]}


execute as @s[scores={Deleter=210..220}] at @s  run playanimation @e[r=100] animation.cancel

execute as @s[scores={Deleter=200..205}] at @s  run scoreboard players set @s Deleter 99999999
effect @s[scores={Deleter=2000..}] invisibility 1 1 true

execute as @s[scores={Deleter=969}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos 5024 ~0.25 2045 facing ~~1.3~
execute as @s[scores={Deleter=940..968}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free ease 0.15 in_sine pos 5024 ~0.25 2045 facing ~~1.3~
execute as @s[scores={Deleter=940..1021}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run scriptevent ds:knockback 0.1

execute as @s[scores={Deleter=935..940}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^0.5^1.25^2 facing ~~1.4~
execute as @s[scores={Deleter=799..800}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^0.5^1.6^0.85 facing ~~1.4~

execute as @s[scores={Deleter=639..640}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-1^1.4^-2 facing ^^1^7

execute as @s[scores={Deleter=600..601}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camera @a[r=50] set minecraft:free ease 5 in_sine pos ^-1^3^7 facing @e[type=ds:toji_cutscene,c=1]

execute as @s[scores={Deleter=800..810}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={Deleter=800..803}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s unless entity @e[type=ds:toji_cutscene,r=50] run summon ds:toji_cutscene ^-0.15^^-0.8  facing ~~~
execute as @s[scores={Deleter=800..803}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run playanimation @e[type=ds:toji_cutscene,c=1] animation.riko_amanai.toji_cutscene

execute as @s[scores={Deleter=670..810}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run tp @e[type=ds:toji_cutscene,c=1] ^-0.15^^-0.8 

execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run particle ds:blood_splat ~~~
execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run particle ds:blood ~~1~
execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run particle ds:blood_3 ~~1~
execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run playsound mob.sword @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run playsound mob.slice4 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={Deleter=798..799}] at @s positioned 5033 63 2047 run execute as @p[tag=special_mission_vessel,c=1] at @s run camerashake add @a[r=50] 2 0.15

execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run particle ds:flashstep1 ^^^-1
execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run particle ds:rubble3 ^^^-1
execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run particle ds:ground_slam1 ^^^-1
execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run particle ds:ground_slam2 ^^^-1
execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={Deleter=667..670}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={Deleter=667}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={Deleter=665}] at @s run execute as @e[type=ds:toji_cutscene,c=1] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.5 9999

execute as @s[scores={Deleter=639..663}] at @s positioned 5034 68 2014 run tp @e[type=ds:toji_cutscene,c=1] ~~~ facing ~~~10
execute as @s[scores={Deleter=639..663}] at @s positioned 5034 68 2014 run event entity @e[type=ds:toji_cutscene,c=1] inventory_curse_on




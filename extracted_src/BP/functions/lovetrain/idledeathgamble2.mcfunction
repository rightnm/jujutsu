

scoreboard players add @s[scores={domain=440..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1
scoreboard players set @s[scores={domain=1..}] ProjImmune 50

execute as @s[scores={domain=440}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=440}] at @s run kill @e[type=!item,type=ds:projectile,r=33]
execute as @s[scores={domain=1..440}] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=1..440}] at @s run scoreboard players set @e[type=!item,r=33] Move 10
execute as @s[scores={domain=1..440}] at @s run scoreboard players set @e[type=!item,r=33] Camera 10
execute as @s[scores={domain=440}] at @s run scoreboard players set @a[r=33,rm=0.2,scores={move=4..}] move 3
execute as @s[scores={domain=440}] at @s run playanimation @a[r=33,rm=0.2] animation.stunned
execute as @s[scores={domain=440}] at @s run tp @s @s
playanimation @s[scores={domain=440..}] animation.hakari_domain2

execute as @s[scores={domain=1..440}] at @s run execute as @e[r=48,rm=40] at @s run tp @s ^^^-4 facing @e[scores={domain=1..440},c=1]

execute as @s[scores={domain=390}] at @s run playsound music.deathgamble2 @a[r=33] ~~~ 0.25 1 10000
execute as @s[scores={domain=400}] at @s run playsound music.deathgamblesfx1 @a[r=33] ~~~ 0.25 1 10000
execute as @s[scores={domain=440}] at @s run playsound beacon.power @a[r=33] ~~~ 99999 0.35 99999

execute as @s[scores={domain=430,Energy=1..50}] at @s run scoreboard players add @s Energy 200
 
execute as @s[scores={domain=400..}] at @s run particle ds:deathgamble_white1 ~~~

execute as @s[scores={domain=178..390}] at @s run particle ds:domain_floor1 ~~0.1~
execute as @s[scores={domain=178..400}] at @s run particle ds:infinite_void_whitev2 ~~~
execute as @s[scores={domain=178..400}] at @s run particle ds:domain_barrierv2 ~~~


execute as @s[scores={domain=440}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.2 in_out_circ pos ^ ^-0.33 ^1.5 rot ~-15 ~180
execute as @s[scores={domain=415}] at @s anchored eyes run camera @a[r=33] fade time 0.25 0 0.1 color 0 0 0

execute as @s[scores={domain=409}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^1.95 ^1 rot ~-12 ~180
execute as @s[scores={domain=384..409}] at @s anchored eyes run particle ds:cutscene_black1 ~~3~
execute as @s[scores={domain=384..409}] at @s anchored eyes run particle ds:cutscene_black1 ~~3~
execute as @s[scores={domain=384..409}] at @s anchored eyes run particle ds:purple_energy1 ^^2.1^0.44
execute as @s[scores={domain=384..409}] at @s anchored eyes run particle ds:purple_energy2 ^^2.1^0.44
execute as @s[scores={domain=385}] at @s anchored eyes run camera @a[r=33] fade time 0 0.2 0.25 color 220 0 220

execute as @s[scores={domain=372}] at @s run summon ds:deathgamble ^^^-1 facing ^^^20 none "Idle Death Gamble"

execute as @s[scores={domain=383}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^-0.5 ^2 rot ~ ~180
execute as @s[scores={domain=381}] at @s run playsound mob.shock2 @a[r=33] ~~~ 99999 0.35 99999
execute as @s[scores={domain=383}] at @s run playsound mob.bass @a[r=33] ~~~ 99999 0.85 99999
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow1 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow2 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow3 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow1 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow2 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:doorcrash_rainbow3 ~~1~
execute as @s[scores={domain=380..384}] at @s run particle ds:pachinkostrike_rainbow1 ~~1~

execute as @s[scores={domain=375}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=374}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=373}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=372}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=371}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=370}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=369}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=368}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=367}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=366}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=365}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=364}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=363}] at @s run title @a[r=33,tag=!impactframesoff] title 
execute as @s[scores={domain=362}] at @s run title @a[r=33,tag=!impactframesoff] title §l
execute as @s[scores={domain=361}] at @s run camera @a[r=33] fade time 0 0.5 0.5 color 255 255 255

execute as @s[scores={domain=200..362}] at @s run title @a[r=33,tag=!impactframesoff] title 

execute as @s[scores={domain=276..385}] at @s run camerashake add @a[r=33] 0.15 0.1

execute as @s[scores={domain=350}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.25 in_out_circ pos ^ ^-0.5 ^10 rot ~-5 ~180
execute as @s[scores={domain=347}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.25 in_sine pos ^ ^-0.5 ^13 rot ~-5 ~180

execute as @s[scores={domain=287}] at @s anchored eyes run camera @a[r=33] fade time 0.5 0.25 0.25 color 0 0 0
execute as @s[scores={domain=276}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^6.95 ^3.5 rot ~-5 ~180
execute as @s[scores={domain=100..276}] at @s anchored eyes run particle ds:cutscene_black1 ~~7~
execute as @s[scores={domain=100..276}] at @s anchored eyes run particle ds:cutscene_black1 ~~7~

execute as @s[scores={domain=255..276}] at @s anchored eyes run particle ds:card_rolls1 ^-1.75 ^7 ^
execute as @s[scores={domain=255..276}] at @s anchored eyes run particle ds:card_rolls2 ^-1.75 ^7 ^
execute as @s[scores={domain=255..276}] at @s anchored eyes run particle ds:card_rolls3 ^-1.75 ^7 ^
execute as @s[scores={domain=239..276}] at @s anchored eyes run particle ds:card_rolls1 ^ ^7 ^
execute as @s[scores={domain=239..276}] at @s anchored eyes run particle ds:card_rolls2 ^ ^7^
execute as @s[scores={domain=239..276}] at @s anchored eyes run particle ds:card_rolls3 ^ ^7 ^
execute as @s[scores={domain=225..276}] at @s anchored eyes run particle ds:card_rolls1 ^1.75 ^7 ^
execute as @s[scores={domain=225..276}] at @s anchored eyes run particle ds:card_rolls2 ^1.75 ^7 ^
execute as @s[scores={domain=225..276}] at @s anchored eyes run particle ds:card_rolls3 ^1.75 ^7 ^

execute as @s[scores={domain=265}] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={domain=263..265},tag=jackpotrig] at @s run scoreboard players random @s chance 99 100
scoreboard players operation @s[scores={domain=263}] chance += @s fever
scoreboard players set @s[scores={domain=263,chance=101..}] chance 100



execute as @s[scores={domain=248..251}] at @s run camerashake add @a[r=44] 3 0.15
execute as @s[scores={domain=248..251}] at @s anchored eyes run particle ds:slots_rolled1 ^-1.75 ^7 ^
execute as @s[scores={domain=248..251}] at @s anchored eyes run particle ds:slots_rolled2 ^-1.75 ^7 ^
execute as @s[scores={domain=248..251}] at @s anchored eyes run particle ds:slots_rolled3 ^-1.75 ^7 ^
execute as @s[scores={domain=248..251}] at @s anchored eyes run particle ds:slots_rolled4 ^-1.75 ^7 ^

execute as @s[scores={domain=1..248,chance=1..35}] at @s anchored eyes run particle ds:slot1 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=36..55}] at @s anchored eyes run particle ds:slot2 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=56..70}] at @s anchored eyes run particle ds:slot3 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=71..80}] at @s anchored eyes run particle ds:slot4 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=81..87}] at @s anchored eyes run particle ds:slot5 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=88..92}] at @s anchored eyes run particle ds:slot6 ^-1.75 ^7 ^-0.15
execute as @s[scores={domain=1..248,chance=93..}] at @s anchored eyes run particle ds:slot7 ^-1.75 ^7 ^-0.15

execute as @s[scores={domain=235..238}] at @s run camerashake add @a[r=44] 3.75 0.2
execute as @s[scores={domain=235..238}] at @s anchored eyes run particle ds:slots_rolled1 ^ ^7 ^
execute as @s[scores={domain=235..238}] at @s anchored eyes run particle ds:slots_rolled2 ^ ^7 ^
execute as @s[scores={domain=235..238}] at @s anchored eyes run particle ds:slots_rolled3 ^ ^7 ^
execute as @s[scores={domain=235..238}] at @s anchored eyes run particle ds:slots_rolled4 ^ ^7 ^

execute as @s[scores={domain=1..235,chance=1..35}] at @s anchored eyes run particle ds:slot1 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=36..55}] at @s anchored eyes run particle ds:slot2 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=56..70}] at @s anchored eyes run particle ds:slot3 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=71..80}] at @s anchored eyes run particle ds:slot4 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=81..87}] at @s anchored eyes run particle ds:slot5 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=88..92}] at @s anchored eyes run particle ds:slot6 ^ ^7 ^-0.15
execute as @s[scores={domain=1..235,chance=93..}] at @s anchored eyes run particle ds:slot7 ^ ^7 ^-0.15

execute as @s[scores={domain=218..221}] at @s run camerashake add @a[r=44] 4 0.25
execute as @s[scores={domain=218..221}] at @s anchored eyes run particle ds:slots_rolled1 ^1.75 ^7 ^
execute as @s[scores={domain=218..221}] at @s anchored eyes run particle ds:slots_rolled2 ^1.75 ^7 ^
execute as @s[scores={domain=218..221}] at @s anchored eyes run particle ds:slots_rolled3 ^1.75 ^7 ^
execute as @s[scores={domain=218..221}] at @s anchored eyes run particle ds:slots_rolled4 ^1.75 ^7 ^

execute as @s[scores={domain=1..218,chance=1..35}] at @s anchored eyes run particle ds:slot1 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=36..55}] at @s anchored eyes run particle ds:slot2 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=56..70}] at @s anchored eyes run particle ds:slot3 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=71..80}] at @s anchored eyes run particle ds:slot4 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=81..87}] at @s anchored eyes run particle ds:slot5 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=88..92}] at @s anchored eyes run particle ds:slot6 ^1.75 ^7 ^-0.15
execute as @s[scores={domain=1..218,chance=93..}] at @s anchored eyes run particle ds:slot7 ^1.75 ^7 ^-0.15


execute as @s[scores={domain=218,chance=88..}] at @s run playsound music.jackpot @a[r=33]
execute as @s[scores={domain=200}] at @s run playsound music.deathgambleend @a[r=33] 
execute as @s[scores={domain=202..215,chance=88..}] at @s run camerashake add @a[r=33] 0.0075 0.08 rotational
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled1 ^1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled2 ^1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled3 ^1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled4 ^1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled1 ^ ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled2 ^ ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled3 ^ ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled4 ^ ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled1 ^-1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled2 ^-1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled3 ^-1.75 ^7 ^
execute as @s[scores={domain=208..215,chance=88..}] at @s anchored eyes run particle ds:slots_rolled4 ^-1.75 ^7 ^
execute as @s[scores={domain=207..211,chance=88..}] at @s anchored eyes run particle ds:doorcrash_rainbow1 ^ ^7 ^
execute as @s[scores={domain=207..211,chance=88..}] at @s anchored eyes run particle ds:doorcrash_rainbow2 ^ ^7 ^ 
execute as @s[scores={domain=207..211,chance=88..}] at @s anchored eyes run particle ds:doorcrash_rainbow3 ^ ^7 ^
execute as @s[scores={domain=207..211,chance=88..}] at @s anchored eyes run particle ds:pachinkostrike_rainbow1 ^ ^7 ^

execute as @s[scores={domain=145..170}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^ ^3 rot ~-5 ~180
execute as @s[scores={domain=178}] at @s run camera @a[r=55] fade time 0.35 1.5 1 color 255 255 255
execute as @s[scores={domain=175}] at @s run playsound music.domainbreak @a[r=55]
execute as @s[scores={domain=166..170}] at @s run title @a[tag=!impactframesoff,r=55] title 
execute as @s[scores={domain=150}] at @s run title @a[tag=!impactframesoff,r=55] title §l
execute as @s[scores={domain=145..150}] at @s run particle ds:domain_smash1 ~~5~
execute as @s[scores={domain=145..150}] at @s run particle ds:domain_smash2 ~~5~
execute as @s[scores={domain=145..150}] at @s run particle ds:domain_smash3 ~~5~
execute as @s[scores={domain=145..160}] at @s run tp @e[type=ds:deathgamble,r=33] ~~-80~

tag @s[scores={domain=5..145,chance=88..}] add hakaridance
scoreboard players set @s[scores={domain=5..145,chance=88..}] cutscene 431


scoreboard players set @s[scores={domain=5..145}] fever 0
scoreboard players set @s[scores={domain=5..145}] domain 4

execute as @s[scores={domain=155..372}] at @s run  scoreboard players set @e[type=ds:deathgamble,c=1] Deleter 25


tag @s[scores={domain=1..410}] remove form5
tag @s[scores={domain=1..410}] remove form5b
execute as @s[scores={domain=410..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0




execute as @s[scores={domain=1..5}] at @s anchored eyes run camera @a[r=33] clear



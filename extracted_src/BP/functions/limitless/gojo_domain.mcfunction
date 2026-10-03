execute as @s[scores={domain=1..},tag=limitless] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 UnlimitedVoid

tag @s[scores={domain=1..750}] remove form6
execute as @s[scores={domain=750..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0

execute as @s[scores={domain=760},tag=limitless] at @s run stopsound @a[r=33]
execute as @s[scores={domain=760},tag=limitless] at @s run kill @e[type=ds:projectile,r=33]
execute as @s[scores={domain=1..},tag=limitless] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 36
execute as @s[scores={domain=760},tag=limitless] at @s run scoreboard players set @a[r=33,rm=0.2,scores={move=4..}] move 3
execute as @s[scores={domain=760},tag=limitless] at @s run playanimation @a[r=33,rm=0.2] animation.stunned
execute as @s[scores={domain=760},tag=limitless] at @s run tp @s @s
playanimation @s[scores={domain=760..},tag=limitless] animation.infinite_void2
execute as @s[scores={domain=750,Energy=1..50},tag=limitless] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=740},tag=limitless] at @s run playsound music.infinitevoid2 @a[r=33] ~~~ 100000 1 10000

scoreboard players add @s[scores={domain=760..},tag=limitless] infinity 15
scoreboard players add @s[scores={domain=1..},tag=limitless] infinity 1
scoreboard players set @s[scores={domain=1..},tag=limitless] ProjImmune 50

execute as @s[scores={domain=1..},tag=limitless] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=limitless] remove form6
tag @s[scores={domain=1..5},tag=limitless] remove domainlayout
scoreboard players set @s[scores={domain=1..},tag=limitless] Camera 4

execute as @s[scores={domain=760},tag=limitless] at @s run camera @a[r=33] fade time 0.25 0.5 0.5 color 0 0 0

execute as @s[scores={domain=760},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 5 in_out_circ pos ^0.11 ^-0.18 ^0.85 rot ~-21 ~180

execute as @s[scores={domain=625},tag=limitless] at @s run camera @a[r=33] fade time 2.75 1.15 0.1 color 255 255 255
execute as @s[scores={domain=600..625},tag=limitless] at @s run particle ds:infinite_void_whitev1 ~~~
execute as @s[scores={domain=600..625},tag=limitless] at @s run particle ds:infinite_void_whitev1 ~~~
execute as @s[scores={domain=570..600},tag=limitless] at @s run particle ds:infinite_void_whitev2 ~~~


execute as @s[scores={domain=550},tag=limitless] at @s run summon ds:projectile UnlimitedBarrier ~~~
execute as @s[scores={domain=550},tag=limitless] at @s run scoreboard players set @e[name=UnlimitedBarrier] Deleter 550
execute as @s[scores={domain=550},tag=limitless] at @s run scoreboard players set @e[name=UnlimitedBarrier] Energy 35

execute as @s[scores={domain=561},tag=limitless] at @s run summon ds:projectile UnlimitedVoidStart ~ 298.85 ~-0
execute as @s[scores={domain=560..561},tag=limitless] at @s run scoreboard players set @e[name=UnlimitedVoidStart,c=1] Deleter 561
execute as @e[name=UnlimitedVoidStart] at @s run function limitless/unlimited_start
execute as @s[scores={domain=560},tag=limitless] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=560},tag=limitless] at @s positioned ~ ~ ~-0 run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air


execute as @s[scores={domain=500..548},tag=limitless] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=500..548},tag=limitless] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=550},tag=limitless] at @s run execute as @e[r=47,name=!UnlimitedBarrier,name=!UnlimitedVoidStart,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=540..548},tag=limitless] at @s run execute as @e[r=47,name=!UnlimitedBarrier,name=!UnlimitedVoidStart,tag=!domainunselect] at @s run tp @s ~ 301.25 ~
execute as @s[scores={domain=560},tag=limitless] at @s run effect @e[r=33] night_vision 2 1 true
execute as @s[scores={domain=546..549},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^ ^-4 rot ~ ~180
execute as @s[scores={domain=544},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.5 linear pos ^ ^0.25 ^-1 rot ~5 ~180
execute as @s[scores={domain=512},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 3 linear pos ^ ^2 ^8 rot ~15 ~

execute as @s[scores={domain=541..560},tag=limitless] at @s run tp @s @s
execute as @s[scores={domain=541..559},tag=limitless] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=541..559},tag=limitless] at @s run tp @s ~ ~ ~ facing ^^^20

execute as @s[scores={domain=512..520},tag=limitless] at @s run execute as @e[r=33] at @s if block ~~~ barrier run tp @s ~~1.1~

execute as @s[scores={domain=451},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^-0.4 ^5 rot ~-15 ~180
execute as @s[scores={domain=430},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 6.65 linear pos ^ ^ ^16 rot ~ ~180

execute as @s[scores={domain=391},tag=limitless] at @s anchored eyes run camera @a[r=33] fade time 4.5 3.5 1 color 252 252 255

execute as @s[scores={domain=306},tag=limitless] at @s run playsound music.infinitevoidmusic @a[r=33] ~~~ 100000 1 10000
execute as @s[scores={domain=306},tag=limitless] at @s run summon ds:projectile UnlimitedVoid ~ 298.85 ~

execute as @s[scores={domain=306},tag=limitless] at @s run particle ds:unlimited_eye ^^1.5^26
execute as @s[scores={domain=306},tag=limitless] at @s run particle ds:unlimited_eye1 ^^1.5^26
execute as @s[scores={domain=306},tag=limitless] at @s run particle ds:unlimited_eye2 ^^1.5^26
execute as @s[scores={domain=306},tag=limitless] at @s run particle ds:unlimited_eye3 ^^1.5^26

execute as @s[scores={domain=305..306},tag=limitless] at @s run scoreboard players add @e[name=UnlimitedVoid,c=1] Deleter 731
execute as @s[scores={domain=305},tag=limitless] at @s run scoreboard players operation @e[name=UnlimitedVoid,c=1] Deleter += @s Energy
execute as @s[scores={domain=303..305},tag=limitless] at @s run scoreboard players operation @s domainactive = @e[name=UnlimitedVoid,c=1] Deleter


execute as @s[scores={domain=551},tag=limitless] at @s run scoreboard players add @e[name=UnlimitedBarrier,c=1] Deleter 731
execute as @s[scores={domain=551},tag=limitless] at @s run scoreboard players operation @e[name=UnlimitedBarrier,c=1] Deleter += @s Energy

execute as @s[scores={domain=306},tag=limitless] at @s run effect @a[r=33] night_vision 2 1 true

execute as @s[scores={domain=1..},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] times 0 20 0
execute as @s[scores={domain=420},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=418},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=416},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=414},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=412},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title §l

execute as @s[scores={domain=380},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=378},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=376},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=374},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=372},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title §l


execute as @s[scores={domain=350},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=333},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=346},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=344},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title 
execute as @s[scores={domain=300..342},tag=limitless] at @s run title @a[tag=!impactframesoff,r=33] title §l

execute as @s[scores={domain=306},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^ ^15 rot ~ ~
execute as @s[scores={domain=305},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 10 linear pos ^ ^ ^10 rot ~ ~

execute as @s[scores={domain=104},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^7 ^15 ^-15 rot ~-15 ~-35
execute as @s[scores={domain=103},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.5 in_out_circ pos ^6 ^16 ^-14 rot ~30 ~65

execute as @s[scores={domain=54},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^-7 ^3 ^15 rot ~15 ~135
execute as @s[scores={domain=53},tag=limitless] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.5 in_out_circ pos ^-6 ^1 ^14 rot ~ ~225
execute as @s[scores={domain=20},tag=limitless] at @s anchored eyes run camera @a[r=33] fade time 0.5 0.5 0.25 color 0 0 5

execute as @s[scores={domain=1..5},tag=limitless] at @s anchored eyes run camera @a[r=33] clear



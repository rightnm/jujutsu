execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye ^^1^35

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run kill @e[type=arrow,r=60]
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye1 ^^1^35
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye2 ^^1^35
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye3 ^^1^36
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=7..}] at @s run particle ds:unlimited_eye4 ^^1^32
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=14}] at @s run particle ds:unlimited_eye5 ^^1^32

execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=16}] at @s run particle ds:unlimited_void_paint1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=11}] at @s run particle ds:unlimited_void_paint2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=6}] at @s run particle ds:unlimited_void_paint3 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=1}] at @s run particle ds:unlimited_void_paint4 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=1}] at @s run particle ds:unlimited_void_paint5 ~~1~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[family=mahoraga,c=1,r=50] at @s run function damages/unlimitedvoid
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[scores={domain=0,domainactive=0,wheelactive=1..},r=50,c=1] at @s positioned ^^^2 run function damages/unlimitedvoid

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..,domainactive=0},r=60] infinity 3

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:domain_barrierv2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void_background1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void_floor ~~1~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=14}] at @s run execute as @e[r=40,type=!ds:projectile,type=!armor_stand,type=!bat] at @s if block ~~-1~ barrier run particle ds:unlimited_void_splash ~ 300.85 ~

scoreboard players add @s[name=UnlimitedVoid,scores={Deleter=1..}] Energy 0
scoreboard players remove @s[name=UnlimitedVoid,scores={Energy=1..}] Energy 1
scoreboard players set @s[name=UnlimitedVoid,scores={Energy=0}] Energy 14

scoreboard players add @s[name=UnlimitedVoid,scores={Deleter=1..}] Evade 0
scoreboard players remove @s[name=UnlimitedVoid,scores={Evade=1..}] Evade 1
scoreboard players set @s[name=UnlimitedVoid,scores={Evade=0}] Evade 16


execute as @s[name=UnlimitedVoid,scores={Deleter=20..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=20..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=20..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=20..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void3 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void4 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void5 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void6 ~~2~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!ds:projectile] at @s run tp @s @s
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^^ facing @e[name=UnlimitedVoid,c=1]
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^1^1 facing @e[name=UnlimitedVoid,c=1]

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run tp @s @s
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!domainactive,r=40] Stun 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!domainactive,r=40] Move 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!domainactive,r=40] Camera 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!domainactive,r=40] Disabled 5
execute as @s[name=UnlimitedVoid,scores={Deleter=21..}] at @s run effect @e[tag=!domainactive,r=40,type=!player] slowness 2 99 true

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s if entity @p[scores={domainactive=1..,Disabled=1..,move=1..},tag=limitless,r=90] run scoreboard players add @s Deleter 1

execute as @s[name=UnlimitedVoid,scores={Deleter=1..30}] at @s run scoreboard players set @e[r=90] Stun 6
execute as @s[name=UnlimitedVoid,scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=limitless,r=100] ~ ~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[name=UnlimitedVoid,scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[name=UnlimitedVoid,scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run execute as @e[r=50] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run execute as @e[r=50] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run execute as @e[r=50] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..19}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[name=UnlimitedVoid,scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~ run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~ run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~ run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[name=UnlimitedVoid,scores={Deleter=9..12}] at @s positioned ~~-200~ run kill @e[name=UnlimitedBarrier,c=1] 
execute as @s[name=UnlimitedVoid,scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=1..},r=90] domainactive 2
execute as @s[name=UnlimitedVoid,scores={Deleter=6..10}] at @s run execute as @e[r=90,type=!ds:projectile] at @s run spreadplayers ~ ~ 1 2 @s
execute as @s[name=UnlimitedVoid,scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!ds:projectile] at @s run tp @s ~~0.8~
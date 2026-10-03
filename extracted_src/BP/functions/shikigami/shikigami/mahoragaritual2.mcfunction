playanimation @s[scores={Deleter=250}] animation.mahoraga.outtamywaymf

execute as @s[scores={Deleter=230}] at @s run camera @a[r=33] set minecraft:free ease 0.2 in_sine pos ^ ^4 ^5 rot ~ ~180
execute as @s[scores={Deleter=228}] at @s run camera @a[r=33] set minecraft:free ease 0.1 in_sine pos ^ ^4 ^5 rot ~5 ~211
execute as @s[scores={Deleter=226}] at @s run camera @a[r=33] set minecraft:free ease 0.4 in_sine pos ^ ^4 ^5 rot ~ ~180

execute as @s[scores={Deleter=1..250}] at @s positioned ^^^2.5 run scoreboard players set @a[r=33] Camera 5
execute as @s[scores={Deleter=1..250}] at @s positioned ^^^2.5 run scoreboard players set @a[r=33] Move 5
execute as @s[scores={Deleter=230}] at @s positioned ^^^2.5 run camerashake add @a[r=50] 4 0.1 rotational
execute as @s[scores={Deleter=230}] at @s positioned ^^^2.5 run damage @e[type=!item,r=2.49] 6
execute as @s[scores={Deleter=220}] at @s positioned ^^^2.5 run kill @p[tag=kill]
execute as @s[scores={Deleter=230}] at @s positioned ^-1.15^^2.5 run summon ds:dash ~~~
execute as @s[scores={Deleter=230}] at @s positioned ^-1.15^^2.5 run summon ds:dash ~~~
execute as @s[scores={Deleter=230}] at @s positioned ^-1.15^^2.5 run summon ds:dash ~~~
execute as @s[scores={Deleter=230}] at @s positioned ^-1.15^^2.5 run summon ds:dash ~~~
execute as @s[scores={Deleter=230}] at @s positioned ^-1.15^^2.5 run summon ds:dash ~~~
execute as @s[scores={Deleter=230}] at @s positioned ^^^2.5 run scoreboard players set @e[type=!item,r=2.49] Stun 25
execute as @s[scores={Deleter=230..232}] at @s positioned ^^^2.5 run effect @e[type=ds:megumi,c=1,r=15] resistance 2 1 true
execute as @s[scores={Deleter=230..232}] at @s positioned ^^^2.5 run effect @e[type=ds:megumi,c=1,r=15] instant_health 1 2 true
execute as @s[scores={Deleter=230}] at @s positioned ^^^2.5 run scoreboard players set @e[type=ds:megumi,c=1,r=15] dying 240
execute as @s[scores={Deleter=230}] at @s run tp @s @s
execute as @s[scores={Deleter=230}] at @s run tp @s ~~~
effect @s instant_health 1 20 true

execute as @e[type=!player,r=33] at @s run tp @s ~~~

execute as @s[scores={Deleter=189..190}] at @s run tp @s ~ ~ ~ facing @e[type=!item,type=!item,type=!bat,type=!armor_stand,type=!xp_orb,family=!damage,family=!projectile,type=!arrow,c=1,r=100]
playanimation @s[scores={Deleter=190}] animation.mahoraga.walking

execute as @s[scores={Deleter=100..190}] at @s run tp @s ^ ^ ^0.055
execute as @s[scores={Deleter=100..190}] at @s run camera @a[r=60] set minecraft:free ease 0.1 in_sine pos ^ ^5.35 ^2.85 rot ~ ~180

execute as @s[scores={Deleter=82}] at @s run  camerashake add @a[r=50] 0.3 0.25
execute as @s[scores={Deleter=82}] at @s run playsound beacon.power @a ~~~ 100000 0.55 100000
execute as @s[scores={Deleter=82}] at @s run playsound beacon.power @a ~~~ 100000 0.65 100000
execute as @s[scores={Deleter=97}] at @s run camera @a[r=60] set minecraft:free ease 0.5 in_out_circ pos ^ ^4.5 ^4 rot ~20 ~156
execute as @s[scores={Deleter=60}] at @s run camera @a[r=60] set minecraft:free ease 2.5 in_out_circ pos ^ ^3 ^8 rot ~-9 ~180
execute as @s[scores={Deleter=20..60}] at @s run camerashake add @a[r=60] 0.01 0.08 rotational

execute as @s[scores={Deleter=11..20}] at @s run tag @a[r=90] add mahoraga_fight
execute as @s[scores={Deleter=20}] at @s run camera @a[r=90] fade time 0.25 0.75 0.25 color 0 0 0
execute as @s[scores={Deleter=40}] at @s run playsound music.mahoraga @a[r=90] ~~~ 1000000 1 1000000
execute as @s[scores={Deleter=8..9}] at @s run scoreboard players set @e[type=!item,type=ds:mahoragaboss,c=1] endurance 1660
execute as @s[scores={Deleter=10}] at @s run camera @a[r=90] clear
execute as @s[scores={Deleter=10}] at @s run summon ds:mahoragaboss "§r §r§lDivine General Mahoraga§r " ~ ~ ~
execute as @s[scores={Deleter=9}] at @s run tp @s ~~-40~
execute as @s[scores={Deleter=7}] at @s run kill @s
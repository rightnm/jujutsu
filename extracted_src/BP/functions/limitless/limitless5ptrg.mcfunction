tag @e[type=!item,name=LimitlessPTRG] add GojoProj
tag @e[type=!item,name=LimitlessPRed] add GojoProj
tag @e[type=!item,name=LimitlessPBlue] add GojoProj

execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=211..}] run tp @s ~ ~ ~ ~15
execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=170..210}] run tp @s ~ ~ ~ ~25
execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=140..169}] run tp @s ~ ~ ~ ~25
execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=120..139}] run tp @s ~ ~ ~ ~34
execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=71..119}] run tp @s ~ ~ ~ ~55
execute as @s[name=LimitlessPTRG] at @s if entity @s[scores={Deleter=1..70}] run tp @s ~ ~ ~ ~70

execute as @s[name=LimitlessPTRG,scores={Deleter=200..}] at @s run camerashake add @a[r=75] 0.1 0.1
execute as @s[name=LimitlessPTRG,scores={Deleter=200..}] at @s run particle ds:limitless_spin1 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=200..}] at @s run tp @e[type=!item,name=LimitlessPRed,c=1] ^^^13 facing @s
execute as @s[name=LimitlessPTRG,scores={Deleter=200..}] at @s run tp @e[type=!item,name=LimitlessPBlue,c=1] ^^^-13 facing @s

execute as @s[name=LimitlessPTRG,scores={Deleter=140..200}] at @s run camerashake add @a[r=75] 0.3 0.1
execute as @s[name=LimitlessPTRG,scores={Deleter=140..200}] at @s run particle ds:limitless_spin2 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=140..200}] at @s run tp @e[type=!item,name=LimitlessPRed,c=1] ^^^10 facing @s
execute as @s[name=LimitlessPTRG,scores={Deleter=140..200}] at @s run tp @e[type=!item,name=LimitlessPBlue,c=1] ^^^-10 facing @s

execute as @s[name=LimitlessPTRG,scores={Deleter=100..139}] at @s run camerashake add @a[r=75] 1.2 0.1
execute as @s[name=LimitlessPTRG,scores={Deleter=100..139}] at @s run particle ds:limitless_spin3 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=100..139}] at @s run particle ds:limitless_spinp1 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=100..139}] at @s run tp @e[type=!item,name=LimitlessPRed,c=1] ^^^8 facing @s
execute as @s[name=LimitlessPTRG,scores={Deleter=100..139}] at @s run tp @e[type=!item,name=LimitlessPBlue,c=1] ^^^-8 facing @s

execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run particle ds:limitless_lightning1 ~~~
execute as @s[name=LimitlessPTRG,scores={Deleter=5..79}] at @s run particle ds:limitless_lightning2 ~~~
execute as @s[name=LimitlessPTRG,scores={Deleter=24..59}] at @s run particle ds:limitless_lightning3 ~~1~

execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:limitless_lightning3 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple1 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple2 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple3 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple4 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple5 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple6 ~~7~
execute as @s[name=LimitlessPTRG,scores={Deleter=1..23}] at @s run particle ds:hollow_purple7 ~~7~

execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run camerashake add @a[r=75] 2 0.1
execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run particle ds:limitless_spin4 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run particle ds:limitless_spinp2 ~~-1~
execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run tp @e[type=!item,name=LimitlessPRed,c=1] ^^^7 facing @s
execute as @s[name=LimitlessPTRG,scores={Deleter=5..99}] at @s run tp @e[type=!item,name=LimitlessPBlue,c=1] ^^^-7 facing @s

execute as @s[name=LimitlessPTRG,scores={Deleter=1..24}] at @s run tp @e[type=!item,name=LimitlessPRed,c=1] ^^7^ facing @s
execute as @s[name=LimitlessPTRG,scores={Deleter=1..24}] at @s run tp @e[type=!item,name=LimitlessPBlue,c=1] ^^7^ facing @s

execute as @s[name=LimitlessPTRG,scores={Deleter=1..19}] at @s run kill @e[type=!item,name=LimitlessPRed,c=1]
execute as @s[name=LimitlessPTRG,scores={Deleter=1..19}] at @s run kill @e[type=!item,name=LimitlessPBlue,c=1]

playanimation @e[type=!item,name=LimitlessPRed] animation.hollow_red
playanimation @e[type=!item,name=LimitlessPBlue] animation.hollow_blue
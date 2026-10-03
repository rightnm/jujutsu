playanimation @a[scores={move=464..}] animation.atomic
execute as @a[scores={move=464..}] at @s run playsound music.atomic @a[r=500]

inputpermission set @a[scores={move=6..465},haspermission={movement=enabled}] movement disabled
inputpermission set @a[scores={move=6..465},haspermission={camera=enabled}] camera disabled
inputpermission set @a[scores={move=1..5},haspermission={movement=disabled}] movement enabled
inputpermission set @a[scores={move=1..5},haspermission={camera=disabled}] camera enabled

execute as @a[scores={move=464..}] at @s run tp @s @s

execute as @a[scores={move=3..}] at @s run effect @s resistance 1 15 true
execute as @a[scores={move=3..}] at @s run tag @s add Frames
execute as @a[scores={move=1..2}] at @s run tag @s remove Frames

execute as @a[scores={move=444}] at @s run tellraw @a {"rawtext":[{"text": "§f<§9"},{"selector": "@s"},{"text": "§f> Let the true meaning of almighty be carved into your soul..."}]}
execute as @a[scores={move=340}] at @s run tellraw @a {"rawtext":[{"text": "§f<§9"},{"selector": "@s"},{"text": "§f> This is my almighty power,"}]}

execute as @a[scores={move=1..440}] at @s run execute as @e[r=20,rm=18] at @s run tp @s @s
execute as @a[scores={move=1..440}] at @s run execute as @e[r=20,rm=18] at @s run tp @s ^^^-0.33
execute as @a[scores={move=1..440}] at @s run execute as @e[r=20,rm=18] at @s run tp @s ^^^-0.33
execute as @a[scores={move=1..440}] at @s run execute as @e[r=20,rm=18] at @s run tp @s ^^^-0.33

execute as @a[scores={move=270}] at @s run tellraw @a {"rawtext":[{"text": "§f<§9"},{"selector": "@s"},{"text": "§f> §l§o§dI..."}]}
execute as @a[scores={move=270}] at @s run camera @s fade time 0 0 0.15 color 215 120 255
execute as @a[scores={move=270}] at @s run particle ds:atomic12 ~~1~
execute as @a[scores={move=190}] at @s run particle ds:atomic11 ~~1~
execute as @a[scores={move=235}] at @s run tellraw @a {"rawtext":[{"text": "§f<§9"},{"selector": "@s"},{"text": "§f> §l§o§dAM..."}]}
execute as @a[scores={move=235}] at @s run camera @s fade time 0.1 0 0.25 color 215 120 255
execute as @a[scores={move=235}] at @s run particle ds:atomic12 ~~1~
execute as @a[scores={move=190}] at @s run particle ds:atomic11 ~~1~
execute as @a[scores={move=190}] at @s run tellraw @a {"rawtext":[{"text": "§f<§9"},{"selector": "@s"},{"text": "§f> §l§o§dATOMIC."}]}
execute as @a[scores={move=190}] at @s run camera @s fade time 0 0 0.35 color 215 120 255
execute as @a[scores={move=190}] at @s run particle ds:atomic12 ~~1~
execute as @a[scores={move=190}] at @s run particle ds:atomic11 ~~1~

execute as @a[scores={Move=463}] at @s run camera @a fade time 0.1 0.2 0.25 color 0 0 0
execute as @a[scores={move=464}] at @s anchored eyes run camera @s set minecraft:free ease 0.15 linear pos ^ ^-1 ^0.75 rot ~ ~180
execute as @a[scores={move=460}] at @s anchored eyes run camera @s set minecraft:free ease 2.8 linear pos ^ ^-0.75 ^1 rot ~-10 ~180

execute as @a[scores={move=404}] at @s anchored eyes run camera @s set minecraft:free ease 1 linear pos ^ ^-0.35 ^2 rot ~-15 ~180
execute as @a[scores={move=364}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 in_out_circ pos ^ ^-0.4 ^5 rot ~15 ~180
execute as @a[scores={move=360}] at @s anchored eyes run camera @s set minecraft:free ease 3.35 linear pos ^ ^-0.4 ^5 rot ~-35 ~180

execute as @a[scores={move=270}] at @s anchored eyes run camera @s set minecraft:free pos ^5 ^4 ^7 rot ~5 ~130
execute as @a[scores={move=269}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^5 ^4.5 ^7 rot ~7 ~130
execute as @a[scores={move=270}] at @s run camerashake add @a 2 0.15 rotational

execute as @a[scores={move=235}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 in_out_circ pos ^-5 ^6.5 ^-7 rot ~33 ~-40
execute as @a[scores={move=232}] at @s anchored eyes run camera @s set minecraft:free ease 0.75 in_out_circ pos ^-5.5 ^7 ^-6.5 rot ~35 ~-45
execute as @a[scores={move=235}] at @s run camerashake add @a 2 0.2 rotational

execute as @a[scores={move=205}] at @s anchored eyes run camera @s set minecraft:free ease 0.05 linear pos ^ ^2 ^2 rot ~25 ~180
execute as @a[scores={move=202}] at @s anchored eyes run camera @s set minecraft:free ease 0.4 in_out_circ pos ^ ^2.25 ^2.25 rot ~32 ~180
execute as @a[scores={move=190}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 linear pos ^ ^-1 ^1 rot ~-35 ~180
execute as @a[scores={move=187}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 linear pos ^ ^-0.9 ^1.25 rot ~-38 ~180
execute as @a[scores={move=190}] at @s run camerashake add @a 3 0.1 rotational

execute as @a[scores={move=184}] at @s anchored eyes run camera @s set minecraft:free ease 2.5 linear pos ^ ^-1^6.5 rot ~-13 ~180

execute as @a[scores={move=464}] at @s run particle ds:atomic1 ~~-1~
execute as @a[scores={move=464}] at @s run particle ds:atomic2 ~~~
execute as @a[scores={move=424}] at @s run particle ds:atomic3 ~~0.1~

execute as @a[scores={move=140}] at @s run particle ds:atomic7 ~~2~

execute as @a[scores={move=185}] at @s run particle ds:heavy_impact1 ~~1.625~
execute as @a[scores={move=185}] at @s run particle ds:heavy_impact2 ~~1.625~
execute as @a[scores={move=185}] at @s run particle ds:heavy_impact3 ~~1.625~

execute as @a[scores={move=135..424}] at @s run particle ds:atomic4
execute as @a[scores={move=135..424}] at @s run particle ds:atomic5
execute as @a[scores={move=135..424}] at @s run particle ds:atomic8
execute as @a[scores={move=200..330}] at @s run particle ds:atomic_beam
execute as @a[scores={move=300..464}] at @s run particle ds:atomic ~~1~
execute as @a[scores={move=60..130}] at @s run particle ds:atomic_explosion ~~1~
execute as @a[scores={move=60..130}] at @s run particle ds:atomic_dust ~~~
execute as @a[scores={move=60..130}] at @s run particle ds:atomic10

execute as @a[scores={move=155}] at @s run camerashake add @s 2 0.1
execute as @a[scores={move=155}] at @s run particle ds:atomic6 ~~1~

execute as @a[scores={move=156..165}] at @s run particle ds:atomic9 ~~-0.5~
execute as @a[scores={move=156..165}] at @s run particle ds:atomic11 ~~1~

execute as @a[scores={move=221..}] at @s run effect @a[r=350] night_vision 13 1 true

execute as @a[scores={move=35..424}] at @s run fog @s push minecraft:fog_warped_forest Atomic
execute as @a[scores={move=1..35}] at @s run fog @a remove Atomic

execute as @a[scores={move=135}] at @s run camera @a[r=350] fade time 5 2.25 1 color 255 130 255
execute as @a[scores={move=135}] at @s run camera @s set minecraft:free ease 3.5 linear pos ^ ^15^50 rot ~20 ~180
execute as @a[scores={move=1..5}] at @s run camera @a clear
execute as @a[scores={move=1..135}] at @s run camerashake add @a[r=1000] 4 0.2

execute as @a[scores={move=35..36}] at @s if entity @p[tag=griefable] positioned ~~14~ run function 32x32sphere
execute as @a[scores={move=5..36}] at @s if entity @p[tag=griefable] positioned ~~14~ run fill ~5~5~5~-5~-5~-5 air
execute as @a[scores={move=45..115}] at @s run kill @e[type=ender_dragon,r=250]
execute as @a[scores={move=35..135}] at @s run damage @a[r=250,tag=!Frames] 10 suicide
execute as @a[scores={move=35..135}] at @s run damage @e[r=250,tag=!Frames,type=!player] 10 suicide


tag @s[scores={move=1..3}] remove wep


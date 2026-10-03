tp @s @s
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^2.4
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=23..}] animation.dismantle.forwards
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^1 ^^^-1 air [] destroy

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^1^1^1 ^1^1^-1 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^2^1.5^1 bedrock  run fill ^2^1.5^1 ^2^1.5^-1 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^3^2^1 bedrock  run fill ^3^2^1 ^3^2^-1 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^-1^-1^1 bedrock  run fill ^-1^-1^1 ^-1^-1^-1 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^-2^-1.5^1 bedrock  run fill ^-2^-1.5^1 ^-2^-1.5^-1 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^-3^-2^1 bedrock  run fill ^-3^-2^1 ^-3^-2^-1 air [] destroy

execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=11..}] positioned ^^^ unless block ^^^2 air run playanimation @s animation.dismantle.forwards2
execute as @s[scores={Deleter=11..}] positioned ^^^ unless block ^^^2 air run scoreboard players set @s Deleter 10


execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=1.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/fighting/dismantlem1_land

execute as @s positioned ^2^2^ run execute as @e[tag=!Frames,r=1.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/fighting/dismantlem1_land

execute as @s positioned ^-2^-2^ run execute as @e[tag=!Frames,r=1.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/fighting/dismantlem1_land

execute as @s positioned ^4^4^ run execute as @e[tag=!Frames,r=1.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/fighting/dismantlem1_land

execute as @s positioned ^-4^-4^ run execute as @e[tag=!Frames,r=1.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/fighting/dismantlem1_land

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=5,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/fighting/dismantlem1_land

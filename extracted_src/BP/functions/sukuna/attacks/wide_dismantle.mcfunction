tp @s @s
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^7
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=21..}] animation.dismantle.wide
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]


particle ds:dismantle_stars ~~-5~

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^2 ^^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^1^^2 ^1^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^2^^2 ^2^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^3^^2 ^3^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^4^^2 ^4^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^5^^2 ^5^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6^^2 ^6^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^7^^2 ^7^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^8^^2 ^8^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-1^^2 ^-1^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-2^^2 ^-2^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-3^^2 ^-3^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-4^^2 ^-4^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-5^^2 ^-5^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-6^^2 ^-6^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-7^^2 ^-7^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-8^^2 ^-8^^-4 air [] destroy
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[type=item,r=15]


execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=17..}] positioned ^^^ unless block ^^^2 air run scoreboard players set @s Deleter 16
playanimation @s[scores={Deleter=15}] animation.dissect2

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=3.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=5.99,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^4^^ run execute as @e[tag=!Frames,r=3.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^6^^ run execute as @e[tag=!Frames,r=5.99,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^8^^ run execute as @e[tag=!Frames,r=3.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^12^^ run execute as @e[tag=!Frames,r=5.99,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^-4^^ run execute as @e[tag=!Frames,r=3.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^-6^^ run execute as @e[tag=!Frames,r=5.99,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^-8^^ run execute as @e[tag=!Frames,r=3.99,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^-12^^ run execute as @e[tag=!Frames,r=5.99,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
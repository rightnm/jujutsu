
tag @s add Frames
scoreboard players set @s atk 2

playanimation @s[scores={Deleter=23..,dismantle_rot=0}] animation.dismantle.horizontal1
playanimation @s[scores={Deleter=17,dismantle_rot=0}] animation.dismantle.horizontal1

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]



#dismantlerot = rotation  -2 = left 2 = right
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^1 ^^^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^1^1^1 ^1^1^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^2^1.5^1 bedrock  run fill ^2^1.5^1 ^2^1.5^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^3^2^1 bedrock  run fill ^3^2^1 ^3^2^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^-1^-1^1 bedrock  run fill ^-1^-1^1 ^-1^-1^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^-2^-1.5^1 bedrock  run fill ^-2^-1.5^1 ^-2^-1.5^-1 air [] destroy
execute as @s[scores={dismantle_rot=2}] positioned ^^^ if entity @e[tag=griefable] unless block ^-3^-2^1 bedrock  run fill ^-3^-2^1 ^-3^-2^-1 air [] destroy

execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^4^^1 ^4^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^3^^1 ^3^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^2^^1 ^2^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^1^^1 ^1^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^1 ^^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-4^^1 ^-4^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-3^^1 ^-3^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-2^^1 ^-2^^-1 air [] destroy
execute as @s[scores={dismantle_rot=0}] positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-1^^1 ^-1^^-1 air [] destroy

execute as @s[scores={Deleter=3..,dismantle_rot=0}] positioned ^^^ unless block ^^^2 air run tp @s ~~~

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=4,type=!item,type=!xp_orb,tag=!Big] at @s run summon ds:dismantle_horizontal ^^^0.1 facing ^^^20
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=4,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dismantle_land
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,tag=Big] at @s run summon ds:dismantle_horizontal ^^^0.1 facing ^^^20
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dismantle_land

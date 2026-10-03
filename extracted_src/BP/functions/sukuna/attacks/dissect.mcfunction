tp @s @s
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^4
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=11..}] animation.dismantle.dissect
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^2 ^^^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^1^1^2 ^1^1^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^2^2^2 ^2^2^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^3^3^2 ^3^3^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^-1^-1^2 ^-1^-1^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^-2^-2^2 ^-2^-2^-2 air 
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^1 bedrock  run fill ^-3^-3^2 ^-3^-3^-2 air 

execute as @s positioned ^^0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^2 ^^^-2 air 
execute as @s positioned ^^0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^1^-1^2 ^1^-1^-2 air 
execute as @s positioned ^^0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-1^1^2 ^-1^1^-2 air 
execute as @s positioned ^^0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^2^-1^2 ^2^-1^-2 air 
execute as @s positioned ^^0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-2^1^2 ^-2^1^-2 air 

execute as @s positioned ^^-0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^^2 ^^^-2 air 
execute as @s positioned ^^-0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^1^-1^2 ^1^-1^-2 air 
execute as @s positioned ^^-0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-1^1^2 ^-1^1^-2 air 
execute as @s positioned ^^-0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^2^-1^2 ^2^-1^-2 air 
execute as @s positioned ^^-0.5^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-2^1^2 ^-2^1^-2 air 

execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=17..}] positioned ^^^ unless block ^^^2 air run scoreboard players set @s Deleter 16
playanimation @s[scores={Deleter=15}] animation.dissect2

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=5,type=!item,type=!xp_orb,tag=!Big] at @s run function sukuna/attacks/dissect_land
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,tag=Big] at @s run function sukuna/attacks/dissect_land
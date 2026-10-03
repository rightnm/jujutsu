tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ^^^1.5
tag @s add Frames
scoreboard players set @s atk 2

execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 81

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

particle ds:reality_slash1 ^^^-5
particle ds:reality_slash2 ^^^-5
particle ds:reality_slash3 ^^^-5
particle ds:reality_slash4 ^^^-5
particle ds:reality_slash1 ^^^5
particle ds:reality_slash2 ^^^5
particle ds:reality_slash3 ^^^5
particle ds:reality_slash4 ^^^5
particle ds:reality_slash1 ^^^
particle ds:reality_slash2 ^^^
particle ds:reality_slash3 ^^^
particle ds:reality_slash4 ^^^
execute as @s at @s unless block ~~-1 ~ air run particle ds:rubble3
particle ds:ground_slam2
particle ds:equinox_downslash1
particle ds:equinox_downslash2
camerashake add @a[r=125] 0.25 0.15

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock  run fill ^^^2 ^^77^-2 air [] destroy


execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=12..}] positioned ^^^ unless block ^^^1 air run scoreboard players set @s Deleter 11

damage @e[tag=!Frames,r=5] 133 suicide
execute as @s positioned ~~5~ run damage @e[tag=!Frames,r=5] 133 suicide
execute as @s positioned ~~10~ run damage @e[tag=!Frames,r=5] 133 suicide
execute as @s positioned ~~15~ run damage @e[tag=!Frames,r=5] 133 suicide
execute as @s positioned ~~20~ run damage @e[tag=!Frames,r=5] 133 suicide

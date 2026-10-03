tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ^^^2
tag @s add Frames
scoreboard players set @s atk 2

execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 28

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s at @s unless block ~~-1 ~ air run particle ds:rubble3
particle ds:ground_slam2
particle ds:windstomp1
particle ds:windstomp2
particle ds:windstomp3
particle ds:windstomp4
camerashake add @a[r=25] 2 0.1
playsound mob.wind @a ~~~ 0.2 1.5

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ~~2~ air run summon ds:lapse_explode

damage @e[tag=!Frames,r=5] 5 override
scoreboard players set @e[tag=!Frames,r=5] Stun 25
scoreboard players add @e[tag=!Frames,r=5] Evade 1
scoreboard players set @e[tag=!Frames,r=5] Hit 5
effect @e[tag=!Frames,r=5] levitation 1 25 true
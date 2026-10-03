tp @s @s
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
tag @s add Frames
scoreboard players set @s atk 2
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

playsound mob.slash @a[r=50] ~~~ 9999 2 9999
playsound mob.slash1 @a[r=50] ~~~ 9999 3 9999
playsound mob.dismantle @a[r=50] ~~~ 9999 1.2 9999
camerashake add @a[r=50] 0.2 0.15
particle ds:dismantle_stars ^^^
particle ds:dismantle_stars2 ^^^
particle ds:max_dismantle_v2a
particle ds:max_dismantle_v2b
particle ds:max_dismantle_v2c
particle ds:max_dismantle_v2d
particle ds:max_dismantle_v2e
particle ds:max_dismantle_v2f
particle ds:max_dismantle_v2g
particle ds:max_dismantle_v2h
execute as @s at @s unless block ^^^2 air run particle ds:rubble3
particle ds:ground_slam2
particle ds:cleave_aureole

execute as @s positioned ^^^ if entity @p[tag=griefable] unless block ^^-1^ bedrock unless block ^^^4 bedrock run function 4x4sphere

execute as @s[scores={Deleter=11}] at @s run effect @a[r=100] blindness 1 1 true
execute as @s[scores={Deleter=12..}] positioned ^^^ unless block ^^^1 air run scoreboard players set @s Deleter 11

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=6,type=!item,type=!xp_orb,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle2_land

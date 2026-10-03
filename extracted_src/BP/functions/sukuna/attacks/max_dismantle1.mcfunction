tp @s @s
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s run tp @s ^^^1
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=1..}] animation.dismantle.max1
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

particle ds:dismantle_stars ^^^-5
execute as @s at @s unless block ~~-1 ~ air run particle ds:rubble3
particle ds:ground_slam2
particle ds:cleave_aureole

execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock  run fill ^^-1^2 ^^7^-2 air [] destroy


execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=12..}] positioned ^^^ unless block ^^^1 air run scoreboard players set @s Deleter 11

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=2.99,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land
execute as @s positioned ^^3^ run execute as @e[tag=!Frames,r=2.99,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land
execute as @s positioned ^^6^ run execute as @e[tag=!Frames,r=2.99,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land
execute as @s positioned ^^9^ run execute as @e[tag=!Frames,r=2.99,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=4.99,type=!item,type=!xp_orb,tag=Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land
execute as @s positioned ^^5^ run execute as @e[tag=!Frames,r=4.99,type=!item,type=!xp_orb,tag=Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land
execute as @s positioned ^^10^ run execute as @e[tag=!Frames,r=4.99,type=!item,type=!xp_orb,tag=Big,type=!ds:red_reversal,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle1_land


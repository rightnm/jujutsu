tp @s @s
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^^7
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=22..}] animation.dismantle.rapid
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
particle ds:dismantle_stars2  ^^^-5
particle ds:dismantle_stars3 ^^^-5
particle ds:dismantle_stars4 ^^^-5



execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock unless block ^^^1 air run effect @a[r=20] resistance 1 20 true
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock unless block ^^^1 air run summon ds:red_reversal ~~~
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock unless block ^^^1 air run summon ds:red_reversal ~~~
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^-1^ bedrock unless block ^^^1 air run summon ds:red_reversal ~~~
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[type=item,r=15]


execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=12..}] positioned ^^^ unless block ^^^1 air run scoreboard players set @s Deleter 11
playanimation @s[scores={Deleter=10..11}] animation.dismantle.rapid2

execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=8,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal] at @s run function sukuna/attacks/rapid_dismantle_land
execute as @s positioned ^^^ run execute as @e[tag=!Frames,r=12,type=!item,type=!xp_orb,tag=Big,type=!ds:red_reversal] at @s run function sukuna/attacks/rapid_dismantle_land
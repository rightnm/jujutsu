tp @s @s

tag @s add Frames
scoreboard players set @s atk 2
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~


execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^-1^1
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^-1^1
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^-1^1
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^^1
execute as @s[scores={Deleter=11..}] at @s if block ~~~ air run tp @s ^^^1

execute as @s[scores={Deleter=20..}] at @s run particle ds:dismantle_stars4


execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]



execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run effect @a[r=50] resistance 1 20 true
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ~~~
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^^^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^5^3^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^-5^-3^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^10^6^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^-10^-6^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^15^9^
execute as @s positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run summon ds:red_reversal ^-15^-9^

execute as @s[scores={Deleter=12..}] positioned ^^^ if entity @e[tag=griefable] unless block ^^^1 air run scoreboard players set @s Deleter 11

execute as @s[scores={Deleter=10..11}] run particle ds:cleave_aureole_big ^^^1
execute as @s[scores={Deleter=10..11}] run particle ds:cleave_aureole_big ^5^5^1
execute as @s[scores={Deleter=10..11}] run particle ds:cleave_aureole_big ^-5^-5^1
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[type=item,r=15]


execute as @s[scores={Deleter=11}] at @s run effect @a[r=40] blindness 1 1 true
execute as @s[scores={Deleter=12..}] positioned ^^^ unless block ^^^1 air run scoreboard players set @s Deleter 11

execute as @s[scores={Deleter=11..}] positioned ^^^ run execute as @e[tag=!Frames,r=15,type=!item,type=!xp_orb,tag=!Big,type=!ds:red_reversal] at @s run function sukuna/attacks/heavy_dismantle_land
execute as @s[scores={Deleter=11..}] positioned ^^^ run execute as @e[tag=!Frames,r=20,type=!item,type=!xp_orb,tag=Big,type=!ds:red_reversal] at @s run function sukuna/attacks/heavy_dismantle_land
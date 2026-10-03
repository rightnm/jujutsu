tp @s @s
execute as @s[scores={Deleter=1..20}] at @s run tp @s ^^^7
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=22..}] animation.dismantle.max3
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~


execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]


particle ds:dismantle_stars ^^5^
particle ds:dismantle_stars2 ^^5^
execute as @s[scores={Deleter=23}] at @s run particle ds:dismantle_stars3 ^^5^
execute as @s[scores={Deleter=23}] at @s run particle ds:dismantle_stars4 ^^5^


execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^4^-6^-4 ^4^6^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^2^-6^-4 ^2^6^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^-6^-4 ^^6^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-2^-6^-4 ^-2^6^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-4^-6^-4 ^-4^6^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^ ^-4 ^-6 ^ ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^2 ^-4 ^-6 ^2 ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^4 ^-4 ^-6 ^4 ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^6 ^-4 ^-6 ^6 ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^-2 ^-4 ^-6 ^-2 ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^-4 ^-4 ^-6 ^-4 ^2 air
execute as @s[scores={Deleter=1..20}] at @s positioned ^^4^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6 ^-6 ^-4 ^-6 ^-6 ^2 air


execute as @s[scores={Deleter=11..20}] positioned ^^^ run execute as @e[tag=!Frames,r=8,type=!item,type=!xp_orb,type=!ds:red_reversal,family=!projectile,family=!damage,family=!despawncito,type=!gg:impact_frame] at @s run function sukuna/attacks/max_dismantle3_land
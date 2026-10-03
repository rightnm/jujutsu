tp @s @s
execute as @s[scores={Deleter=11..40}] at @s run tp @s ^^^8
tag @s add Frames
scoreboard players set @s atk 2
playanimation @s[scores={Deleter=43..}] animation.dismantle.waffle
execute as @s[scores={Deleter=1..11}] at @s run tp @s ~~-100~

execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^100^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]

execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Dirt,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name=Sand,r=15]
execute as @s positioned ^^^ if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=15]


execute as @s[scores={Deleter=12..}] at @s unless entity @a[r=50] run scoreboard players set @s Deleter 11


execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^24^-27^ ^24^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^18^-27^ ^18^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^12^-27^ ^12^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^6^-27^ ^6^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^^-27^ ^^27^10 air

execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-24^-27^ ^-24^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-18^-27^ ^-18^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-12^-27^ ^-12^27^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^-6^-27^ ^-6^27^10 air

execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^-6^ ^-27^-6^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^-12^ ^-27^-12^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^-18^ ^-27^-18^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^-24^ ^-27^-24^10 air

execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^^ ^-27^^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^6^ ^-27^6^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^12^ ^-27^12^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^18^ ^-27^18^10 air
execute as @s[scores={Deleter=1..40}] at @s positioned ^^10^ if entity @e[tag=griefable] unless block ^^-1^ bedrock run fill ^27^24^ ^-27^24^10 air


execute as @s[scores={Deleter=11..40}] positioned ^^^ run execute as @e[tag=!Frames,r=30,type=!item,type=!xp_orb,type=!ds:red_reversal,family=!projectile,family=!damage,family=!despawncito,type=!gg:impact_frame] at @s run function sukuna/attacks/waffle_dismantle_land


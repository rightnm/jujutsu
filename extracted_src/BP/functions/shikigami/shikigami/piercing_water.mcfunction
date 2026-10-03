damage @e[tag=!Frames,family=!shikigami,r=1.32] 1 override entity @p[tag=shikigami,tag=form7c]
scoreboard players set @e[tag=!Frames,family=!shikigami,r=1.32] Stun 5
scoreboard players set @e[tag=!Frames,family=!shikigami,r=1.32] Hit 2
scoreboard players add @e[tag=!Frames,family=!shikigami,r=1.32] Evade 1
particle ds:piercing_water
particle ds:piercing_water2
execute as @p[scores={move=9},tag=form7c,tag=shikigami] run function damages/water_damage
playsound random.fizz @a ~~~ 1000000 3 1000000
playsound random.swim @a ~~~ 1000000 1.5 1000000
execute as @p if entity @e[tag=griefable] if block ~~~ double_plant run setblock ~~~ air [] destroy
execute as @p if entity @e[tag=griefable] if block ~~-1~ double_plant run setblock ~~~ air [] destroy
execute as @p if entity @e[tag=griefable] if block ~~~ tallgrass run setblock ~~~ air [] destroy
execute as @p[scores={move=9..22},tag=form7c,tag=shikigami] if entity @e[tag=griefable] unless block ~~~ air unless block ~~~ end_portal_frame unless block ~~~ portal unless block ~~~ end_portal unless block ~~~ obsidian unless block ~~~ bedrock unless block ~~~ barrier run setblock ~~~ air [] destroy
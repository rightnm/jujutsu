playanimation @e[scores={Deleter=399..},name="Volcanic Wall Mine",tag=!erupted] animation.geyser.wall
playanimation @e[scores={Deleter=20..387},name="Volcanic Wall Mine",tag=!erupted] animation.geyser.wall2

playanimation @e[scores={Deleter=399..},name="Volcanic Mine",tag=!erupted] animation.geyser.floor
playanimation @e[scores={Deleter=20..387},name="Volcanic Mine",tag=!erupted] animation.geyser.floor2

playanimation @e[scores={Deleter=1000..},name="Volcanic Wall Mine",tag=erupted] animation.geyser.wall_erupt
playanimation @e[scores={Deleter=1000..},name="Volcanic Mine",tag=erupted] animation.geyser.floor_erupt

execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s if block ~~-2.5~ air run tp @s ~~-2.5~

execute as @e[type=ds:geyser,name="Volcanic Wall Mine"] at @s run tp @s @s
execute as @e[type=ds:geyser,name="Volcanic Wall Mine"] at @s unless block ~~~ air run tp @s ^^^0.05 facing ^^^10 

execute as @e[type=ds:geyser,name="Volcanic Mine"] at @s unless block ~~~ air unless block ~~~ tallgrass unless block ~~~ water unless block ~~~ double_plant unless block ~~~ cobblestone_slab unless block ~~~ red_flower unless block ~~~ yellow_flower run tp @s ~~0.25~


execute as @e[type=ds:geyser,scores={Deleter=399..401}] at @s run particle ds:fire_hit2
execute as @e[type=ds:geyser,scores={Deleter=399..401}] at @s run particle ds:fire_hit4

execute as @e[type=ds:geyser,scores={Deleter=0..5}] at @s run tp @s ~~-40~

execute as @e[type=ds:geyser,scores={Deleter=20..390},name="Volcanic Mine"] at @s run function flames/geyser_detect_floor
execute as @e[type=ds:geyser,scores={Deleter=20..390},name="Volcanic Wall Mine"] at @s run function flames/geyser_detect_wall

execute as @e[type=ds:geyser,scores={Deleter=963..},name="Volcanic Mine"] at @s run function flames/geyser_floor_damage
execute as @e[type=ds:geyser,scores={Deleter=963..},name="Volcanic Wall Mine"] at @s run function flames/geyser_wall_damage
execute as @e[type=ds:geyser,scores={Deleter=963..}] at @s run camerashake add @a[r=20] 0.1 0.08
execute as @e[type=ds:geyser,scores={Deleter=955..960}] at @s run tp @s ~~-40~
execute as @e[type=ds:geyser,scores={Deleter=950..948}] at @s run kill @s

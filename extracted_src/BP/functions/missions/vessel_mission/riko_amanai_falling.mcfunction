execute unless entity @s[scores={Deleter=0..}] at @s run scoreboard players set @s Deleter 301

playanimation @s[scores={Deleter=292..}] animation.riko_amanai.fall
playanimation @s[scores={Deleter=1..252}] animation.riko_amanai.fall2


execute as @s[scores={Deleter=288..}] at @s run tp @s ^^^ 

execute as @s[scores={Deleter=1..252}] at @s run tp @s ^^-1^-0.15

execute as @s[scores={Deleter=278}] at @s run tellraw @a[r=100] {"rawtext":[{"text":"§cAn Explosion was detonated in the Vessel's hotel room!\n\n§l§a- Save The Vessel from falling to her death!"}]}
execute as @s[scores={Deleter=300}] at @s run camera @a[r=100] fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={Deleter=298..300}] at @s run camera @a[r=100] set minecraft:free ease 1 in_out_circ pos ^-10^-2^-5 facing ~~1~

execute as @s[scores={Deleter=278}] at @s run camera @a[r=100] set minecraft:free ease 1.5 in_sine pos ^-10^-2^-5 facing ^^2^-3

execute as @s[scores={Deleter=267..268}] at @s run camera @a[r=100] fade time 0.5 0.5 0.5 color 0 0 0
execute as @s[scores={Deleter=250..252}] at @s run camera @a[r=100] clear

execute as @s[scores={Deleter=0..252}] at @s if entity @p[tag=special_mission_vessel,r=4] run playsound random.orb @a[r=20]
execute as @s[scores={Deleter=0..252}] at @s if entity @p[tag=special_mission_vessel,r=4] run function missions/vessel_mission/catch_riko

execute as @s at @s unless block ~~-0.5~ air run function missions/vessel_mission/riko_fall_death


execute as @p if entity @a[r=60,tag=mahoraga_fight] run summon ds:mahoraga_ritual2 "Mahoraga"
execute as @p if entity @a[r=60,tag=mahoraga_fight] run scoreboard players set @e[type=ds:mahoraga_ritual2,c=1] Deleter 55
execute as @p if entity @a[r=60,tag=mahoraga_fight] run tag @e[type=ds:mahoraga_ritual2,c=1] add Frames
execute as @p if entity @a[r=60,tag=mahoraga_fight] run stopsound @a music.mahoraga
execute as @p if entity @a[r=60,tag=mahoraga_fight] run stopsound @a music.thunderclap1
execute as @p if entity @a[r=60,tag=mahoraga_fight] run stopsound @a music.thunderclap2
execute as @p if entity @a[r=60,tag=mahoraga_fight] run playanimation @e[type=ds:mahoraga_ritual2,c=1] animation.mahoraga.death
execute as @p if entity @a[r=60,tag=mahoraga_fight] run tag @e[tag=mahoraga_fight] remove mahoraga_fight
tp @s ~ ~-70~


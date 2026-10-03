particle ds:ground_slam3
particle ds:rubble3
particle mcdp_v:knockback_roar_particle_2
camerashake add @a[r=15] 3 0.25
playsound random.explode @a ~~~ 1 0.5
playsound random.explode @a ~~~ 1 0.25
summon ds:oxrushex ~~1~
damage @e[r=5,tag=!Frames,type=!ds:oxrushex,family=!projectile] 20 entity_attack entity @e[type=ds:piercingox,c=1]
scoreboard players set @e[r=5,tag=!Frames,type=!ds:oxrushex,family=!projectile] Stun 35
execute as @e[r=5,tag=!Frames,type=!ds:oxrushex,family=!projectile] at @s run summon ds:knockback ^^^1

execute as @p if entity @e[family=mahoraga,r=35] run function damage/explosion_damage


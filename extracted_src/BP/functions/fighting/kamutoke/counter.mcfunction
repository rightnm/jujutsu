playanimation @s animation.kamutoke_parry2
tag @s add Frames
scoreboard players set @s Frames 6
execute as @s at @s anchored eyes positioned ^^^1 run execute as @e[tag=!Frames,r=5] at @s run tp @s ~~~ facing @e[hasitem={item=ds:kamutoke},c=1,rm=0.5]
execute as @s at @s anchored eyes positioned ^^^1 run damage @e[tag=!Frames,r=5] 6 override
execute as @s at @s anchored eyes positioned ^^^1 run scoreboard players set @e[tag=!Frames,r=5] Hit 3
execute as @s at @s anchored eyes positioned ^^^1 run scoreboard players add @e[tag=!Frames,r=5] Evade 2
execute as @s at @s anchored eyes positioned ^^^1 run scoreboard players add @e[tag=!Frames,r=5] Flourish 3
execute as @s at @s anchored eyes positioned ^^^1 run scoreboard players add @e[tag=!Frames,r=5] shocked 12
execute as @s at @s anchored eyes positioned ^^^1 run tag @e[tag=!Frames,r=5,scores={shocked=1..}] add hltn
execute as @s at @s anchored eyes positioned ^^^1 run scoreboard players operation @e[tag=!Frames,r=5] damagehalf += @s damageadd
execute as @s at @s anchored eyes positioned ^^^1 run execute as @e[tag=!Frames,r=5] at @s run particle ds:heavy_impact2 ~~1~
execute as @s at @s anchored eyes positioned ^^^1 run particle ds:world_slash_charge9
execute as @s at @s anchored eyes positioned ^^^1 run particle ds:kamutoke_counter1
execute as @s at @s anchored eyes positioned ^^^1 run particle ds:kamutoke_counter2
execute as @s at @s anchored eyes positioned ^^^1 run particle ds:kamutoke_counter3
execute as @s at @s anchored eyes positioned ^^^1 run particle ds:kamutoke_counter4
execute as @s at @s anchored eyes positioned ^^^1 run playsound item.trident.throw @a[r=100] ~~~ 9999 0.64 9999
execute as @s at @s anchored eyes positioned ^^^1 run playsound mob.electricity @a[r=100] ~~~ 9999 1.64 9999
execute as @s at @s anchored eyes positioned ^^^1 run function damages/electric_damage

camerashake add @a[r=10] 0.15 0.08
scoreboard players set @s move 0
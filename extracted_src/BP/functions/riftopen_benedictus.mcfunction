execute as @p[r=60] run particle ds:large_shockwave1 ~~5~
execute as @p[r=60] run particle ds:large_shockwave ~~5~
execute as @p[r=60] unless entity @e[type=ds:rift,r=100] run summon ds:rift "benedictusrift" ~~5~
execute as @p[r=60] run fill ~10~10~10~-10~-10~-10 chiseled_quartz_block [] replace repeating_command_block
execute as @p[r=60] run playsound mob.distort3 @a ~~~ 999999 0.25 999999
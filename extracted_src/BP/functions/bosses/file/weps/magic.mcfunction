particle ds:shard_make2
particle ds:shard_make3

execute if entity @e[type=ds:rift_prison,r=7] run function bosses/file/weps/magic_land 
execute if entity @e[type=ds:chaos,r=15] run function bosses/file/weps/magic_land 
execute positioned ~~-15~ if entity @e[type=ds:chaos,r=15] run function bosses/file/weps/magic_land 
execute positioned ~~-30~ if entity @e[type=ds:chaos,r=15] run function bosses/file/weps/magic_land 
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 15
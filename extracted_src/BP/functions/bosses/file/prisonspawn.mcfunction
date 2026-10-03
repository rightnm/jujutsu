execute unless entity @e[type=ds:rift_prison] positioned -59936 260 -59937 run scoreboard objectives add prison dummy
execute unless entity @e[type=ds:rift_prison] positioned -59936 260 -59937 run scoreboard players set @a[r=300] prison 1
execute unless entity @e[type=ds:rift_prison] run summon ds:rift_prison -59936 260 -59937
tag @e[type=ds:rift_prison] add big
scoreboard objectives add prisonspawned dummy
scoreboard players set @a[r=200] prisonspawned 1
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air [] replace repeating_command_block

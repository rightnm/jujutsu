damage @e[tag=!Frames,r=2.99,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 60 override
scoreboard players set @e[tag=!Frames,r=2.99,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 40
scoreboard players set @e[tag=!Frames,r=2.99,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
scoreboard players add @e[tag=!Frames,r=2.99,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 40
scoreboard players add @e[tag=!Frames,r=2.99,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 50
particle ds:pyro_beam1
particle ds:pyro_beam2
particle ds:pyro_beam3
particle ds:pyro_beam4
particle ds:pyro_beam5
execute as @p[tag=griefable] run function flames/heat3x3
execute as @p[tag=griefable] run fill ~4~4~4~-4~-4~-4 magma [] replace stone
execute as @p[tag=griefable] run fill ~4~4~4~-4~-4~-4 magma [] replace cobblestone
execute as @p[tag=griefable] run fill ~4~4~4~-4~-4~-4 glass [] replace sand
execute as @p[tag=griefable] run fill ~4~4~4~-4~-4~-4 glass [] replace red_sand
execute as @p[tag=griefable] run kill @e[type=falling_block,r=4]
kill @e[type=arrow,r=4]
execute as @p[c=1] if entity @a[tag=griefable] unless block ~~~ air unless block ~~~ bedrock unless block ~~~ obsidian run function 4x4sphere
execute as @e[c=1] run function damages/explosion_damage
execute as @a[c=1,r=100] positioned ^^^2.01 run function flames/pyro_beam

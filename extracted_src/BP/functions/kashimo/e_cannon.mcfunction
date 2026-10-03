tickingarea remove ecannon
tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 ecannon
damage @e[r=10,tag=!energy_adapted,tag=!form5c,tag=!mythicalbeastamber,tag=!form7s,tag=!form6s,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 8 suicide
damage @e[r=10,tag=energy_adapted,tag=!form5c,tag=!mythicalbeastamber,tag=!form7s,tag=!form6s,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 3 suicide
damage @e[r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 4
scoreboard players set @e[r=10,tag=!form5c,tag=!mythicalbeastamber,tag=!form7s,tag=!form6s,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Stun 35
scoreboard players set @e[r=10,tag=!form5c,tag=!mythicalbeastamber,tag=!form7s,tag=!form6s,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3
scoreboard players add @e[r=10,tag=!form5c,tag=!mythicalbeastamber,tag=!form7s,tag=!form6s,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 1
particle ds:electro_cannon1
particle ds:electro_cannon2
particle ds:electro_cannon3
kill @e[type=falling_block,r=25]
kill @e[type=item,r=25]
kill @e[type=xp_orb,r=25]
kill @e[type=arrow,r=25]
execute as @p[tag=griefable] if entity @e[scores={move=20..32},c=1] run fill ~6~6~6~-6~-6~-6 magma [] replace stone
execute as @p[tag=griefable] if entity @e[scores={move=20..32},c=1] run fill ~6~6~6~-6~-6~-6 magma [] replace cobblestone
execute as @p[tag=griefable] if entity @e[scores={move=20..32},c=1] run fill ~6~6~6~-6~-6~-6 glass [] replace sand
execute as @p[tag=griefable] if entity @e[scores={move=20..32},c=1] run fill ~6~6~6~-6~-6~-6 glass [] replace red_sand
execute as @p[tag=form5c,tag=lightning,scores={move=25..27}] run particle ds:electro_cannon4
execute as @p[tag=form5c,tag=lightning,scores={move=25..27}] run particle ds:impact1
execute as @p[tag=form5c,tag=lightning,scores={move=25..27}] run particle ds:lightning_area1a
execute as @p[c=1] if entity @a[tag=griefable] if entity @e[scores={move=20..32},c=1]  unless block ~~~ air unless block ~~~ bedrock unless block ~~~ obsidian run summon ds:energy_explosion
execute as @p[c=1] if entity @a[tag=griefable] if entity @e[scores={move=20..32},c=1]  unless block ~~~ air unless block ~~~ bedrock unless block ~~~ obsidian run function 4x4sphere
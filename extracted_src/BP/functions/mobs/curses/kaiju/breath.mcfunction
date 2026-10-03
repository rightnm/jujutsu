

damage @e[r=15,tag=!energy_adapted,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] 33 override
damage @e[r=15,tag=energy_adapted,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] 15 override
damage @e[r=20,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] 4
scoreboard players set @e[r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] Stun 35
scoreboard players set @e[r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] Hit 3
scoreboard players add @e[r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:kaiju_curse] Evade 1

kill @e[type=falling_block,r=25]
kill @e[type=item,r=25]
kill @e[type=xp_orb,r=25]
kill @e[type=arrow,r=25]
execute as @p[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse] run fill ~6~6~6~-6~-6~-6 magma [] replace stone
execute as @p[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse] run fill ~6~6~6~-6~-6~-6 magma [] replace cobblestone
execute as @p[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse] run fill ~6~6~6~-6~-6~-6 glass [] replace sand
execute as @p[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse] run fill ~6~6~6~-6~-6~-6 glass [] replace red_sand
execute as @p[c=1] if entity @a[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse]  run summon ds:energy_explosion
execute as @p[c=1] if entity @a[tag=griefable] if entity @e[scores={move=240..340},c=1,type=ds:kaiju_curse]  unless block ~~~ air unless block ~~~ bedrock unless block ~~~ obsidian run function 4x4sphere
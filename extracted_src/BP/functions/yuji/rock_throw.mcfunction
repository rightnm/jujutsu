execute unless entity @s[scores={Deleter=-99..},type=!player] run playanimation @s animation.rock.idle
execute unless entity @s[scores={Deleter=-99..},type=!player] run scoreboard players set @s Deleter 39
execute as @e[type=ds:projectile,name=rockthrow_trg,r=60,c=1] at @s unless entity @s[scores={Deleter=-99..}] run scoreboard players set @s Deleter 40

execute as @e[type=ds:projectile,name=rockthrow_trg,r=60,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @e[type=ds:projectile,name=rockthrow_trg,r=60,c=1] at @s if block ~~-1~ air run tp @s ~~-1~

execute if entity @e[type=ds:projectile,name=rockthrow_trg,r=4,c=1] run scoreboard players set @s[scores={Deleter=4..}] Deleter 3
execute if entity @e[tag=!Frames,r=3.5,type=!ds:rock_throw,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players set @s[scores={Deleter=4..}] Deleter 3

execute if entity @e[family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:white_background,type=!ds:black_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:kokun_npc,type=!ds:bayer_npc,tag=!itemdrop,tag=!DomainExpansion,name=!rockthrow_trg,type=!ds:rock_throw,r=3.5] run particle ds:rubble3
execute if entity @e[family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:white_background,type=!ds:black_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:kokun_npc,type=!ds:bayer_npc,tag=!itemdrop,tag=!DomainExpansion,name=!rockthrow_trg,type=!ds:rock_throw,r=3.5] run particle ds:large_impact1
execute if entity @e[family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:white_background,type=!ds:black_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:kokun_npc,type=!ds:bayer_npc,tag=!itemdrop,tag=!DomainExpansion,name=!rockthrow_trg,type=!ds:rock_throw,r=3.5] run scoreboard players set @s[scores={Deleter=4..}] Deleter 3

execute unless block ~~-0.1~ air run scoreboard players set @s[scores={Deleter=4..}] Deleter 3

particle ds:ground_slam2
particle ds:large_impact2

tp @s[scores={Deleter=4..}] ^^^3 facing @e[type=ds:projectile,name=rockthrow_trg,r=60,c=1]

execute as @s[scores={Deleter=2}] at @s run particle ds:slam_dust2
execute as @s[scores={Deleter=2}] at @s run particle ds:slam_dust2
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_pound2
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_pound3
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_pound4
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_pound4b
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_slam1
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_slam3
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt0
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt1
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt2
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt3
execute as @s[scores={Deleter=2}] at @s run  camerashake add @a[r=100] 4 0.15
execute as @s[scores={Deleter=2}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 2.5 9999
execute as @s[scores={Deleter=2}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=2}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.875 9999
execute as @s[scores={Deleter=2}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=2}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999

execute as @s[scores={Deleter=2}] at @s run damage @e[tag=!Frames,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 40 override
execute as @s[scores={Deleter=2}] at @s run scoreboard players set @e[tag=!Frames,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={Deleter=2}] at @s run scoreboard players set @e[tag=!Frames,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={Deleter=2}] at @s run scoreboard players add @e[tag=!Frames,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 15
execute as @s[scores={Deleter=2}] at @s if entity @p[tag=griefable] run effect @e[r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={Deleter=2}] at @s if entity @p[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={Deleter=2}] at @s if entity @p[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={Deleter=2}] at @s run function damages/blunt_damage

event entity @s[scores={Deleter=-99..1}] ds:disappear

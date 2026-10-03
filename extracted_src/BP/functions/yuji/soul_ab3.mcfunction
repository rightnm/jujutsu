playanimation @s[scores={move=20..21}] animation.soul_shrine.ab3
tag @s[scores={move=1..2},tag=form3] remove form3

effect @s[scores={move=3..20}] slow_falling 1 0 true
effect @s[scores={move=1..2}] slow_falling 0 1 true
scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=21..}] Camera 6
scoreboard players set @s[scores={move=5..}] Frames 6

execute as @s[scores={move=970..990}] at @s run scoreboard players set @a[r=10] Camera 6

execute as @s[scores={move=6}] at @s anchored eyes positioned ^^^8.1 run function yuji/soul_ab3_trg
execute as @s[scores={move=4..6}] at @s unless entity @e[tag=takedown,r=100,c=1] run scoreboard players set @s move 2
execute as @s[scores={move=4..6}] at @s if entity @e[tag=takedown,r=100,c=1] run scoreboard players set @s move 1001

execute as @s[scores={move=5..7}] at @s run particle ds:flashstep1
execute as @s[scores={move=5..7}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 2
execute as @s[scores={move=5..7}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.5

execute as @s[scores={move=999..}] at @s run particle ds:flashstep1 ^^^-4
execute as @s[scores={move=999..}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 2
execute as @s[scores={move=999..}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.5


playanimation @s[scores={move=1000..1001}] animation.soul_shrine.ab3b

execute as @s[scores={move=1000..1001}] at @s run execute as @e[tag=takedown,r=100,c=1] at @s run tp @s @s
execute as @s[scores={move=1000..1001}] at @s at @e[tag=takedown,r=100,c=1] run tp @s ^^^0.25 facing @e[tag=takedown,r=0.25,c=1]

execute as @s[scores={move=30..999}] at @s run tp @e[tag=takedown,r=5,c=1] ^^^0.25 facing @s

execute as @s[scores={move=30..994}] at @s run scoreboard players set @e[tag=takedown,r=5,c=1] Stun 30
execute as @s[scores={move=30..994}] at @s as @e[tag=takedown,r=5,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim
execute as @s[scores={move=30..994}] at @s run playanimation @e[tag=takedown,r=5,c=1] animation.knock


execute as @s[scores={move=900..965}] at @s run tag @e[tag=takedown,r=100,c=1] remove takedown
scoreboard players set @s[scores={move=900..965}] move 2

execute as @s[scores={move=994..}] at @s run scriptevent ds:downfall

execute as @s[scores={move=994}] at @s run playsound mob.rapidcleave @a[r=100] ~~~ 99999 0.9 99999

execute as @s[scores={move=994}] at @s run particle ds:ground_slam1
execute as @s[scores={move=994}] at @s run particle ds:ground_slam2
execute as @s[scores={move=994}] at @s run particle ds:ground_pound1
execute as @s[scores={move=994}] at @s run particle ds:ground_pound2
execute as @s[scores={move=994}] at @s run particle ds:ground_pound3
execute as @s[scores={move=994}] at @s run particle ds:ground_pound4
execute as @s[scores={move=994}] at @s run particle ds:large_impact1
execute as @s[scores={move=994}] at @s run particle ds:large_impact2
execute as @s[scores={move=994}] at @s run particle ds:rubble3
execute as @s[scores={move=970..}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=994}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=994}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=994}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=994}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=997}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=994}] at @s run camerashake add @a[r=150] 4 0.25
execute as @s[scores={move=994}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={move=994}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=994}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
execute as @s[scores={move=994}] at @s run damage @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 10 suicide entity @s
execute as @s[scores={move=994}] at @s run scoreboard players operation @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=994}] at @s run function damages/blunt_damage

execute as @s[scores={move=989..990},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=989..990}] at @s run camera @a[r=10] set minecraft:free pos ^3^3^1 facing ^^^0.25
execute as @s[scores={move=970..990}] at @s run camerashake add @a[r=10] 0.15 0.1
execute as @s[scores={move=970..990}] at @s run particle ds:ground_pound3 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:ground_soul_cleave1 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:large_impact1 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:ground_soul_cleave2 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:ground_soul_cleave3 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:ground_soul_cleave4 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:blood_mist2 ^^^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:blood_2 ^^1^0.25
execute as @s[scores={move=970..990}] at @s run particle ds:domain_breaker5 ^^^0.25
execute as @s[scores={move=970..975}] at @s run particle ds:floor_cuts ~~0.18~
execute as @s[scores={move=970..990}] at @s if entity @e[tag=takedown,r=5,c=1] run function damages/soul_damage
execute as @s[scores={move=970..990}] at @s if entity @e[tag=takedown,r=5,c=1] run function damages/cleave_damage
execute as @s[scores={move=970..990}] at @s run damage @e[tag=takedown,r=5,c=1] 2 suicide entity @s
execute as @s[scores={move=970..985}] at @s run scoreboard players add @e[tag=takedown,r=5,c=1] antiheal 9
execute as @s[scores={move=970..985}] at @s run scoreboard players add @e[tag=takedown,r=5,c=1] Evade 1

execute as @s[scores={move=966}] at @s run particle ds:floor_cuts2 ~~0.18~
 
execute as @s[scores={move=970..990}] at @s run execute as @e[scores={detect_health=0..1},tag=takedown,r=5,c=1] at @s run particle ds:blood_mist ~~~


execute as @s[scores={move=972}] at @s run camerashake add @a[r=25] 2.5 0.15
execute as @s[scores={move=972}] at @s run particle ds:invert ^1^1^1
execute as @s[scores={move=972}] at @s run summon gg:impact_frame
execute as @s[scores={move=970}] at @s run function clear_impframe

execute as @s[scores={move=970}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=973}] at @s run summon gg:impact_frame
execute as @s[scores={move=972}] at @s run particle ds:red_tint ^1^1^1
execute as @s[scores={move=970}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:ground_slam2 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:ground_pound1 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:ground_pound2 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:ground_pound3 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:ground_pound4 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:large_impact1 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:large_impact2 ^^^0.25
execute as @s[scores={move=970}] at @s run particle ds:rubble3 ^^^0.25


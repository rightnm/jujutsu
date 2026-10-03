playanimation @s[scores={move=15..16}] animation.soul_shrine.ab2

playanimation @s[scores={move=14..16,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=14..16,Stun=1..}] move 2

execute as @s[scores={move=15}] at @s run playsound mob.bat.takeoff @a ~~~ 1 0.74

effect @s[scores={move=15}] slowness 1 2 true

tag @s[scores={move=1..2},tag=form2] remove form2

scoreboard players set @s[scores={move=9..14}] Frames 5
scoreboard players set @s[scores={move=9..8}] atk 2

execute as @s[scores={move=10..14}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=8..12}] at @s unless block ~~-0.2~ air run particle ds:dust
execute as @s[scores={move=9}] at @s  run effect @e[r=2.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 4 3 true
execute as @s[scores={move=9}] at @s  run playsound mob.slash1 @a ~~~ 0.2 1.25
execute as @s[scores={move=9}] at @s  run playsound mob.slash @a ~~~ 0.2 1.25
execute as @s[scores={move=9}] at @s  run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=9}] at @s  run playsound mob.wither.hurt @a ~~~ 0.2 2

execute as @s[scores={move=8..9}] at @s  run function damages/slash_damage
execute as @s[scores={move=8..9}] at @s  run function damages/soul_damage

execute as @s[scores={move=9}] at @s  run  particle ds:ankle_cleave1
execute as @s[scores={move=9}] at @s  run  particle ds:ankle_cleave2
execute as @s[scores={move=9}] at @s  run  particle ds:ankle_cleave3
execute as @s[scores={move=9}] at @s  run  particle ds:antiheal2
execute as @s[scores={move=9}] at @s  run  particle ds:antiheal3
execute as @s[scores={move=9}] at @s  run  particle ds:antiheal4


execute as @s[scores={move=8..9}] at @s run tag @e[scores={detect_health=0..20},tag=!Frames,r=4.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add anklecut_finisher
execute as @s[scores={move=8..9}] at @s if entity @e[scores={detect_health=0..20},tag=!Frames,r=4.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 1001

execute as @s[scores={move=8..9}] at @s  run damage @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 15 entity_attack entity @s
execute as @s[scores={move=9}] at @s  run scoreboard players set @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 3
execute as @s[scores={move=9}] at @s  run scoreboard players add @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 11
execute as @s[scores={move=9}] at @s  run scoreboard players set @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 30
execute as @s[scores={move=9}] at @s  run scoreboard players add @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] antiheal 100
execute as @s[scores={move=9}] at @s  run effect @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 3 1 true
execute as @s[scores={move=9}] at @s  run execute as @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:spinecut1 ~~-0.75~
execute as @s[scores={move=9}] at @s  run execute as @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:blood_splat ~~-0.75~
execute as @s[scores={move=9}] at @s  run execute as @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.sword @a ~~1~ 0.7 1.15
execute as @s[scores={move=9}] at @s  run execute as @e[r=4.5,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.slice @a ~~1~ 0.7 1

playanimation @s[scores={move=1000..}] animation.soul_shrine.ab2b
execute as @s[scores={move=1000..}] at @s run playanimation @e[tag=anklecut_finisher,r=10,c=1] animation.soul_shrine.ab2_hit

effect @e[tag=anklecut_finisher,r=10,c=1] slowness 1 10 true
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[tag=anklecut_finisher,r=10,c=1] Stun 25
execute as @s[scores={move=100..}] at @s run scoreboard players set @a[r=10] Camera 10



execute as @s[scores={move=1000..}] at @s run tp @s @s
execute as @s[scores={move=1000..}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run tp @s @s

execute as @s[scores={move=999}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run playsound mob.blood @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=998..999}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run particle ds:blood_2 ~~1~
execute as @s[scores={move=997..999}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run particle ds:blood_splat ~~-0.5~

execute as @s[scores={move=995..996}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run tp @e[scores={move=995..996},r=10,c=1] ^^^1 facing @s
execute as @s[scores={move=994..995}] at @s run camera @a[r=10] set minecraft:free pos ^5^1^0.5 facing ^^1^0.5

execute as @s[scores={move=972}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=972}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run playsound mob.blood2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=972}] at @s run execute as @e[tag=anklecut_finisher,r=10,c=1] at @s run playsound mob.blood @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=972}] at @s if block ~~~ air run setblock ~~~ light_block ["block_light_level"=14]
execute as @s[scores={move=971}] at @s run summon gg:impact_frame
execute as @s[scores={move=970}] at @s run function clear_impframe
execute as @s[scores={move=971}] at @s run camerashake add @a[r=100] 4 0.25
execute as @s[scores={move=971}] at @s run particle ds:dirt02
execute as @s[scores={move=971}] at @s run particle ds:rubble3 ^^^1
execute as @s[scores={move=971}] at @s run particle ds:blood_splat ^^^1
execute as @s[scores={move=971}] at @s run particle ds:blood_splat ^^^1
execute as @s[scores={move=971}] at @s run particle ds:blood_splat ^^^1
execute as @s[scores={move=971}] at @s run particle ds:blood_splat ^^^1
execute as @s[scores={move=971}] at @s run particle ds:blood_2 ^^1^1 
execute as @s[scores={move=971}] at @s run particle ds:blood_2 ^^1^1 
execute as @s[scores={move=971}] at @s run particle ds:blood_2 ^^1^1 
execute as @s[scores={move=971}] at @s run particle ds:blood_2 ^^1^1 
execute as @s[scores={move=971}] at @s run particle ds:blood_mist ^^1^1
execute as @s[scores={move=971}] at @s run scoreboard players set @e[tag=anklecut_finisher,r=10,c=1] dying 45

camera @s[scores={move=970},type=player] fade time 0.2 0 0.2 color 0 0 0

execute as @s[scores={move=966..967}] at @s run tag @e[tag=anklecut_finisher,r=100,c=1] remove anklecut_finisher
execute as @s[scores={move=966..967}] at @s run scoreboard players set @s move 2


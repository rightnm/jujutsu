tag @s[scores={move=86..,Stun=1..},tag=wep3v2] remove wep3v2
playanimation @s[scores={move=86..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=86..,Stun=1..}] move 0

scoreboard players set @s[scores={move=6..}] Move 15
playanimation @s[scores={move=86..}] animation.black_fists.ab3


execute as @s[scores={move=86..}] at @s run camerashake add @a[r=5] 0.08 0.08

execute as @s[scores={move=86}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=86}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.25 99999

execute as @s[scores={move=86..}] at @s run particle ds:turbo_intensity1 ~~-0.5~
execute as @s[scores={move=86..}] at @s run particle ds:turbo_intensity2 ~~-0.5~
execute as @s[scores={move=86..}] at @s run particle ds:turbo_intensity3 ~~-0.5~

execute as @s[scores={move=86}] at @s run particle ds:large_impact1
execute as @s[scores={move=86}] at @s run particle ds:dirt2
execute as @s[scores={move=86}] at @s run particle ds:leap
execute as @s[scores={move=86}] at @s run particle ds:ground_slam2
execute as @s[scores={move=86}] at @s run particle ds:ground_slam3
execute as @s[scores={move=86}] at @s run particle ds:rubble3
execute as @s[scores={move=86}] at @s run particle ds:crater
execute as @s[scores={move=86}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=86}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=86}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=86}] at @s run camerashake add @a[r=50] 2 0.15
execute unless block ~~-0.25~ air run tp @s[type=!player,scores={move=86}] ~~0.25~
execute as @s[scores={move=85..86}] at @s run scriptevent ds:leapforwards2


execute as @s[scores={move=83..85},type=player] at @s if block ~~-1~ air if block ~~-1.25~ air run scoreboard players set @s move 84
execute as @s[scores={move=83..85},type=!player] at @s if block ~~-0.25~ air run scoreboard players set @s move 84
scoreboard players set @s[scores={move=83..85}] atk 2
execute as @s[scores={move=83..85}] at @s unless block ~~-0.25~ air run scoreboard players set @s move 82

playanimation @s[scores={move=83..85,Stun=1..},tag=!noStunnedAnim] animation.knock
scoreboard players set @s[scores={move=83..85,Stun=1..}] move 2

playanimation @s[scores={move=83..85}] animation.black_fists.ab3_hold


effect @s[scores={move=81..82}] speed 1 20 true
scoreboard players set @s[scores={move=81..82}] Camera 75
scoreboard players set @s[scores={move=81..82}] Frames 75
execute as @s[scores={move=81..82}] at @s run scriptevent ds:downfall

execute as @s[scores={move=1..78}] at @s run tp @s ~~~

execute as @s[scores={move=23..24}] at @s run scriptevent ds:downfall


execute as @s[scores={move=79}] at @s run particle ds:ground_slam1
execute as @s[scores={move=79}] at @s run particle ds:ground_slam2
execute as @s[scores={move=79}] at @s run particle ds:ground_pound1
execute as @s[scores={move=79}] at @s run particle ds:ground_pound2
execute as @s[scores={move=79}] at @s run particle ds:ground_pound3
execute as @s[scores={move=79}] at @s run particle ds:ground_pound4
execute as @s[scores={move=79}] at @s run particle ds:large_impact1
execute as @s[scores={move=79}] at @s run particle ds:large_impact2
execute as @s[scores={move=79}] at @s run particle ds:rubble3
execute as @s[scores={move=77..81}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=79}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=79}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=79}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=79}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=81}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=79}] at @s run camerashake add @a[r=150] 4 0.25
execute as @s[scores={move=79}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={move=79}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=78..79}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
execute as @s[scores={move=79}] at @s run damage @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 10 override entity @s
execute as @s[scores={move=79}] at @s run scoreboard players operation @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=79}] at @s run function damages/blunt_damage


execute as @s[scores={move=69}] at @s run particle ds:ground_slam1
execute as @s[scores={move=69}] at @s run particle ds:ground_slam2
execute as @s[scores={move=69}] at @s run particle ds:ground_pound1b
execute as @s[scores={move=69}] at @s run particle ds:ground_pound2
execute as @s[scores={move=69}] at @s run particle ds:ground_pound3
execute as @s[scores={move=69}] at @s run particle ds:ground_pound4b
execute as @s[scores={move=69}] at @s run particle ds:large_impact1
execute as @s[scores={move=69}] at @s run particle ds:large_impact2
execute as @s[scores={move=69}] at @s run particle ds:rubble3
execute as @s[scores={move=67..71}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=69}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=69}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=69}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=69}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=72}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.35 99999
execute as @s[scores={move=69}] at @s run camerashake add @a[r=150] 4 0.25
execute as @s[scores={move=69}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={move=69}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=68..69}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 60
execute as @s[scores={move=69}] at @s run damage @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 10 override entity @s
execute as @s[scores={move=69}] at @s run scoreboard players operation @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=69}] at @s run function damages/blunt_damage


execute as @s[scores={move=56}] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 99999 0.8 99999
execute as @s[scores={move=56}] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 99999 1.25 99999
execute as @s[scores={move=56}] at @s run playsound beacon.activate @a[r=100] ~~1~ 99999 1.8 99999
execute as @s[scores={move=56}] at @s run camerashake add @a[r=100] 0.05 0.25

scoreboard players set @s[scores={move=33..38}] move 32

execute as @s[scores={move=29}] at @s run particle ds:ground_slam1
execute as @s[scores={move=29}] at @s run particle ds:ground_slam2
execute as @s[scores={move=29}] at @s run particle ds:ground_pound1b
execute as @s[scores={move=29}] at @s run particle ds:ground_pound2
execute as @s[scores={move=29}] at @s run particle ds:ground_pound3
execute as @s[scores={move=29}] at @s run particle ds:ground_pound4b
execute as @s[scores={move=29}] at @s run particle ds:large_impact1
execute as @s[scores={move=29}] at @s run particle ds:large_impact2
execute as @s[scores={move=29}] at @s run particle ds:rubble3
execute as @s[scores={move=31..50}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=30}] at @s positioned ^^^0.25 run summon gg:impact_frame
execute as @s[scores={move=29}] at @s positioned ^^^0.25 run function clear_impframe
execute as @s[scores={move=30}] at @s positioned ^^^0.25 run playsound mob.shock1 @a[r=100] ~~~  99999 0.5 99999
execute as @s[scores={move=33}] at @s positioned ^^^0.25  run playsound mob.burst @a[r=100] ~~~  99999 1.5 99999
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run playsound mob.wither_break_block @a[r=100] ~~~  99999 0.35 99999
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run camerashake add @a[r=100] 3 0.15
execute as @s[scores={move=27..30}] at @s positioned ^^^0.25  run particle ds:divergent_ac1
execute as @s[scores={move=27..30}] at @s positioned ^^^0.25  run particle ds:divergent_ac2
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:divergent_ac3
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:divergent_ac4
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:divergent_ac5
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:divergent_ac6
execute as @s[scores={move=25..30}] at @s positioned ^^^0.25  run particle ds:divergentslam1
execute as @s[scores={move=25..30}] at @s positioned ^^^0.25  run particle ds:divergentslam1b
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:crater2
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:dirt0
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:dirt2
execute as @s[scores={move=30}] at @s positioned ^^^0.25  run particle ds:rubble3

scoreboard players set @s[scores={move=23..28}] move 22


execute as @s[scores={move=19..80}] at @s run playanimation @e[tag=!Frames,r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Stun=1..}] animation.knock
execute as @s[scores={move=19..80}] at @s run effect @e[tag=!Frames,r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={Stun=1..}] slowness 1 10 true

execute as @s[scores={move=19}] at @s run particle ds:dirt0
execute as @s[scores={move=19}] at @s run particle ds:dirt2
execute as @s[scores={move=19}] at @s run particle ds:dirt3
execute as @s[scores={move=19}] at @s run particle ds:slam_dust2
execute as @s[scores={move=19}] at @s run particle ds:large_slam1
execute as @s[scores={move=19}] at @s run particle ds:large_slam2
execute as @s[scores={move=19}] at @s run particle ds:ground_pound1b
execute as @s[scores={move=19}] at @s run particle ds:ground_pound2
execute as @s[scores={move=19}] at @s run particle ds:ground_pound3
execute as @s[scores={move=19}] at @s run particle ds:ground_pound4b
execute as @s[scores={move=19}] at @s run particle ds:large_impact1
execute as @s[scores={move=19}] at @s run particle ds:large_impact2
execute as @s[scores={move=19}] at @s run particle ds:rubble3
execute as @s[scores={move=20}] at @s positioned ^^^0.25 run summon gg:impact_frame
execute as @s[scores={move=18}] at @s positioned ^^^0.25 run function clear_impframe
execute as @s[scores={move=20}] at @s positioned ^^^0.25 run particle ds:invert ^3^3^0.85
execute as @s[scores={move=22}] at @s positioned ^^^0.25 run particle ds:blue_tint ^3^3^0.85
execute as @s[scores={move=20}] at @s positioned ^^^0.25 run playsound mob.shock1 @a[r=100] ~~~  99999 2 99999
execute as @s[scores={move=22}] at @s positioned ^^^0.25  run playsound mob.burst @a[r=100] ~~~  99999 4 99999
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run playsound mob.wither_break_block @a[r=100] ~~~  99999 0.5 99999
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=17..20}] at @s positioned ^^^0.25  run particle ds:divergent_ac1
execute as @s[scores={move=17..20}] at @s positioned ^^^0.25  run particle ds:divergent_ac2
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:divergent_ac3
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:divergent_ac4
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:divergent_ac5
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:divergent_ac6
execute as @s[scores={move=17..20}] at @s positioned ^^^0.25  run particle ds:divergentslam2
execute as @s[scores={move=17..20}] at @s positioned ^^^0.25  run particle ds:divergentslam2b
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:crater2
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:dirt0
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:dirt2
execute as @s[scores={move=20}] at @s positioned ^^^0.25  run particle ds:rubble3
execute as @s[scores={move=19}] at @s run function damages/blunt_damage



execute as @s[scores={move=19}] at @s run scoreboard players set @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={move=19}] at @s run scoreboard players set @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=18..19}] at @s run scoreboard players set @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 30
execute as @s[scores={move=19}] at @s run scoreboard players add @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 25
execute as @s[scores={move=19}] at @s run damage @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 20 override entity @s
execute as @s[scores={move=19}] at @s run scoreboard players operation @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd



tag @s[scores={move=1..2},tag=wep3v2] remove wep3v2
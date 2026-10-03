tickingarea remove UnlimitedVoid
execute as @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 UnlimitedVoid

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

execute as @e[name=UnlimitedBarrier,c=1] at @s run function limitless/unlimited_barrier

execute as @a[scores={domainactive=1..,Energy=0..1,domain=0,Disabled=0,Disabled2=0}] at @s run scoreboard players set @e[name=UnlimitedVoid,r=50,c=1] Deleter 31

execute as @s[name=UnlimitedVoid,scores={Deleter=33..}] at @s unless entity @a[tag=limitless,scores={domainactive=1..},r=50] run scoreboard players set @s Deleter 32

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run kill @e[type=item,r=60]

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye ^^1^35

execute as @s[name=UnlimitedVoid,scores={Deleter=31..}] at @s run playsound ambient.crimson_forest.mood @a[r=50] ^^^35 99999 0.85 9999

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run kill @e[type=arrow,r=60]
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye1 ^^1^35
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye1c ^^1^35.5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye1b ^^1^36
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye2 ^^1^35
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_eye3 ^^1^36
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=7..}] at @s run particle ds:unlimited_eye4 ^^1^32
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=14}] at @s run particle ds:unlimited_eye5 ^^1^32
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void6 ^^1^32

execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=7..10}] at @s run particle ds:unlimited_void1b ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=16}] at @s run particle ds:unlimited_void_paint1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=11}] at @s run particle ds:unlimited_void_paint2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=6}] at @s run particle ds:unlimited_void_paint3 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=1}] at @s run particle ds:unlimited_void_paint4 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Evade=1}] at @s run particle ds:unlimited_void_paint5 ~~1~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=50] at @s run function damages/unlimitedvoid
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[c=1,scores={wheelactive=1..},r=50,tag=!domainactive] at @s positioned ^^^2 run function damages/unlimitedvoid

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=60,tag=!domainactive,tag=!domainimmune] infinity 3

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:domain_barrierv2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void_background1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void_floor ~~1~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=14}] at @s run execute as @e[type=!item,type=!xp_orb,r=40,type=!ds:projectile,type=!armor_stand,type=!bat,family=!damage,family=!projectile,type=!arrow,family=!despawncito,tag=!unselect] at @s if block ~~-1~ barrier run particle ds:unlimited_void_splash ~ 300.85 ~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..,Energy=14}] at @s run execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!ds:projectile,type=!armor_stand,type=!bat,family=!damage,family=!projectile,type=!arrow,family=!despawncito,tag=!unselect] at @s if block ~~-1~ barrier anchored eyes run particle ds:information ~ ~ ~

execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s[name=UnlimitedVoid,scores={Deleter=1..}] Energy 0
scoreboard players remove @s[name=UnlimitedVoid,scores={Energy=1..}] Energy 1
scoreboard players set @s[name=UnlimitedVoid,scores={Energy=0}] Energy 14

execute unless entity @s[scores={Evade=0..}] run scoreboard players add @s[name=UnlimitedVoid,scores={Deleter=1..}] Evade 0
scoreboard players remove @s[name=UnlimitedVoid,scores={Evade=1..}] Evade 1
scoreboard players set @s[name=UnlimitedVoid,scores={Evade=0}] Evade 16


execute as @s[name=UnlimitedVoid,scores={Deleter=22..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=22..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=22..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[name=UnlimitedVoid,scores={Deleter=22..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void1 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void2 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void3 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void4 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void5 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void7 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void8 ~~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run particle ds:unlimited_void9 ~~1~

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[type=!item,type=!xp_orb,r=40,rm=31,type=!ds:projectile] at @s run tp @s @s
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[type=!item,type=!xp_orb,r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^^ facing @e[name=UnlimitedVoid,c=1]
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run execute as @e[type=!item,type=!xp_orb,r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^5^5 facing @e[name=UnlimitedVoid,c=1]

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run tp @s @s
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Move 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Camera 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Disabled 5
execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s run scoreboard players remove @a[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,scores={Evade=1..},tag=!unselect] Evade 1
execute as @s[name=UnlimitedVoid,scores={Deleter=21..}] at @s run effect @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player] slowness 2 99 true
execute as @s[name=UnlimitedVoid,scores={Deleter=21..}] at @s run tag @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={Move=0..,move=0..,cutscene=0..},tag=!unlimited_hit] add unlimited_hit
execute as @s[name=UnlimitedVoid,scores={Deleter=21..}] at @s run tag @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={punch=1..},tag=!punch0] add punch0

execute as @s[name=UnlimitedVoid,scores={Deleter=1..}] at @s if entity @p[scores={domainactive=1..,ab=1..,move=1..},tag=limitless,r=90] run scoreboard players add @s Deleter 1

execute as @s[name=UnlimitedVoid,scores={Deleter=1..30}] at @s run scoreboard players set @e[r=90] Stun 6
execute as @s[name=UnlimitedVoid,scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=limitless,r=100] ~ ~1~
execute as @s[name=UnlimitedVoid,scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[name=UnlimitedVoid,scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[name=UnlimitedVoid,scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run execute as @e[r=50] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run execute as @e[r=50] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run execute as @e[r=50] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier

execute as @s[name=UnlimitedVoid,scores={Deleter=1..22}] at @s run execute as @e[r=50] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier

execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~30 301 ~30 ~-30 301 ~-30 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..21}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[name=UnlimitedVoid,scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[name=UnlimitedVoid,scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=UnlimitedBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[name=UnlimitedVoid,scores={Deleter=9..12}] at @s positioned ~~-200~0 run kill @e[name=UnlimitedBarrier,c=1] 
execute as @s[name=UnlimitedVoid,scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=1..},r=90] domainactive 2

execute as @s[name=UnlimitedVoid,scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!ds:projectile] at @s run tp @s ~~0.8~0

execute as @s[name=UnlimitedVoid,scores={Deleter=9..30}] at @s unless entity @e[scores={tpdown=0..},c=1] run scoreboard objectives add tpdown dummy
execute as @s[name=UnlimitedVoid,scores={Deleter=1..10}] at @s run scoreboard players set @e[r=90,type=!ds:projectile] tpdown 4


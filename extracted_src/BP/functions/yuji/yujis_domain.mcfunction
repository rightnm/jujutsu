tickingarea remove YujiDomain
execute as @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 YujiDomain

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

execute as @s[scores={Deleter=32..}] at @s if entity @a[scores={domainactive=1..,Energy=0..1,domain=0,Disabled=0,Disabled2=0},tag=yuji_awakened,r=50,c=1] run scoreboard players set @s Deleter 31


execute as @s[scores={Deleter=33..}] at @s unless entity @e[tag=yuji_awakened,scores={domainactive=1..},r=50,c=1] run scoreboard players set @s Deleter 32


execute as @s[scores={Deleter=1..}] at @s run kill @e[type=item,r=50]
execute as @s[scores={Deleter=1..}] at @s run kill @e[type=arrow,r=50]

execute as @s[scores={Deleter=1..}] at @s run execute as @e[family=mahoraga,r=50,c=1] at @s positioned ^^^2 run function damages/yujis_domain
execute as @s[scores={Deleter=1..}] at @s run execute as @e[scores={wheelactive=1..},tag=!domainactive,r=50,c=1] at @s positioned ^^^2 run function damages/yujis_domain

execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=50,tag=!domainactive,tag=!domainimmune] infinity 3

scoreboard players add @e[tag=!domainactive,r=50,scores={damage=1..}] damage 5

execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s[scores={Deleter=1..}] Energy 0
scoreboard players remove @s[scores={Energy=1..}] Energy 1


execute as @s[scores={Energy=0}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=50,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function yuji/yuji_domain_slash

scoreboard players set @s[scores={Energy=0}] Energy 70
                                                                                                                                                                                                               
execute as @s[scores={Energy=30..35}] at @s run tag @e[r=50,tag=blackflash_marked] remove blackflash_marked

particle ds:deadly_sentencing2 ~~1~

execute as @e[tag=blackflash_marked,r=50] at @s run particle ds:turbo_intensity4 ~~1~
execute as @e[tag=domainactive,scores={atk=1..2},r=50,c=1] at @s positioned ^^1^4 if entity @e[tag=blackflash_marked,r=3.9] run function yuji/domain_blackflash

execute positioned ~~-50~ run tp @e[r=40,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] ~~2.5~

tp @e[r=50,rm=37,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] ~~2.5~

scoreboard players set @s[scores={chance=3}] chance 0

execute unless entity @s[scores={Evade=0..}] run scoreboard players add @s[scores={Deleter=1..}] Evade 0
scoreboard players remove @s[scores={Evade=1..}] Evade 1
scoreboard players set @s[scores={Evade=0}] Evade 600

scoreboard players random @s[scores={Evade=2}] chance 1 3
playanimation @s[scores={chance=1}] animation.yuji_domain.start
playanimation @s[scores={chance=2}] animation.yuji_domain.start2
execute as @s[scores={chance=1..2,Evade=0..2}] at @s run playsound music.train @a[r=50]
scoreboard players set @s[scores={Evade=0..2,chance=!0}] chance 0

execute as @s[scores={Evade=598..599}] at @s run playsound ambient.warped_forest.loop @a[r=50]

execute as @s[scores={Deleter=26..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[scores={Deleter=26..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[scores={Deleter=26..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={Deleter=26..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=44,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~15 ~ ~15 ~-15 -15 ~-15 air [] replace barrier

execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=50,rm=30,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[type=ds:yuji_domain,r=50,c=1]
execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=50,rm=30,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ^^^7 facing @e[type=ds:yuji_domain,r=50,c=1]

execute as @s[scores={Deleter=1..}] at @s run tp @s @s

execute as @s[scores={Deleter=51..}] at @s if entity @e[scores={domainactive=1..,ab=1..,move=1..},tag=yuji_awakened,r=50,c=1] run scoreboard players add @s Deleter 1

execute as @s[scores={Deleter=1..30}] at @s run scoreboard players set @e[r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 6
execute as @s[scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=yuji_awakened,r=50,c=1] ~ ~1~
execute as @s[scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier

execute as @s[scores={Deleter=1..22}] at @s run execute as @e[r=50,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier

execute as @s[scores={Deleter=1..21}] at @s run fill ~30 301 ~30 ~-30 301 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[scores={Deleter=1..20}] at @s run stopsound @a[r=90] ambient.warped_forest.loop
execute as @s[scores={Deleter=1..20}] at @s run stopsound @a[r=90] music.train
execute as @s[scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[type=ds:projectile,name=YujiBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[type=ds:projectile,name=YujiBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[type=ds:projectile,name=YujiBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[scores={Deleter=9..12}] at @s positioned ~~-200~-0 run kill @e[type=ds:projectile,name=YujiBarrier,c=1] 
execute as @s[scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=3..},r=50,c=1] domainactive 2

execute as @s[scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~0.8~-0

execute as @s[scores={Deleter=1..10}] at @s run scoreboard players set @e[r=90,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!ds:yuji_domain] tpdown 4


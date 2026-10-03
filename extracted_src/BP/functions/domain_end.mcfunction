fill ~30 300 ~30 ~-30 300 ~-30 air
fill ~30 298 ~30 ~-30 298 ~-30 air
fill ~30 299 ~30 ~-30 299 ~-30 air
fill ~30 301 ~30 ~-30 301 ~-30 air 
fill ~15~15~15~-15~-15~-15 air [] replace barrier
fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 air 
fill ~30 ~-2 ~30 ~-30 ~-2 ~-30 air 
camera @a[r=50] fade time 0 0.5 0.25 color 255 255 255
scoreboard players set @e[r=50,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!DomainExpansion] tpdown 7
scoreboard players set @e[r=50,scores={domainactive=1..}] domainactive 0
event entity @e[type=ds:yuji_domain,r=50] ds:disappear
event entity @e[type=ds:resonant_chamber,r=50] ds:disappear
event entity @e[type=ds:perfection_domain,r=50] ds:disappear

kill @e[family=projectile,tag=DomainExpansion,r=50]
execute as @e[tag=blackflash_marked] at @s unless entity @e[type=ds:yuji_domain,r=50] run tag @s remove blackflash_marked


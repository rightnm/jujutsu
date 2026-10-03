scoreboard players operation @s[scores={damagehalf=1..}] damagehalf /= two endurance
scoreboard players operation @s[scores={damagehalf=1..}] damage += @s damagehalf


execute unless entity @s[tag=!domainamplification,tag=!pull_adapted] if entity @s[scores={damage=2..},tag=!damagehalf] at @e[rm=0.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] if entity @e[scores={bluefists=1..},r=0.15,c=1] run scoreboard players operation @s damage /= two Mode
execute unless entity @s[tag=!domainamplification,tag=!pull_adapted] if entity @s[scores={damage=1..},tag=!damagehalf] at @e[rm=0.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] if entity @e[scores={bluefists=1..},r=0.15,c=1] run tag @s add damagehalf

execute as @s[scores={damage=2..},tag=instant_body,tag=resistance_0.5x,tag=!damagehalf2,tag=!soul_damage] at @s run playsound mob.clang @a[r=33] ~~1~ 9999 2 9999
execute as @s[scores={damage=2..},tag=instant_body,tag=resistance_0.5x,tag=!damagehalf2,tag=!soul_damage] at @s run particle ds:full_parry ~~1~
scoreboard players operation @s[scores={damage=2..},tag=instant_body,tag=resistance_0.5x,tag=!damagehalf2,tag=!soul_damage] damage /= two Mode
tag @s[scores={damage=1..},tag=instant_body,tag=resistance_0.5x,tag=!damagehalf2,tag=!soul_damage] add damagehalf2



execute as @s[scores={damage=1..,Flourish=1..}] at @s if entity @e[scores={BasicM1s=4..},r=4,rm=0.1] at @s run playsound random.explode @a[r=60] ~~~ 99999 1.95 99999
execute as @s[scores={damage=1..,Flourish=1..}] at @s if entity @e[scores={BasicM1s=4..},r=4,rm=0.1] at @s run particle ds:heavy_impact1b ~~1~
execute unless entity @s[scores={Flourish=0..}] run scoreboard players add @s Flourish 0
execute as @s[scores={damage=1..,Flourish=0}] at @s unless entity @e[type=ds:red_reverse,r=7] if entity @e[scores={BasicM1s=1..},r=4,rm=0.1] run tp @s ~~~ facing @e[scores={BasicM1s=1..},r=4,rm=0.1,c=1]
execute as @s[scores={damage=1..,Flourish=0}] at @s unless entity @e[type=ds:red_reverse,r=7] if entity @e[scores={BasicM1s=1..},r=4,rm=0.1] run scriptevent ds:knockback -1
execute as @s[scores={damage=11..,Flourish=0}] at @s if entity @e[scores={blackflashing=1..},r=15] run tp @s ~~~

damage @s[scores={damage=1..}] 1 suicide entity @e[rm=0.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand]

scoreboard players remove @s[scores={damage=1..}] damage 1
scoreboard players set @s[scores={damagehalf=1..}] damagehalf 0
execute if entity @s[scores={damage=1..},type=player] run function damageadd
execute if entity @s[scores={damage=1..},family=hero,tag=!sukuna,tag=!curse,tag=!rogue_sorcerer,type=!player] at @e[rm=0.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!gg:impact_frame,type=!armor_stand] unless entity @e[r=0.15,c=1,family=hero,tag=!sukuna,tag=!curse,tag=!rogue_sorcerer,type=!player] at @s run function damageadd
execute if entity @s[scores={damage=1..},type=!player] unless entity @s[tag=!sukuna,tag=!rogue_sorcerer] run function damageadd
execute if entity @s[scores={damage=1..},family=special_grade,tag=!sukuna,tag=!rogue_sorcerer,type=!player] unless entity @s[family=!purecurse,tag=!curse] at @e[rm=0.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!gg:impact_frame,type=!armor_stand] unless entity @e[r=0.15,c=1,family=special_grade,tag=!sukuna,tag=!rogue_sorcerer,family=purecurse,type=!player] unless entity @e[r=0.15,c=1,family=special_grade,tag=!sukuna,tag=!rogue_sorcerer,tag=curse,type=!player] at @s run function damageadd
execute if entity @s[scores={damage=1..},family=!hero,tag=!sukuna,tag=!rogue_sorcerer,tag=!curse,family=!purecurse,type=!player] run function damageadd

scoreboard players set @s[scores={damage=!0}] damage 0
tag @s[tag=damagehalf] remove damagehalf
tag @s[tag=damagehalf2] remove damagehalf2
tag @s[tag=instant_body,tag=resistance_0.5x,tag=soul_damage] remove soul_damage
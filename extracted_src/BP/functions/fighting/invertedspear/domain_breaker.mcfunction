playanimation @s[scores={move=40}] animation.iverted_spear.ab3

tag @s[scores={move=1..2},tag=wep3] remove wep3

tag @s[scores={move=37..,Stun=1..},tag=wep3] remove wep3
playanimation @s[scores={move=37..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=37..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..37}] Frames 4
scoreboard players set @s[scores={move=4..37}] Move 4

execute as @s[scores={move=36..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~
execute as @s[scores={move=36..}] at @s if block ~~-1~ air run tp @s ~~-1~


execute as @s[scores={move=11..35}] at @s run function inverted_delete

execute as @s[scores={move=11..35}] at @s run playanimation @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!bat,family=!flyhead] animation.stunned i 0.1
scoreboard players set @s[scores={move=11..36}] atk 2
execute as @s[scores={move=35}] at @s run function damages/slash_damage
execute as @s[scores={move=30}] at @s run function damages/slash_damage
execute as @s[scores={move=25}] at @s run function damages/slash_damage
execute as @s[scores={move=20}] at @s run function damages/slash_damage
execute as @s[scores={move=15}] at @s run function damages/slash_damage9
execute as @s[scores={move=11..35}] at @s run playsound mob.slash1 @a ~~~ 0.15 2.2
execute as @s[scores={move=11..35}] at @s run playsound mob.slash1 @a ~~~ 0.15 1.5
execute as @s[scores={move=11..35}] at @s run playsound mob.witch.throw @a ~~~ 0.3 0.8
execute as @s[scores={move=10}] at @s run scoreboard players operation @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=11..35}] at @s run scoreboard players set @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
execute as @s[scores={move=11..35}] at @s run scoreboard players set @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 3
execute as @s[scores={move=11..35}] at @s run scoreboard players add @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 1
execute as @s[scores={move=11..35}] at @s run damage @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 1 override entity @s
execute as @s[scores={move=15..35}] at @s run scriptevent ds:knockback 0.3
execute as @s[scores={move=15..35}] at @s run execute as @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:knockback -0.3
execute as @s[scores={move=15..35}] at @s run camerashake add @a[r=8] 0.25 0.1
execute as @s[scores={move=15..35}] at @s run particle ds:domain_breaker1 ~~1.25~
execute as @s[scores={move=15..35}] at @s run particle ds:domain_breaker2 ~~1.25~
execute as @s[scores={move=15..35}] at @s run particle ds:domain_breaker3 ~~1.25~
execute as @s[scores={move=15..35}] at @s run particle ds:domain_breaker6 ~~1.25~
execute as @s[scores={move=15..35}] at @s unless block ~~-0.2~ air run particle ds:domain_breaker4
execute as @s[scores={move=15..35}] at @s unless block ~~-0.2~ air run particle ds:domain_breaker5

execute as @s[scores={move=20}] at @s if entity @e[tag=domainactive,r=55] run function domain_break

execute as @s[scores={move=11}] at @s if entity @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run playsound mob.slice @a[r=50]  ~~~ 99999 1 99999
execute as @s[scores={move=11..35}] at @s if entity @e[tag=!Frames,r=2.75,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999

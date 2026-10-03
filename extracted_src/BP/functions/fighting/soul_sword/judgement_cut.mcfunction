playanimation @s[scores={move=59..}] animation.soul_sword.ab5

tag @s[scores={move=1..5},tag=wep5] remove wep5

tag @s[scores={move=44..,Stun=1..},tag=wep5] remove wep5
playanimation @s[scores={move=44..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=44..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..41}] Camera 4
scoreboard players set @s[scores={move=11..}] Move 4
scoreboard players set @s[scores={move=11..44}] Frames 5

execute as @s[scores={move=20..}] at @s run tp @s @s


execute as @s[scores={move=60}] at @s run playsound mob.bass @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=60}] at @s run particle ds:judgement_cut_area1
execute as @s[scores={move=60}] at @s run particle ds:domain_area0

execute as @s[scores={move=1..40}] at @s run particle ds:judgement_cut_area2


execute as @s[scores={move=40}] at @s run function damages/slash_damage
execute as @s[scores={move=40}] at @s run function damages/soul_damage
execute as @s[scores={move=35}] at @s run function damages/slash_damage
execute as @s[scores={move=35}] at @s run function damages/soul_damage
execute as @s[scores={move=30}] at @s run function damages/slash_damage
execute as @s[scores={move=30}] at @s run function damages/soul_damage
execute as @s[scores={move=25}] at @s run function damages/slash_damage
execute as @s[scores={move=25}] at @s run function damages/soul_damage
execute as @s[scores={move=20}] at @s run function damages/slash_damage
execute as @s[scores={move=20}] at @s run function damages/soul_damage

effect @s[scores={move=22..40}] speed 1 20 true
effect @s[scores={move=20..21}] speed 0 40 true
execute as @s[scores={move=21..40}] at @s run camerashake add @a[r=20] 1 0.15
execute as @s[scores={move=21..40}] at @s run particle ds:judgement_cut_slashes1 ~~3~
execute as @s[scores={move=21..40}] at @s run particle ds:judgement_cut_slashes2 ~~3~
execute as @s[scores={move=21..40}] at @s unless block ~~-0.2~ air run particle ds:judgement_cut_slashes4 ~~0.1~
execute as @s[scores={move=21..40}] at @s run playsound mob.slash1 @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=21..40}] at @s run damage @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 3 suicide
execute as @s[scores={move=21..40}] at @s run scoreboard players set @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
execute as @s[scores={move=21..40}] at @s run scoreboard players set @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 4
execute as @s[scores={move=20..40}] at @s as @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] unless entity @s[scores={antiheal=100..}] run scoreboard players set @s antiheal 100
execute as @s[scores={move=21..40}] at @s run scoreboard players add @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] antiheal 6
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] antiheal 100
execute as @s[scores={move=20}] at @s run damage @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 30 suicide entity @s
execute as @s[scores={move=20}] at @s run scoreboard players operation @e[tag=!Frames,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=20}] at @s run particle ds:judgement_cut_slashes3 ~~3~
execute as @s[scores={move=20}] at @s run playsound mob.slice @a[r=20] ~~~ 9999 1.25 9999
execute as @s[scores={move=23}] at @s run playsound mob.slash1 @a[r=20] ~~~ 9999 1.2 9999
execute as @s[scores={move=20}] at @s run playsound mob.swordslash @a[r=20] ~~~ 9999 0.8 9999
execute as @s[scores={move=20}] at @s run camerashake add @a[r=20] 4 0.25


execute as @s[scores={move=20}] at @s run particle ds:ground_slam2 ~~1.5~
execute as @s[scores={move=20}] at @s run particle ds:ground_slam3 ~~1.5~
execute as @s[scores={move=20}] at @s run particle ds:large_slam1
execute as @s[scores={move=20}] at @s run particle ds:large_slam2
execute as @s[scores={move=20}] at @s run particle ds:large_slam3
execute as @s[scores={move=20}] at @s run particle ds:large_slam4
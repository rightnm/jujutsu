playanimation @s[scores={move=15..16}] animation.black_fists.ab5

playanimation @s[scores={move=5..16,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=5..16,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep5v2] remove wep5v2

scoreboard players set @s[scores={move=18..}] Frames 4
scoreboard players set @s[scores={move=4..}] Move 7
scoreboard players set @s[scores={move=18..}] Camera 5

scoreboard players set @a[tag=vengeancefists,r=30,c=1] Camera 5
scoreboard players set @e[tag=vengeancefists,r=30,c=1] Move 5
scoreboard players set @e[tag=vengeancefists,r=30,c=1] Stun 15

execute as @s[scores={move=100..999}] at @s run scoreboard players set @a[r=8,tag=!vengeancefists] Camera 5
execute as @s[scores={move=9919..10001}] at @s run scoreboard players set @a[r=20,tag=!vengeancefists] Camera 5

execute as @s[scores={move=12..}] at @s if block ~~-0.15~ air run scriptevent ds:downfall

execute as @s[scores={move=14}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 1.15

execute as @s[scores={move=14}] at @s run particle ds:unparrymarker ~~1~


execute as @s[type=!player,scores={move=..16}] at @s run execute as @e[type=!player,r=30,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run tp @s ~~~
execute as @s[type=!player,scores={move=17..}] at @s run execute as @e[type=!player,r=30,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run tp @s ~~~~ 0
execute as @s[type=!player] at @s run effect @e[type=!player,r=30,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] slowness 1 10 true

execute as @s[scores={move=5}] at @s run particle ds:ground_dust2
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run camerashake add @a[r=10] 0.4 0.15
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run particle ds:punch1 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run particle ds:punch2 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run particle ds:punch3 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run particle ds:punch4 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.25 999999
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playsound random.explode @a[r=40] ~~1~ 999999 2 999999
execute as @s[scores={move=5}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add vengeancefists
execute as @s[scores={move=5}] at @s positioned ^^^2 if entity @e[tag=vengeancefists,tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 1002

execute as @s[scores={move=5}] at @s positioned ^^^2 unless entity @e[tag=vengeancefists,tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.stunned

execute as @s[scores={move=1001..1002}] at @s run playanimation @e[tag=vengeancefists,r=30,c=1] animation.black_fists.ab5_hit
execute as @s[scores={move=999..1001}] at @s run tp @s @s

execute as @s[scores={move=975..1002}] at @s run scriptevent ds:knockback 0.1
execute as @s[scores={move=975..999}] at @s run camera @a[r=8] set minecraft:free pos ^3^1.25^0.75 facing ^^1.25^0.75

execute as @s[scores={move=976..1002}] at @s rotated ~ 0 run tp @e[tag=vengeancefists,r=30,c=1] ^^^2 facing @s

execute as @s[scores={move=999}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=999}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=999}] at @s positioned ^^^1 run playsound mob.punch2 @a[r=40] ~~1~ 999999 3.3 999999
execute as @s[scores={move=999}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 1.95 999999
execute as @s[scores={move=999}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=999},r=30,c=1]

execute as @s[scores={move=995}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=995}] at @s positioned ^^^1 run particle ds:large_impact1 ~~1~
execute as @s[scores={move=995}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=995}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=995}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=995}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=995}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.45 999999
execute as @s[scores={move=995}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2.3 999999
execute as @s[scores={move=995}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=995},r=30,c=1]


execute as @s[scores={move=990}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=990}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=990}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=990}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=990}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=990}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=990}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.35 999999
execute as @s[scores={move=990}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2.15 999999
execute as @s[scores={move=990}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=990},r=30,c=1]



execute as @s[scores={move=987}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run playsound mob.punch2 @a[r=40] ~~1~ 999999 2.75 999999
execute as @s[scores={move=987}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2.15 999999
execute as @s[scores={move=987}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..12}] run damage @s 6 suicide entity @e[scores={move=987},r=30,c=1]


execute as @s[scores={move=987}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=987}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.5 999999
execute as @s[scores={move=987}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2 999999
execute as @s[scores={move=987}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=987},r=30,c=1]


execute as @s[scores={move=986}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=986}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=986}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=986}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=986}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=986}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=986}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.75 999999
execute as @s[scores={move=986}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2.45 999999
execute as @s[scores={move=986}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=986},r=30,c=1]


execute as @s[scores={move=985}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=985}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=985}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=985}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=985}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=985}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=985}] at @s positioned ^^^1 run playsound mob.punch2 @a[r=40] ~~1~ 999999 3 999999
execute as @s[scores={move=985}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 1.95 999999
execute as @s[scores={move=985}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=985},r=30,c=1]


execute as @s[scores={move=983}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=983}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=983}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=983}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=983}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=983}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=983}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.4 999999
execute as @s[scores={move=983}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 1.95 999999
execute as @s[scores={move=983}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=983},r=30,c=1]


execute as @s[scores={move=981}] at @s positioned ^^^1 run camerashake add @a[r=10] 0.25 0.15
execute as @s[scores={move=981}] at @s positioned ^^^1 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=981}] at @s positioned ^^^1 run particle ds:punch1 ~~1~
execute as @s[scores={move=981}] at @s positioned ^^^1 run particle ds:punch2 ~~1~
execute as @s[scores={move=981}] at @s positioned ^^^1 run particle ds:punch3 ~~1~
execute as @s[scores={move=981}] at @s positioned ^^^1 run particle ds:punch4 ~~1~
execute as @s[scores={move=981}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.6 999999
execute as @s[scores={move=981}] at @s positioned ^^^1 run playsound random.explode @a[r=40] ~~1~ 999999 2 999999
execute as @s[scores={move=981}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=981},r=30,c=1]


execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:ground_slam2
execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:slam_dust2
execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:rubble3
execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:dirt0
execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:large_impact1 ~~1~
execute as @s[scores={move=975}] at @s positioned ^^^1 run particle ds:large_impact2
execute as @s[scores={move=975}] at @s positioned ^^^1 run playsound mob.punch1 @a[r=40] ~~1~ 999999 1 999999
execute as @s[scores={move=975}] at @s positioned ^^^1 run playsound mob.shock1 @a[r=40] ~~1~ 999999 2.5 999999
execute as @s[scores={move=975}] at @s positioned ^^^1 run execute as @e[tag=vengeancefists,r=30,c=1] unless entity @s[scores={detect_health=1..6}] run damage @s 6 suicide entity @e[scores={move=975},r=30,c=1]

execute as @s[scores={move=974}] at @s run camera @a[r=8] set minecraft:free pos ^7^1.25^2 facing ^^1.25^2

execute as @s[scores={move=968..972}] at @s as @e[tag=vengeancefists,r=30,c=1] at @s rotated ~ 0 positioned ^^^-1 if block ~~~ air if block ~~1~ air run tp @s ^^^-1 facing ^^^10
execute as @s[scores={move=968..972}] at @s rotated ~ 0 positioned ^^^-1 if block ~~~ air if block ~~1~ air run tp @s ^^^-1 facing ^^^10

execute as @s[scores={move=950}] at @s run playanimation @s animation.black_fists.ab5_clash1
execute as @s[scores={move=950}] at @s run playanimation @e[tag=vengeancefists,r=30,c=1] animation.black_fists.ab5_clash1
execute as @s[scores={move=949..950}] at @s run tp @s @s


scoreboard players set @s[scores={move=921..949}] move 920

execute as @s[scores={move=902}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=902}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.2 99999
execute as @s[scores={move=902}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 1.2 99999
execute as @s[scores={move=902}] at @s run particle ds:large_impact1
execute as @s[scores={move=902}] at @s run particle ds:rubble3
execute as @s[scores={move=902}] at @s run particle ds:ground_slam2
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=902}] at @s rotated ~ 0 positioned ^^^1 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 positioned ^^^2 if block ~~~ air if block ~~1~ air at @s rotated ~ 0 run tp @s ^^^1
execute as @s[scores={move=100..900}] at @s rotated ~ 0 run tp @e[tag=vengeancefists,r=30,c=1] ^^^2.4 facing @s

execute as @s[scores={move=900}] at @s run particle ds:large_impact1 ^^1.3^1
execute as @s[scores={move=900}] at @s run particle ds:large_impact2 ^^1.3^1
execute as @s[scores={move=900}] at @s run particle ds:ground_slam2 ^^1.3^1
execute as @s[scores={move=900}] at @s run particle ds:rubble3 ^^^1
execute as @s[scores={move=900}] at @s run particle ds:punch_shockwave ^^1.3^1
execute as @s[scores={move=900}] at @s run particle ds:heavy_impact2 ^^1.3^1
execute as @s[scores={move=900}] at @s run playsound mob.shock1 @a[r=100] ^^1.3^1 99999 1 99999
execute as @s[scores={move=900}] at @s run playsound mob.wither.shoot @a[r=100] ^^1.3^1 99999 0.15 99999
execute as @s[scores={move=900}] at @s run playsound mob.burst @a[r=100] ^^1.3^1 99999 2.5 99999
execute as @s[scores={move=900}] at @s run camerashake add @a[r=100] 1 0.15
execute as @s[scores={move=900}] at @s run particle ds:invert ^2^1^1
execute as @s[scores={move=900}] at @s run summon gg:impact_frame
execute as @s[scores={move=899}] at @s run function clear_impframe

playanimation @s[scores={move=100..900}] animation.black_fists.ab5_clashing
execute as @s[scores={move=100..900}] at @s run playanimation @e[tag=vengeancefists,r=8,c=1] animation.black_fists.ab5_clashing
execute as @s[scores={move=100..900}] at @s run camerashake add @a[r=10] 0.08 0.05

execute as @s[scores={move=100..880}] at @s run camera @a[r=8] set minecraft:free ease 0.08 in_sine pos ^3^1.25^1 facing ^^1.25^1

execute as @s[scores={move=895..900}] unless entity @s[scores={clash_score=0..}] run scoreboard players add @s clash_score 0
execute as @s[scores={move=895..900}] at @s as @a[tag=vengeancefists,r=8,c=1] unless entity @s[scores={clash_score=0..}] run scoreboard players add @s clash_score 0
execute as @s[scores={move=100..900}] at @s run scoreboard players add @s[scores={detect_left=1}] clash_score 8
execute as @s[scores={move=100..900}] at @s run scoreboard players add @s[scores={punch=1}] clash_score 6
execute as @s[scores={move=100..900}] at @s run scoreboard players add @a[scores={detect_left=1},tag=vengeancefists,r=8,c=1] clash_score 7
execute as @s[scores={move=100..900}] at @s run scoreboard players add @a[scores={punch=1},tag=vengeancefists,r=8,c=1] clash_score 5
scoreboard players set @a[scores={punch=1..},r=8] punch 0
scoreboard players set @a[scores={detect_left=1..},r=8] detect_left 0

execute as @s[scores={move=100..800}] at @s run scoreboard players random @e[type=!player,tag=vengeancefists,r=8,c=1] clash_score -300 101
execute as @s[scores={move=100..810}] at @s run scoreboard players random @e[type=!player,tag=vengeancefists,r=8,c=1,scores={strength=0..15}] clash_score -200 101
execute as @s[scores={move=100..820}] at @s run scoreboard players random @e[type=!player,tag=vengeancefists,r=8,c=1,scores={strength=16..25}] clash_score -150 101
execute as @s[scores={move=100..830}] at @s run scoreboard players random @e[type=!player,tag=vengeancefists,r=8,c=1,scores={strength=26..40}] clash_score -100 101
execute as @s[scores={move=100..840}] at @s run scoreboard players random @e[type=!player,tag=vengeancefists,r=8,c=1,scores={strength=41..}] clash_score -50 101

execute as @s[scores={move=100..650}] at @s run scoreboard players set @e[tag=vengeancefists,r=8,c=1] clash_score 101


titleraw @s[scores={move=100..900,clash_score=0..5},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=5..10},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=11..16},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=17..23},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=24..30},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=31..35},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=36..40},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=41..50},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=51..65},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=66..80},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=81..99},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
titleraw @s[scores={move=100..900,clash_score=100..},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}

execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=0..5}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=5..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=11..16}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=17..23}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=24..30}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=31..35}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=36..40}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=41..50}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=51..65}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=66..80}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=81..99}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900}] at @s run titleraw @a[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §aPUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}


execute as @s[scores={move=100..900}] at @s run execute as @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 9999
execute as @s[scores={move=100..900}] at @s run execute as @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run scoreboard players set @s Flourish 4
execute as @s[scores={move=100..900,Frames=1..}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run scoreboard players set @s Frames 0
execute as @s[scores={move=100..900},tag=Frames] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run tag @s remove Frames
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run effect @s clear resistance
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run damage @s 100 suicide entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}]
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run scoreboard players set @s Flourish 10
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run scoreboard players set @s Hit 3
execute as @s[scores={move=100..900}] at @s run execute as @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] at @s run playsound mob.shock1 @a[r=100] ^^1^1 99999 2 99999
execute as @s[scores={move=100..900}] at @s run execute as @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] at @s run particle ds:large_impact1 ^^1^1
execute as @s[scores={move=100..900}] at @s run execute as @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] at @s run particle ds:large_impact2 ^^1^1
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run tellraw @s {"rawtext":[{"text":"§r§cYou lost the clash!"}]}
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run camera @a[r=33] clear
execute as @s[scores={move=100..900}] at @s if entity @e[tag=vengeancefists,r=8,c=1,scores={clash_score=100..}] run function cancel_attack


scoreboard players set @s[scores={move=100..900,clash_score=100..}] move 10001
scoreboard players set @s[scores={move=10000..10001,clash_score=100..}] clash_score 0
execute as @s[scores={move=10000..10001}] at @s run scoreboard players set @e[tag=vengeancefists,r=8,c=1,scores={clash_score=!0}] clash_score 0

playanimation @s[scores={move=10000..10001}] animation.black_fists.ab5_win
execute as @s[scores={move=10000..10001}] at @s run tp @s @s

execute as @s[scores={move=10000..10001}] at @s run tp @e[tag=vengeancefists,r=8,c=1] ^^0.25^1.5 facing @s
execute as @s[scores={move=9000..10001}] at @s run playanimation @e[tag=vengeancefists,r=8,c=1] animation.stunned3


execute as @s[scores={move=9999..10001}] at @s run playsound mob.blackflash2 @a[r=200] ~~~ 99999 0.856 99999
execute as @s[scores={move=9956..10001}] at @s run camera @a[r=20] set minecraft:free pos ^3.25^1.75^3.25 facing ^^1^
execute as @s[scores={move=9999..10001}] at @s run camerashake add @a[r=100] 2.5 0.15
execute as @s[scores={move=9999..10001}] at @s run particle ds:red_tint ^1^1^1
execute as @s[scores={move=9999}] at @s run effect @a[r=20] darkness 1 1 true
execute as @s[scores={move=9999}] at @s run particle ds:invert ^0.8^0.8^0.8
execute as @s[scores={move=9999}] at @s run summon gg:impact_frame
execute as @s[scores={move=9997}] at @s run particle ds:invert ^0.8^0.8^0.8
execute as @s[scores={move=9996}] at @s run function clear_impframe
execute as @s[scores={move=9995}] at @s run summon gg:impact_frame
execute as @s[scores={move=9994}] at @s run function clear_impframe
execute as @s[scores={move=9993}] at @s run particle ds:red_tint ^1^1^1
execute as @s[scores={move=9992}] at @s run particle ds:invert ^0.8^0.8^0.8
execute as @s[scores={move=9991}] at @s run summon gg:impact_frame

execute as @s[scores={move=9950..}] at @s run particle ds:black_flash_small1 ^^1^1 
execute as @s[scores={move=9950..}] at @s run particle ds:turbo_intensity1 ^^1^1 
execute as @s[scores={move=9950..}] at @s run particle ds:turbo_intensity2 ^^1^1 
execute as @s[scores={move=9950..}] at @s run particle ds:turbo_intensity3 ^^1^1 
execute as @s[scores={move=9950..}] at @s run particle ds:turbo_intensity4 ^^1^1 

playsound music.kokusen3 @s[scores={move=9999},type=player]
execute as @s[scores={move=9999}] at @s run playsound music.kokusen3 @p[tag=vengeancefists,r=8]
execute as @s[scores={move=9999}] at @s run playsound mob.kokusen3 @a[tag=!vengeancefists,r=100,rm=0.15] ~~~ 99999 1 99999


execute as @s[scores={move=9999}] at @s run particle ds:black_flash1 ^^1^1
execute as @s[scores={move=9999}] at @s run particle ds:black_flash2 ^^1^1
execute as @s[scores={move=9999}] at @s run particle ds:black_flash3 ^^1^1
execute as @s[scores={move=9999}] at @s run particle ds:black_flash4 ^^1^1
execute as @s[scores={move=9999}] at @s run particle ds:black_flash5 ^^1^1
execute as @s[scores={move=9999}] at @s run particle ds:black_flash6 ^^1^1 
execute as @s[scores={move=9999}] at @s run particle ds:black_flash7 ^^1^1 
execute as @s[scores={move=9999}] at @s run particle ds:black_flash8 ^^1^1 
execute as @s[scores={move=9999}] at @s run particle ds:black_flash9 ^^1^1 
execute as @s[scores={move=9999}] at @s run particle ds:black_flash10 ^^1^1

 
execute as @s[scores={move=9951}] at @s run particle ds:invert ^0.8^0.8^0.8
execute as @s[scores={move=9950}] at @s run summon gg:impact_frame
execute as @s[scores={move=9949}] at @s run particle ds:invert ^0.8^0.8^0.8
execute as @s[scores={move=9948}] at @s run function clear_impframe
execute as @s[scores={move=9947}] at @s run summon gg:impact_frame


execute as @s[scores={move=9940..9955}] at @s run camera @a[r=20] set minecraft:free pos ^^4^-3 facing ^^1.5^10
execute as @s[scores={move=9950}] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={move=9947..9950}] at @s run particle ds:large_impact2 ^^1^1 
execute as @s[scores={move=9947..9950}] at @s run particle ds:heian_impact1 ^^1^1 
execute as @s[scores={move=9950}] at @s run particle ds:black_flash1 ^^1^1
execute as @s[scores={move=9950}] at @s run particle ds:black_flash2 ^^1^1
execute as @s[scores={move=9950}] at @s run particle ds:black_flash3 ^^1^1
execute as @s[scores={move=9950}] at @s run particle ds:black_flash4 ^^1^1
execute as @s[scores={move=9950}] at @s run particle ds:black_flash5 ^^1^1
execute as @s[scores={move=9950}] at @s run particle ds:black_flash6 ^^1^1 
execute as @s[scores={move=9950}] at @s run particle ds:black_flash7 ^^1^1 
execute as @s[scores={move=9950}] at @s run particle ds:black_flash8 ^^1^1 
execute as @s[scores={move=9950}] at @s run particle ds:black_flash9 ^^1^1 
execute as @s[scores={move=9950}] at @s run particle ds:black_flash10 ^^1^1 


scoreboard players set @s[scores={move=9950}] thezone 221

execute as @s[scores={move=9950..9951},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
execute if entity @s[scores={move=9950,blackflashlearn=0}] run function blackflash_first

execute as @s[scores={move=9950,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=vengeancefists,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=9950,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=vengeancefists,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=9950,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=vengeancefists,r=8,scores={grade=5..},tag=!unselect] unless entity @e[tag=vengeancefists,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=9950,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=vengeancefists,r=8,scores={grade=5..},tag=!unselect] unless entity @e[tag=vengeancefists,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=9950,blackflash_amount=0..},type=!player] at @s if entity @e[tag=vengeancefists,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1


execute as @s[scores={move=9950}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.856 99999
execute as @s[scores={move=9950}] at @s run playsound mob.blackflash @a[r=200] ~~~ 99999 0.856 99999
execute as @s[scores={move=9950}] at @s run playsound mob.blackflash2 @a[r=200] ~~~ 99999 0.856 99999
execute as @s[scores={move=9948..9950}] at @s run camerashake add @a[r=200] 3 0.35 
execute as @s[scores={move=9947..9949}] at @s run tag @e[tag=vengeancefists,r=8,c=1] remove Frames
execute as @s[scores={move=9947..9949}] at @s run effect @e[tag=vengeancefists,r=8,c=1] clear resistance
execute as @s[scores={move=9947}] at @s run scoreboard players set @e[tag=vengeancefists,r=8,c=1] Hit 3
execute as @s[scores={move=9947}] at @s run scoreboard players set @e[tag=vengeancefists,r=8,c=1] Stun 30
execute as @s[scores={move=9947}] at @s run scoreboard players add @e[tag=vengeancefists,r=8,c=1] Evade 25
execute as @s[scores={move=9947}] at @s run scoreboard players set @e[tag=vengeancefists,r=8,c=1] knockdown 95
execute as @s[scores={move=9925}] at @s run damage @e[tag=vengeancefists,c=1,r=60] 150 suicide entity @s
execute as @s[scores={move=9925},tag=yuji_awakened] at @s run scoreboard players add @e[tag=vengeancefists,c=1,r=60] antiheal 100
execute as @s[scores={move=9925}] at @s run function damages/blunt_damage
execute as @s[scores={move=9925},tag=yuji_awakened] at @s run function damages/soul_damage
execute as @s[scores={move=9946..9947}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=9920..9947}] at @s run tp @s ~~~

execute as @s[scores={move=9925..9950}] at @s run scriptevent ds:lightning 2,0.85,2.5, 0.8,0.1,0.1, 0.8,0.1,0.1, 4,4,4, 4,4,4


execute as @s[scores={move=9956..10001}] at @s run camerashake add @a[r=100] 0.1 0.1

execute as @s[scores={move=9800..9919}] at @s run tag @e[tag=vengeancefists,r=100,c=1] remove vengeancefists
effect @s[scores={move=9800..9919},type=player] slowness 2 1 true
scoreboard players set @s[scores={move=9800..9919},type=!player] Disabled 44
scoreboard players set @s[scores={move=9800..9919},type=!player] hitCD 44
scoreboard players set @s[scores={move=9800..9919}] Move 44
scoreboard players set @s[scores={move=9800..9919}] move 3


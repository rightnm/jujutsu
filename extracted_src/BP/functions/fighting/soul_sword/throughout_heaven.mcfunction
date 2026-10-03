playanimation @s[scores={move=35}] animation.soul_sword.ab3

tag @s[scores={move=1..2},tag=wep3] remove wep3

tag @s[scores={move=26..35,Stun=1..},tag=wep3] remove wep3
playanimation @s[scores={move=26..35,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..35,Stun=1..}] move 0

scoreboard players set @e[scores={move=14..26}] Hyper 4
scoreboard players set @e[scores={move=14..26}] Move 4
scoreboard players set @e[scores={move=14..26}] Frames 5

execute as @s[scores={move=20..25}] at @s run tp @s @s
execute as @s[scores={move=20..25},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=20..25},type=player] at @s if block ^^1^1 air if block ^^1^2 air if block ^^1^3 air if block ^^1^3.5 air run tp @s ^^^3.5
execute as @s[scores={move=20..25},type=!player] at @s rotated ~ 0 if block ^^1^1 air if block ^^1^2 air if block ^^1^3 air if block ^^1^3.5 air run tp @s ^^^3.5

execute as @s[scores={move=34}] at @s run summon ds:projectile Throughout
execute as @s[scores={move=25..34}] at @s run tp @e[type=ds:projectile,name=Throughout,r=10,c=1] ^^2^6 facing ^^^20
execute as @s[scores={move=24..26}] at @s run playanimation @e[type=ds:projectile,name=Throughout,r=10,c=1] animation.throughout_heaven
execute as @s[scores={move=24..34}] at @s run scoreboard players set @e[type=ds:projectile,name=Throughout,r=10,c=1] Frames 5
execute as @s[scores={move=24..34}] at @s run scoreboard players set @e[type=ds:projectile,name=Throughout,r=10,c=1] Deleter 10

execute as @s[scores={move=20..25}] at @s if entity @e[tag=!Frames,scores={detect_health=0..22},r=3.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run tag @s add throughoutfinisher
execute as @s[scores={move=20..25}] at @s unless entity @e[tag=throughoutfinisher2,r=25,c=1] run tag @e[tag=!Frames,scores={detect_health=0..22},r=3.5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add throughoutfinisher2
execute as @s[scores={move=10..12}] at @s if entity @e[tag=throughoutfinisher2,r=25,c=1] run scoreboard players set @s move 1001

scoreboard players set @e[scores={move=20..26}] atk 2
effect @s[scores={move=26}] speed 1 30 true
effect @s[scores={move=20}] speed 0 20 true
effect @s[scores={move=20}] speed 1 3 true
effect @s[scores={move=13}] speed 0 20 true
execute as @s[scores={move=20..25}] at @s run function damages/slash_damage
execute as @s[scores={move=20..25}] at @s run function damages/soul_damage
execute as @s[scores={move=21..25}] at @s run playsound mob.slash1 @a[r=200] ~~~ 0.5 1.75
execute as @s[scores={move=20}] at @s run playsound mob.swordslash @a[r=200] ~~~ 0.5 0.8
execute as @s[scores={move=20..25}] at @s run scoreboard players operation @e[tag=!throughoutfinisher2,tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=20..25}] at @s run scoreboard players set @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 35
execute as @s[scores={move=20..25}] at @s as @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] unless entity @s[scores={antiheal=100..}] run scoreboard players set @s antiheal 100
execute as @s[scores={move=20..25}] at @s run scoreboard players add @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] antiheal 75
execute as @s[scores={move=20..25}] at @s run scoreboard players add @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 2
execute as @s[scores={move=20..25}] at @s run scoreboard players add @e[tag=!throughoutfinisher2,tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 15
execute as @s[scores={move=20..25}] at @s run damage @e[tag=!throughoutfinisher2,tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 17 suicide entity @s
execute as @s[scores={move=20..25}] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={move=20..25}] at @s if entity @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run playsound mob.slice @a ~~~ 
execute as @s[scores={move=20..25}] at @s if entity @e[tag=!Frames,r=3.5,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=20..25}] at @s run particle ds:flash_slashes2 ~~1~
execute as @s[scores={move=20..25}] at @s run particle ds:ground_slam2


scoreboard players set @s[scores={move=!26..35},tag=throughoutfinisher] Camera 5
scoreboard players set @s[scores={move=!26..35},tag=throughoutfinisher] Move 5
scoreboard players set @s[scores={move=!26..35},tag=throughoutfinisher] Frames 5
scoreboard players set @e[tag=throughoutfinisher2,r=25,c=1] Camera 5
scoreboard players set @e[tag=throughoutfinisher2,r=25,c=1] Move 5
scoreboard players set @e[tag=throughoutfinisher2,r=25,c=1] Frames 5

playanimation @s[scores={move=1000..1001},tag=throughoutfinisher] animation.soul_sword.ab3finish

execute as @s[scores={move=999}] at @s run tp @s ~~~~ 0
camera @s[scores={move=999},type=player] set minecraft:free pos ^ ^1.5 ^1.5 rot ~ ~180

execute as @s[scores={move=995..998}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=995..998}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=995..998}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=995..998}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=995..998}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=995..998}] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={move=990..996}] at @s run execute as @e[tag=throughoutfinisher2,r=25,c=1] at @s run tp @s @s
execute as @s[scores={move=990..996},tag=throughoutfinisher] at @s run execute as @e[tag=throughoutfinisher2,r=25,c=1] at @s run tp @e[scores={move=990..996},tag=throughoutfinisher,r=25,c=1] ^^^-0.35 facing @s

execute as @s[scores={move=990..996},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1 ^-0.55 ^4 facing ~ ~0.8~ 

execute as @s[scores={move=990}] at @s run playanimation @e[tag=throughoutfinisher2,r=5,c=1] animation.soul_sword.ab3finish2
execute as @s[scores={move=990}] at @s run scoreboard players add @e[tag=throughoutfinisher2,r=5,c=1] antiheal 200
execute as @s[scores={move=990}] at @s run scoreboard players set @e[tag=throughoutfinisher2,r=5,c=1] dying 180
execute as @s[scores={move=990}] at @s run damage @e[tag=throughoutfinisher2,r=5,c=1] 0 suicide
execute as @s[scores={move=985..990}] at @s run particle ds:blood ^^^0.3
execute as @s[scores={move=985..990}] at @s run particle ds:blood_splat ^^^0.3
execute as @s[scores={move=985..990}] at @s run particle ds:blood_splat ^^^0.3
execute as @s[scores={move=985..990}] at @s run particle ds:blood_splat ^^^0.3
execute as @s[scores={move=985..990}] at @s run particle ds:bleeding2 ^^1.65^0.3
execute as @s[scores={move=990}] at @s run particle ds:blood3 ^^1.25^1
execute as @s[scores={move=990}] at @s run playsound mob.sword @a[r=50] ^^1^1 1 0.5

execute as @s[scores={move=972}] at @s run playsound mob.sword @a[r=50] ^^1^1 1 1.5
execute as @s[scores={move=972}] at @s run particle ds:blood ^^^0.3
execute as @s[scores={move=972}] at @s run particle ds:blood_splat ^^^0.3

scoreboard players set @s[scores={move=965..967}] move 2
tag @s[scores={move=1..2},tag=throughoutfinisher] remove throughoutfinisher
execute as @s[scores={move=1..2}] at @s run tag @e[tag=throughoutfinisher2,r=25,c=1] remove throughoutfinisher2
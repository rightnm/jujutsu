playanimation @s[scores={move=60}] animation.preys_peril1
tag @s[scores={move=1..2},tag=form7] remove form7
tag @s[scores={move=1..2},tag=wep6] remove wep6

tag @s[scores={move=50..,Stun=1..},tag=form7] remove form7
tag @s[scores={move=50..,Stun=1..},tag=wep6] remove wep6
playanimation @s[scores={move=50..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=50..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..50}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..49}] Camera 4
scoreboard players set @a[tag=preysperil,r=15,c=1] Camera 4
scoreboard players set @e[tag=preysperil,r=15,c=1] Move 4
scoreboard players set @e[tag=preysperil,r=15,c=1] Stun 25
execute as @e[tag=preysperil,r=15,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim

execute as @s[scores={move=47..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[family=yuji,scores={move=4..}] if entity @e[tag=preysperil,c=1,type=ds:todo] run scoreboard players set @s move 3

execute as @s[scores={move=8..48}] at @s run tp @e[tag=preysperil,r=8,c=1] ^^0.25^0.5 facing @s
execute as @s[scores={move=48}] at @s run tp @s @s
execute as @s[scores={move=1..47},type=player] at @s run tp @s @s
execute as @s[scores={move=1..47},type=!player] at @s run tp @s ~~~~ 0

scoreboard players set @s[scores={move=47..48}] atk 2

execute as @s[scores={move=49}] at @s positioned ^^^2.6 run function damages/blunt_damage
execute as @s[scores={move=19}] at @s positioned ^^^2.6 run function damages/blunt_damage

execute as @s[scores={move=49}] at @s positioned ^^^2.6 run tag @e[tag=!Frames,r=2.55,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add preysperil
execute as @s[scores={move=48}] at @s positioned ^^^2.6 run playanimation @e[tag=!Frames,r=2.55,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] animation.preys_peril2
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=48}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=48}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=49}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=47}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 3 override
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 3
execute as @s[scores={move=47}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

execute as @s[scores={move=49}] at @s positioned ^^^2.6 unless entity @e[tag=!Frames,r=2.55,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.cancel
execute as @s[scores={move=49}] at @s positioned ^^^2.6 unless entity @e[tag=!Frames,r=2.55,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 2
execute as @s[scores={move=5..46}] at @s unless entity @e[tag=preysperil,r=15,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=5..46}] at @s unless entity @e[tag=preysperil,r=15,c=1] run scoreboard players set @s move 2

execute as @s[type=ds:bluelemon,scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst1 ~~1~
execute as @s[type=ds:bluelemon,scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst2 ~~1~
execute as @s[type=ds:bluelemon,scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst3 ~~1~

execute as @s[hasitem={item=ds:water_fists},scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst1 ~~1~
execute as @s[hasitem={item=ds:water_fists},scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst2 ~~1~
execute as @s[hasitem={item=ds:water_fists},scores={move=1..}] at @s run execute as @e[tag=preysperil,r=8,c=1,scores={Hit=2..}] at @s run particle ds:flowingwater_burst3 ~~1~


execute as @s[scores={move=48},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^5 ^-0.25 ^0.75 rot ~ ~90
execute as @s[scores={move=48}] at @s anchored eyes run camera @a[tag=preysperil,r=8,c=1] set minecraft:free pos ^5 ^-0.25 ^0.75 rot ~ ~90


scoreboard players set @s[scores={move=43..44}] atk 2
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=44}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=44}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=46}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=43}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=43}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=41..42}] atk 2
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=41}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=41}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=42}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=41}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=41}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3


scoreboard players set @s[scores={move=37..38}] atk 2
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=38}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=38}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=40}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=37}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=37}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=34..35}] atk 2
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=34}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=34}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=34}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=34}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=34}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=30..31}] atk 2
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=30}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=30}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=28}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=30}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=26..27}] atk 2
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:punch1
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=26}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=26}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=26}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=26}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=26}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=21..22}] atk 2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=22}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=23}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=21}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players set @s[scores={move=16..17}] atk 2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=17}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=17}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=17}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 1.5 0.25
execute as @s[scores={move=16}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 2 override
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 2
execute as @s[scores={move=16}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 3

scoreboard players random @s[scores={move=8},tag=!heavenlyrestriction] blackflashchance 1 128
scoreboard players set @s[scores={move=8},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=7..8}] atk 2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam3
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam3
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact5
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:impact
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=7}] at @s positioned ^^1^0.5 run particle ds:heavy_blow1
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.65 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=7}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 4 0.20
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^2.6 run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players operation @e[tag=preysperil,r=8,c=1] damage += @s damageadd
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run damage @e[tag=preysperil,r=8,c=1] 5 override
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run tag @e[tag=preysperil,r=8,c=1] add hardknockback
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] knockdown 95
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Evade 5
execute as @s[scores={move=7}] at @s positioned ^^^2.6 run scoreboard players add @e[tag=preysperil,r=8,c=1] Hit 11
execute as @s[scores={move=7}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=7}] at @s run tag @e[tag=preysperil,r=8,c=1] remove preysperil

tag @e[scores={Evasive=1..},tag=preysperil,r=8,c=1] remove preysperil

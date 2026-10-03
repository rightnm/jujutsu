execute as @s[scores={cutscene=11..}] at @s run playanimation @e[tag=deadlystrikeclash2,r=8,c=1] animation.deadly_strike_clash
playanimation @s[scores={cutscene=11..}] animation.deadly_strike_clash

execute as @s[scores={cutscene=50..}] run camera @a[tag=deadlystrikeclash2,r=8,c=1] fade time 0 0.2 0.15 color 0 0 0
camera @s[scores={cutscene=50..},type=player] fade time 0 0.2 0.15 color 0 0 0

execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={cutscene=50}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={cutscene=50}] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.5 9999

execute as @s[type=ds:todo] if entity @e[family=yuji,c=1,r=5,tag=deadlystrikeclash2] run scoreboard players set @s cutscene 0
execute as @s[type=ds:todo] if entity @e[family=yuji,c=1,r=5,tag=deadlystrikeclash] run scoreboard players set @s cutscene 0


execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @s Camera 5
execute as @s[scores={cutscene=14..}] at @s run scoreboard players set @s Frames 5
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @s Move 5
execute as @s[scores={cutscene=11..}] at @s run camerashake add @a[r=8] 0.05 0.08

execute as @s[scores={cutscene=11..}] at @s as @e[tag=deadlystrikeclash2,r=8,c=1] unless entity @s[scores={strength=0..}] run scoreboard players add @s strength 0
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @e[tag=deadlystrikeclash2,r=8,c=1] Camera 5
execute as @s[scores={cutscene=14..}] at @s run scoreboard players set @e[tag=deadlystrikeclash2,r=8,c=1] Frames 5
execute as @s[scores={cutscene=11..}] at @s run scoreboard players set @e[tag=deadlystrikeclash2,r=8,c=1] Move 5

execute as @s[scores={cutscene=11..},type=player] at @s run camera @s set minecraft:free pos ^4 ^1 ^1.5 rot ~ ~90
execute as @s[scores={cutscene=11..}] at @s run camera @a[tag=deadlystrikeclash2,r=8,c=1] set minecraft:free pos ^4 ^1 ^1.5 rot ~ ~90

title @s[scores={cutscene=11..},tag=!impactframesoff,type=player] title 
execute as @s[scores={cutscene=11..}] at @s run title @a[tag=deadlystrikeclash2,c=1,tag=!impactframesoff,r=8] title 
title @s[scores={cutscene=1..10},tag=!impactframesoff,type=player] title 
execute as @s[scores={cutscene=1..10}] at @s run title @a[tag=deadlystrikeclash2,c=1,tag=!impactframesoff,r=8] title 

tag @s[scores={cutscene=50..},type=!player,tag=!customfacing] add customfacing
tag @e[scores={cutscene=50..},tag=deadlystrikeclash2,r=8,c=1,type=!player,tag=!customfacing] add customfacing
execute as @s[scores={cutscene=11..}] at @s rotated ~ 0 run tp @e[tag=deadlystrikeclash2,r=8,c=1] ^-0.15^^3 facing @s
execute as @s[scores={cutscene=11..}] at @s run tp @s ~~~ facing @e[tag=deadlystrikeclash2,r=8,c=1]
execute as @s[scores={cutscene=8..10},tag=deadlystrikeclashwinner] at @s run tp @s ~~~ facing @e[tag=deadlystrikeclash2,r=8,c=1]
execute as @s[scores={cutscene=8..10}] at @s at @e[tag=deadlystrikeclash2,tag=deadlystrikeclashwinner,r=8,c=1] run tp @e[tag=deadlystrikeclash2,tag=deadlystrikeclashwinner,r=0.15,c=1] ~~~ facing @s

execute as @s[scores={cutscene=1..3}] at @s run tag @e[tag=deadlystrikeclash2,r=30,c=1] remove deadlystrikeclash2
execute as @s[scores={cutscene=1..3}] at @s run tag @e[tag=deadlystrikeclashwinner,r=30,c=1] remove deadlystrikeclashwinner
tag @s[scores={cutscene=1..3},tag=deadlystrikeclash] remove deadlystrikeclash



execute as @s[scores={cutscene=10},tag=deadlystrikeclash,tag=!deadlystrikeclashwinner] at @s if score @s strength > @e[tag=deadlystrikeclash2,r=8,c=1,tag=!limitlessinfinity] strength run tag @s add deadlystrikeclashwinner
execute as @s[scores={cutscene=10},tag=deadlystrikeclash,tag=!deadlystrikeclashwinner] at @s if score @s strength > @e[tag=deadlystrikeclash2,r=8,c=1,tag=limitlessinfinity,scores={infinity=0..8}] strength run tag @s add deadlystrikeclashwinner
execute as @s[scores={cutscene=10,domainamp=1..},tag=deadlystrikeclash,tag=!deadlystrikeclashwinner] at @s if score @s strength > @e[tag=deadlystrikeclash2,r=8,c=1,tag=limitlessinfinity] strength run tag @s add deadlystrikeclashwinner
execute as @s[scores={cutscene=10},tag=deadlystrikeclash,tag=!limitlessinfinity] at @s if score @s strength < @e[tag=deadlystrikeclash2,r=8,c=1] strength run tag @e[tag=deadlystrikeclash2,r=8,c=1] add deadlystrikeclashwinner
execute as @s[scores={cutscene=10,infinity=0..8},tag=deadlystrikeclash,tag=limitlessinfinity] at @s if score @s strength < @e[tag=deadlystrikeclash2,r=8,c=1] strength run tag @e[tag=deadlystrikeclash2,r=8,c=1] add deadlystrikeclashwinner
execute as @s[scores={cutscene=10},tag=deadlystrikeclash,tag=limitlessinfinity] at @s if score @s strength < @e[tag=deadlystrikeclash2,r=8,c=1,tag=domainamplification] strength run tag @e[tag=deadlystrikeclash2,r=8,c=1,tag=domainamplification] add deadlystrikeclashwinner

execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:ground_slam2 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:ground_slam3 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:heavy_impact1 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:heavy_impact2 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:heavy_impact3 ^^1^1.5
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 run particle ds:heavy_impact5 ^^1^1.5


execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s run tag @e[tag=deadlystrikeclash2,r=8,c=1] remove deadlystrikeclash2

scoreboard players random @e[scores={cutscene=9},tag=deadlystrikeclashwinner,tag=!heavenlyrestriction,r=8,c=1] blackflashchance 1 25
scoreboard players set @e[scores={cutscene=9},tag=deadlystrikeclashwinner,tag=blackflashrig,tag=!heavenlyrestriction,r=8,c=1] blackflashchance 7
tag @e[scores={cutscene=9,blackflashchance=7},tag=deadlystrikeclashwinner,tag=!heavenlyrestriction,r=8,c=1] add cutsceneblackflash
scoreboard players set @e[scores={cutscene=8..9},tag=deadlystrikeclashwinner,r=8,c=1] atk 2
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.2 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @e[scores={cutscene=9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.3 9999
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run tag @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add hardknockback
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s anchored eyes positioned ^^^4.05 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run scoreboard players operation @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run damage @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 15 override entity @s
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run effect @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 1 true
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run scoreboard players add @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 14
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run scoreboard players set @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 95
execute as @e[scores={cutscene=8},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run scoreboard players set @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 40
execute as @e[scores={cutscene=8..9},tag=deadlystrikeclashwinner,r=8,c=1] at @s rotated ~ 0 positioned ^^^4.05 run scoreboard players add @e[r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @e[scores={cutscene=7},tag=deadlystrikeclashwinner,family=!boss,c=1,r=30] at @s run summon ds:red_reverse ~~~
execute as @e[scores={cutscene=5..7},tag=deadlystrikeclashwinner,family=boss,c=1,r=30] at @s run summon ds:boss_knockback1 ~~~


execute as @e[scores={cutscene=5},tag=deadlystrikeclashwinner,c=1,r=30] at @s run tag @e[tag=deadlystrikeclash,r=30,c=1] remove deadlystrikeclash
tag @e[scores={cutscene=5},tag=deadlystrikeclashwinner,r=30,c=1] remove deadlystrikeclashwinner
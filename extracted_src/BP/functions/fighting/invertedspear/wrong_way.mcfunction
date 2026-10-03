playanimation @s[scores={move=19..21}] animation.wrong_way1

tag @s[scores={move=1..2},tag=wep5] remove wep5

tag @s[scores={move=10..21,Stun=1..},tag=!wrongway,tag=!wrongwayfinisher,tag=wep5] remove wep5
playanimation @s[scores={move=10..21,Stun=1..},tag=!wrongway,tag=!wrongwayfinisher,tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=10..21,Stun=1..},tag=!wrongway,tag=!wrongwayfinisher] move 0


execute unless entity @s[scores={knock=0}] run scoreboard players set @s[tag=wrongway] knock 0
execute as @e[tag=wrongway2,r=20,c=1] unless entity @s[scores={knock=0}] run scoreboard players set @s knock 0

scoreboard players set @s[scores={move=4..}] Move 4

execute as @s[scores={move=1..10}] at @s run tp @s ~~~

execute unless entity @s[scores={move=925..941}] run title @s[tag=wrongway,tag=!impactframesoff,type=player] title 
title @a[tag=wrongway2,tag=!impactframesoff,r=20,c=1] title 
execute unless entity @s[scores={move=925..941}] run title @s[tag=wrongwayfinisher,tag=!impactframesoff,type=player] title 
title @a[tag=wrongwayfinisher2,tag=!impactframesoff,r=20,c=1] title 

scoreboard players set @s[scores={move=10..11}] atk 2
execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=10}] at @s positioned ^^^2.25 run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:heavy_impact1
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:heavy_impact2
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:heavy_impact3
execute as @s[scores={move=10}] at @s positioned ^^1^2.25 run particle ds:ground_slam2


execute as @s[scores={move=10..11}] at @s run tp @s @s
execute as @s[scores={move=10}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 35
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run tag @e[tag=!Frames,r=2.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!noStunnedAnim] add noStunnedAnim
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 2
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 5
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 5 entity_attack entity @s
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run tag @e[tag=!Frames,r=2.2,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add wrongway2
execute as @s[scores={move=10}] at @s positioned ^^^2.25 run playanimation @e[tag=!Frames,r=2.2,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] animation.wrong_way2
execute as @s[scores={move=10},tag=!wrongway] at @s positioned ^^^2.25 if entity @e[tag=!Frames,r=2.2,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run tag @s add wrongway
execute as @s[scores={move=10}] at @s rotated ~ 0 if block ^^^1 air if block ^^^2 air if block ^^^3 air if block ^^^4 air if block ^^^5 air if block ^^^6 air if block ^^^7 air run tp @e[tag=wrongway2,r=20,c=1] ^^^5 facing @s
execute as @s[scores={move=10}] at @s rotated ~ 0 positioned ^^^5 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 if block ^^^1 air if block ^^^2 air if block ^^^3 air if block ^^^4 air if block ^^^5 air if block ^^^6 air run tp @e[tag=wrongway2,r=20,c=1] ^^^4 facing @s
execute as @s[scores={move=10}] at @s rotated ~ 0 positioned ^^^5 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 positioned ^^^4 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 if block ^^^1 air if block ^^^2 air if block ^^^3 air if block ^^^4 air if block ^^^5 air run tp @e[tag=wrongway2,r=20,c=1] ^^^3 facing @s
execute as @s[scores={move=10}] at @s rotated ~ 0 positioned ^^^5 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 positioned ^^^4 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 positioned ^^^3 unless entity @e[tag=wrongway2,r=1,c=1] at @s rotated ~ 0 at @e[tag=wrongway2,r=20,c=1] run tp @e[tag=wrongway2,r=1,c=1] ~~~ facing @s
execute as @s[scores={move=10}] at @s if entity @e[tag=wrongway2,r=20,c=1] run scoreboard players set @s move 1001

execute as @s[scores={move=3},tag=wrongway] at @s unless entity @e[tag=wrongway2,r=20,c=1] run tag @s remove wrongway
execute as @s[scores={move=3}] at @s unless entity @e[tag=wrongway2,r=20,c=1] run playanimation @s animation.stunned


execute as @s[tag=wrongway,scores={move=993..},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^2 rot ~ ~180
execute as @s[tag=wrongway,scores={move=993..}] at @s anchored eyes run camera @a[tag=wrongway2,r=20,c=1] set minecraft:free pos ^ ^ ^2 rot ~ ~180
execute as @s[tag=wrongway,scores={move=992},type=player] run execute as @e[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @a[tag=wrongway,scores={move=992},r=20,c=1] set minecraft:free pos ^ ^0.25 ^0.7 facing ~~~
execute as @s[tag=wrongway,scores={move=992}] run execute as @a[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @s set minecraft:free pos ^ ^0.25 ^0.7 facing ~~~

execute as @s[tag=wrongway,scores={move=976}] run execute as @a[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-0.15 ^-2.7 facing ~~~
execute as @s[tag=wrongway,scores={move=976},type=player] run execute as @e[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @a[tag=wrongway,scores={move=976},r=20,c=1] set minecraft:free pos ^ ^-0.15 ^-2.7 facing ~~~

execute as @s[tag=wrongway,scores={move=951}] run execute as @a[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @s set minecraft:free pos ^0.2 ^0.25 ^1.65 facing ~~~
execute as @s[tag=wrongway,scores={move=951},type=player] run execute as @e[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @a[tag=wrongway,scores={move=951},r=20,c=1] set minecraft:free pos ^0.2 ^0.25 ^1.65 facing ~~~

execute as @s[tag=wrongway,scores={move=952}] run playsound music.bass3 @a[r=20] ~~~

execute as @s[tag=wrongway,scores={move=932}] run execute as @a[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @s set minecraft:free pos ^0.75 ^-0.45 ^-2.5 facing ~~~
execute as @s[tag=wrongway,scores={move=932},type=player] run execute as @e[tag=wrongway2,r=20,c=1] at @s anchored eyes run camera @a[tag=wrongway,scores={move=932},r=20,c=1] set minecraft:free pos ^0.75 ^-0.45 ^-2.5 facing ~~~

execute as @s[tag=wrongway,scores={move=912},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^0.65 ^-0.15 ^0.1 rot ~-15 ~50
execute as @s[tag=wrongway,scores={move=912}] at @s anchored eyes run camera @a[tag=wrongway2,r=20,c=1] set minecraft:free pos ^0.65 ^-0.15 ^0.1 rot ~-15 ~50

execute as @s[tag=wrongway,scores={move=890},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.3 ^-0.3 ^-0.3 rot ~-15 ~50
execute as @s[tag=wrongway,scores={move=890}] at @s anchored eyes run camera @a[tag=wrongway2,r=20,c=1] set minecraft:free pos ^1.3 ^-0.3 ^-0.3 rot ~-15 ~50

camera @s[tag=wrongwayfinisher,scores={move=1990},type=player] set minecraft:free pos ^0.75 ^0.7 ^-0.15 rot ~21 ~45
execute as @s[tag=wrongwayfinisher,scores={move=1990}] at @s run camera @a[tag=wrongwayfinisher2,r=20,c=1] set minecraft:free pos ^0.75 ^0.75 ^-0.15 rot ~21 ~45

camera @s[tag=wrongwayfinisher,scores={move=1970},type=player] set minecraft:free pos ^1 ^0.25 ^2.5 facing ^^0.66^0.2
execute as @s[tag=wrongwayfinisher,scores={move=1970}] at @s run camera @a[tag=wrongwayfinisher2,r=20,c=1] set minecraft:free pos ^1 ^0.25 ^2.5 facing ^^0.66^0.2

camera @s[tag=wrongwayfinisher,scores={move=1921},type=player] set minecraft:free pos ^1.5 ^0.43 ^0.5 facing ^^0.33^0.5
execute as @s[tag=wrongwayfinisher,scores={move=1921}] at @s run camera @a[tag=wrongwayfinisher2,r=20,c=1] set minecraft:free pos ^1.5 ^0.43 ^0.5 facing ^^0.33^0.5

camera @s[tag=wrongwayfinisher,scores={move=1900},type=player] set minecraft:free pos ^ ^0.4 ^4 facing ~~1.4~
execute as @s[tag=wrongwayfinisher,scores={move=1900}] at @s run camera @a[tag=wrongwayfinisher2,r=20,c=1] set minecraft:free pos ^ ^0.4 ^4 facing ~~1.4~

camera @s[tag=wrongwayfinisher,scores={move=1878},type=player] fade time 0.5 0.75 0.15 color 0 0 0
execute as @s[tag=wrongwayfinisher,scores={move=1878}] at @s run camera @a[tag=wrongwayfinisher2,r=20,c=1] fade time 0.5 0.75 0.15 color 0 0 0

execute as @s[tag=wrongway,scores={move=990..992}] at @s run camerashake add @a[r=10] 0.5 0.15
execute as @s[tag=wrongway,scores={move=990..992}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 2 99999
execute as @s[tag=wrongway,scores={move=990..992}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 99999 2 99999
execute as @s[tag=wrongway,scores={move=990..992}] at @s run particle ds:flashstep1 ~~~
execute as @s[tag=wrongway,scores={move=990..992}] at @s run particle ds:flashstep2 ~~~
execute as @s[tag=wrongway,scores={move=990..991}] at @s run particle ds:ground_slam2 ~~~

execute as @s[tag=wrongway,scores={move=950..952}] at @s run camerashake add @a[r=10] 0.5 0.15
execute as @s[tag=wrongway,scores={move=950..952}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 2 99999
execute as @s[tag=wrongway,scores={move=950..952}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 99999 2 99999
execute as @s[tag=wrongway,scores={move=950..952}] at @s run particle ds:flashstep1 ~~~
execute as @s[tag=wrongway,scores={move=950..952}] at @s run particle ds:flashstep2 ~~~
execute as @s[tag=wrongway,scores={move=950..951}] at @s run particle ds:ground_slam2 ~~~

execute as @s[tag=wrongwayfinisher,scores={move=1900}] at @s anchored eyes run particle ds:wrongway ^0.75^0.75^

scoreboard players set @s[tag=wrongway,tag=!wrongwayfinisher] Move 5
scoreboard players set @s[tag=wrongway,tag=!wrongwayfinisher] Frames 5
scoreboard players set @s[tag=wrongway,tag=!wrongwayfinisher] Camera 5

scoreboard players set @e[tag=wrongway2,r=20,c=1,tag=!wrongwayfinisher2] Move 5
scoreboard players set @e[tag=wrongway2,r=20,c=1,tag=!wrongwayfinisher2] Frames 5
scoreboard players set @e[tag=wrongway2,r=20,c=1,tag=!wrongwayfinisher2] Camera 5
scoreboard players set @e[tag=wrongway2,r=20,c=1,tag=!wrongwayfinisher2] Stun 25

scoreboard players set @s[tag=wrongwayfinisher] Move 5
scoreboard players set @s[tag=wrongwayfinisher] Frames 5
scoreboard players set @s[tag=wrongwayfinisher] Camera 5

scoreboard players set @e[tag=wrongwayfinisher2,r=20,c=1] Move 5
scoreboard players set @e[tag=wrongwayfinisher2,r=20,c=1] Frames 5
scoreboard players set @e[tag=wrongwayfinisher2,r=20,c=1] Camera 5
scoreboard players set @e[tag=wrongwayfinisher2,r=20,c=1] Stun 25

execute as @s[tag=wrongway] at @s run tp @s ~~~~ 0
execute as @e[tag=wrongway2,r=20,c=1] at @s run tp @s ~~~~ 0

execute as @s[tag=wrongway,scores={move=21..969}] at @s run execute as @e[tag=wrongway2,r=20,c=1] at @s run tp @e[tag=wrongway,scores={move=21..969},r=20,c=1] ^^^-1 facing @s
execute as @s[tag=wrongwayfinisher,scores={move=1200..}] at @s run execute as @e[tag=wrongwayfinisher2,r=20,c=1] at @s run tp @e[tag=wrongwayfinisher,scores={move=1200..},r=20,c=1] ^^^-0.65 facing @s

playsound note.pling @s[scores={move=938},tag=!quicktime,type=player] ~~~ 1 2


scoreboard players set @s[scores={move=939..942,punch=1},type=player] move 930
titleraw @s[scores={move=932..941},tag=!quicktime,tag=!impactframesoff,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §4PUNCH §l§f>\n\n\n\n\n\n"}]}
titleraw @s[scores={move=932..941},tag=quicktime,tag=!impactframesoff,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l>> §aPUNCH §l§f<<\n\n\n\n\n\n"}]}
titleraw @s[scores={move=932..941},tag=!quicktime,tag=impactframesoff,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §4PUNCH §l§f>\n\n\n\n\n\n"}]}
titleraw @s[scores={move=932..941},tag=quicktime,tag=impactframesoff,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l>> §aPUNCH §l§f<<\n\n\n\n\n\n"}]}
title @s[scores={move=925..931},tag=!impactframesoff,type=player] title 
playsound note.bell @s[scores={move=930..935,punch=1},tag=!quicktime,type=player] ~~~ 1 1.5
playsound note.pling @s[scores={move=929},tag=!quicktime,type=player] ~~~ 1 0.5

tag @s[scores={move=931..938,punch=1},tag=!quicktime] add quicktime

execute as @s[scores={move=925..929},tag=!quicktime] at @s run playanimation @e[tag=wrongway2,r=20,c=1] animation.stunned i 0
execute as @s[scores={move=925..929},tag=!quicktime] at @s run tag @e[tag=wrongway2,r=20,c=1] remove wrongway2
playanimation @s[scores={move=925..929},tag=!quicktime] animation.stunned i 0
tag @s[scores={move=925..929},tag=!quicktime,tag=wrongway] remove wrongway
scoreboard players set @s[scores={move=925..929},tag=!quicktime] Stun 25
scoreboard players set @s[scores={move=925..929},tag=!quicktime] move 2
tag @s[scores={move=923..924},tag=quicktime] remove quicktime

execute as @s[scores={move=912}] at @s run function inverted_delete
execute as @s[scores={move=912}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 1 9999
execute as @s[scores={move=912}] at @s run damage @e[tag=wrongway2,r=10,c=1] 0 override entity @s
execute as @s[scores={move=912}] at @s run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=912}] at @s run scoreboard players add @e[tag=wrongway2,r=10,c=1] Hit 3
execute as @s[scores={move=912}] at @s run scoreboard players add @e[tag=wrongway2,r=10,c=1] Evade 1

tag @e[scores={respawn=1..},tag=wrongwayfinisher2] remove wrongwayfinisher2
tag @e[scores={respawn=1..},tag=wrongway2] remove wrongway2

execute as @e[tag=wrongwayfinisher2,r=20,c=1] at @s run tp @s ~~~~ 0
effect @e[tag=wrongwayfinisher2,r=20,c=1] slowness 1 25 true

execute as @s[scores={move=890}] at @s run function inverted_delete
execute as @s[scores={move=890}] at @s run playsound mob.slice @a[r=50] ^^1^1 9999 1.15 9999
execute as @s[scores={move=890}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 0.8 9999
execute as @s[scores={move=890}] at @s unless entity @e[tag=wrongway2,scores={detect_health=0..30},r=10,c=1] run damage @e[tag=wrongway2,tag=!wrongwayfinisher2,r=10,c=1] 30 override entity @s
execute as @s[scores={move=890}] at @s run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=890}] at @s run scoreboard players add @e[tag=wrongway2,tag=!wrongwayfinisher2,r=10,c=1] Hit 3
execute as @s[scores={move=890}] at @s run scoreboard players add @e[tag=wrongway2,tag=!wrongwayfinisher2,r=10,c=1] Evade 30
execute as @s[scores={move=880}] at @s unless entity @e[tag=wrongway2,scores={detect_health=0..30},r=10,c=1] run scoreboard players set @s move 2

execute as @s[scores={move=880}] at @s run tag @e[tag=wrongway2,scores={detect_health=0..30},r=10,c=1] add wrongwayfinisher2
execute as @s[scores={move=880},tag=!wrongwayfinisher] at @s if entity @e[tag=wrongway2,scores={detect_health=0..30},r=10,c=1] run tag @s add wrongwayfinisher
execute as @s[scores={move=880}] at @s if entity @e[tag=wrongway2,scores={detect_health=0..30},r=10,c=1] run scoreboard players set @s move 2001

playanimation @s[scores={move=2000..2001}] animation.wrong_way1finish
execute as @s[scores={move=2000..2001}] at @s run playanimation @e[tag=wrongwayfinisher2,r=10,c=1] animation.wrong_way2finish
execute as @s[scores={move=2000..2001}] at @s run tag @e[tag=wrongway2,r=10,c=1] remove wrongway2
tag @s[scores={move=2000..2001},tag=wrongway] remove wrongway


execute as @s[scores={move=1990}] at @s run playsound random.explode @a[r=50] ^^1^1 9999 2.5 9999
execute as @s[scores={move=1990}] at @s run playsound mob.enderdragon.flap @a[r=50] ^^1^1 9999 1 9999
execute as @s[scores={move=1990}] at @s run camerashake add @a[r=10] 1 0.25
execute as @s[scores={move=1990}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1


execute as @s[scores={move=1985}] at @s run function inverted_delete
execute as @s[scores={move=1985}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 1.5 9999
execute as @s[scores={move=1985}] at @s run damage @e[tag=wrongwayfinisher2,r=10,c=1] 0 override entity @s 
execute as @s[scores={move=1985}] at @s run camerashake add @a[r=10] 0.2 0.15
execute as @s[scores={move=1985}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Hit 3
execute as @s[scores={move=1985}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1
execute as @s[scores={move=1985}] at @s run particle ds:wrongway_slice1 ^0.1^0.6^0.87
execute as @s[scores={move=1985}] at @s run particle ds:wrongway_slice2 ^0.1^0.6^0.87

execute as @s[scores={move=1980}] at @s run function inverted_delete
execute as @s[scores={move=1980}] at @s run playsound mob.slice @a[r=50] ^^1^1 9999 1.05 9999
execute as @s[scores={move=1980}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 1.75 9999
execute as @s[scores={move=1980}] at @s run damage @e[tag=wrongwayfinisher2,r=10,c=1] 0 override entity @s 
execute as @s[scores={move=1980}] at @s run camerashake add @a[r=10] 0.2 0.15
execute as @s[scores={move=1980}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Hit 3
execute as @s[scores={move=1980}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1
execute as @s[scores={move=1980}] at @s run particle ds:wrongway_slice1 ^0.1^0.44^0.67
execute as @s[scores={move=1980}] at @s run particle ds:wrongway_slice2 ^0.1^0.44^0.67

execute as @s[scores={move=1975}] at @s run function inverted_delete
execute as @s[scores={move=1975}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 1.65 9999
execute as @s[scores={move=1975}] at @s run damage @e[tag=wrongwayfinisher2,r=10,c=1] 0 override entity @s 
execute as @s[scores={move=1975}] at @s run camerashake add @a[r=10] 0.2 0.15
execute as @s[scores={move=1975}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Hit 3
execute as @s[scores={move=1975}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1
execute as @s[scores={move=1975}] at @s run particle ds:wrongway_slice1 ^0.1^0.24^0.47
execute as @s[scores={move=1975}] at @s run particle ds:wrongway_slice2 ^0.1^0.24^0.47

execute as @s[scores={move=1968}] at @s run function inverted_delete
execute as @s[scores={move=1968}] at @s run playsound mob.slice @a[r=50] ^^1^1 9999 0.65 9999
execute as @s[scores={move=1968}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 0.85 9999
execute as @s[scores={move=1968}] at @s run damage @e[tag=wrongwayfinisher2,r=10,c=1] 0 override entity @s 
execute as @s[scores={move=1968}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=1968}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Hit 5
execute as @s[scores={move=1968}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1
execute as @s[scores={move=1968}] at @s run camera @a[r=5] fade time 0 0 0.5 color 200 0 0

execute as @s[scores={move=1920}] at @s run function inverted_delete
execute as @s[scores={move=1920}] at @s run playsound mob.wither.break_block @a[r=50] ^^^1 9999 0.8 9999
execute as @s[scores={move=1920}] at @s run playsound mob.wither.break_block @a[r=50] ^^^1 9999 0.65 9999
execute as @s[scores={move=1920}] at @s run playsound mob.slash1 @a[r=50] ^^1^1 9999 1.5 9999
execute as @s[scores={move=1920}] at @s run playsound mob.slice @a[r=50] ^^1^1 9999 0.5 9999
execute as @s[scores={move=1920}] at @s run playsound mob.sword @a[r=50] ^^1^1 9999 0.5 9999
execute as @s[scores={move=1920}] at @s run damage @e[tag=wrongwayfinisher2,r=10,c=1] 0 override entity @s 
execute as @s[scores={move=1920}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=1912..1920}] at @s run particle ds:bleeding2 ^^0.2^0.7
execute as @s[scores={move=1912..1920}] at @s run particle ds:wrongway_slice2 ^^0.2^0.7
execute as @s[scores={move=1920}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Hit 5
execute as @s[scores={move=1920}] at @s run scoreboard players add @e[tag=wrongwayfinisher2,r=10,c=1] Evade 1
execute as @s[scores={move=1920}] at @s run scoreboard players set @e[tag=wrongwayfinisher2,r=10,c=1] dying 280
execute as @s[scores={move=1920}] at @s run camera @a[r=5] fade time 0 0 1.25 color 200 0 0

execute as @s[scores={move=1886}] at @s run playsound mob.slash1 @a[r=50] ^^1^1 9999 1.9 9999
execute as @s[scores={move=1885}] at @s run playsound mob.slime.jump @a[r=50] ^^1^1 9999 0.585 9999
execute as @s[scores={move=1885}] at @s run particle ds:blood ^-0.3^^0.2
execute as @s[scores={move=1885}] at @s run particle ds:blood ^-0.3^^0.2
execute as @s[scores={move=1885}] at @s run particle ds:blood ^-0.3^^0.2
execute as @s[scores={move=1885}] at @s run particle ds:blood ^-0.3^^0.2


scoreboard players set @s[scores={move=1860..1865}] move 2

execute as @s[scores={move=1..3}] at @s run scoreboard players set @e[tag=wrongway2,r=20,c=1] Stun 5
execute as @s[scores={move=1..3}] at @s run scoreboard players set @e[tag=wrongwayfinisher2,r=20,c=1] Stun 5
tag @s[scores={move=1..2},tag=wrongway] remove wrongway
execute as @s[scores={move=1..2}] at @s run tag @e[tag=wrongway2,r=20,c=1] remove wrongway2
tag @s[scores={move=1..2},tag=wrongwayfinisher] remove wrongwayfinisher
execute as @s[scores={move=1..2}] at @s run tag @e[tag=wrongwayfinisher2,r=20,c=1] remove wrongwayfinisher2
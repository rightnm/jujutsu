playanimation @s[scores={move=110}] animation.vanishing_blow1

tag @s[scores={move=1..2},tag=form3] remove form3

tag @s[scores={move=101..,Stun=1..},tag=form3] remove form3
playanimation @s[scores={move=101..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=101..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..101}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..101}] Camera 4
scoreboard players set @e[tag=vanishingblow,r=65,c=1] Camera 4
scoreboard players set @e[tag=vanishingblow,r=65,c=1] Move 4
scoreboard players set @e[tag=vanishingblow,r=65,c=1] Stun 25


scoreboard players set @s[scores={move=30..32}] atk 2

execute as @s[scores={move=106..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=1..2}] at @s run tag @e[tag=vanishingblow,r=65,c=1] remove vanishingblow

execute as @s[scores={move=5..101},type=player] at @s run tp @s @s
execute as @s[scores={move=5..101},type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=102}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=101}] at @s anchored eyes positioned ^^^2 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=101}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] add vanishingblow
execute as @s[scores={move=101}] at @s positioned ^^^2 run playanimation @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] animation.vanishing_blow2

execute as @s[scores={move=101}] at @s positioned ^^^2 unless entity @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.cancel
execute as @s[scores={move=101}] at @s positioned ^^^2 unless entity @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 2
execute as @s[scores={move=99..100}] at @s unless entity @e[tag=vanishingblow,r=8,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=99..100}] at @s unless entity @e[tag=vanishingblow,r=8,c=1] run scoreboard players set @s move 2

execute as @s[scores={move=100},type=player] at @s anchored eyes run camera @s fade time 0 0.12 0.1 color 0 0 0
execute as @s[scores={move=100}] at @s anchored eyes run camera @a[tag=vanishingblow,r=8,c=1] fade time 0 0.12 0.1 color 0 0 0

execute as @s[scores={move=98},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1 ^1 ^-1.55 facing @e[tag=vanishingblow,r=8,c=1]
execute as @s[scores={move=98}] at @s anchored eyes run camera @a[tag=vanishingblow,r=8,c=1] set minecraft:free pos ^-1 ^1 ^-1.55 facing @e[tag=vanishingblow,r=8,c=1]

execute as @s[scores={move=82},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1 ^-0.63 ^0.15 rot ~-16 ~35
execute as @s[scores={move=82}] at @s anchored eyes run camera @a[tag=vanishingblow,r=8,c=1] set minecraft:free pos ^1 ^-0.63 ^0.15 rot ~-16 ~35


execute as @s[scores={move=67},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-0.53 ^-0.5 ^0.25 rot ~-25 ~-25
execute as @s[scores={move=67}] at @s anchored eyes run camera @a[tag=vanishingblow,r=8,c=1] set minecraft:free pos ^-0.53 ^-0.5 ^0.25 rot ~-25 ~-25

title @s[scores={move=25..98},tag=!impactframesoff,type=player] title 
title @a[tag=vanishingblow,tag=!impactframesoff,r=8,c=1] title 
execute as @s[scores={move=66..98}] at @s run tp @e[tag=vanishingblow,r=8,c=1] ^^^1 facing @s
execute as @s[scores={move=31..65}] at @s run tp @e[tag=vanishingblow,r=8,c=1] ^^^1
execute as @s[scores={move=22..65}] at @s run particle ds:cutscene_black1
execute as @s[scores={move=22..65}] at @s run particle ds:cutscene_black3 ~~0.1~
execute as @s[scores={move=65}] at @s run playsound music.bass3 @a[r=5] ~~~ 99999 1.33 99999
execute as @s[scores={move=31..65}] at @s run execute as @e[tag=vanishingblow,r=8,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={move=65}] at @s run execute as @e[tag=vanishingblow,r=8,c=1] at @s run tp @e[scores={move=65},r=8,c=1] ^^^-1 facing @s

execute as @s[scores={move=89..91}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 1.7
execute as @s[scores={move=89..91}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.7
execute as @s[scores={move=89..91}] at @s run particle ds:flashstep1
execute as @s[scores={move=89..91}] at @s run particle ds:flashstep2
execute as @s[scores={move=89}] at @s run particle ds:evade3

execute as @s[scores={move=64..66}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 1.7
execute as @s[scores={move=64..66}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.7
execute as @s[scores={move=64..66}] at @s run particle ds:flashstep1
execute as @s[scores={move=64..66}] at @s run particle ds:flashstep2
execute as @s[scores={move=64}] at @s run particle ds:evade3

execute as @s[scores={move=31}] at @s run particle ds:dirt0
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:ground_slam2
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:ground_slam3
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:ground_slam4
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:heavy_impact3
execute as @s[scores={move=31}] at @s positioned ^^0.15^0.5 run particle ds:rubble3
execute as @s[scores={move=31}] at @s positioned ^^1^0.5 run particle ds:heavy_impact5

execute as @s[scores={move=35}] at @s run effect @e[r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={move=29..31}] at @s run effect @e[r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 0 30 true

scoreboard players random @s[scores={move=33},tag=!heavenlyrestriction] blackflashchance 1 69
scoreboard players set @s[scores={move=33},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

execute as @s[scores={move=31}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=31}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=31}] at @s positioned ^^^0.5 run playsound mob.punch @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=31}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^2 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=30}] at @s positioned ^^^2 run scoreboard players operation @e[tag=vanishingblow,r=8,c=1] damage += @s damageadd
execute as @s[scores={move=30}] at @s positioned ^^^2 run damage @e[tag=vanishingblow,r=8,c=1] 14 override
execute as @s[scores={move=30}] at @s positioned ^^^2 run effect @e[tag=vanishingblow,r=8,c=1] levitation 1 22 true
execute as @s[scores={move=30}] at @s positioned ^^^2 run scoreboard players add @e[tag=vanishingblow,r=8,c=1] Evade 22
execute as @s[scores={move=30}] at @s positioned ^^^2 run scoreboard players set @e[tag=vanishingblow,r=8,c=1] knockdown 95
execute as @s[scores={move=30}] at @s positioned ^^^2 run scoreboard players add @e[tag=vanishingblow,r=8,c=1] Hit 15
execute as @s[scores={move=30}] at @s run tag @e[tag=vanishingblow,r=8,c=1] remove vanishingblow
execute as @s[scores={move=30}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=30}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=30}] at @s run function damages/blunt_damage

execute as @s[scores={move=34}] at @s run summon ds:red_reversal ^^^14
execute as @s[scores={move=34}] at @s run summon ds:red_reversal ^^^19
execute as @s[scores={move=34}] at @s run summon ds:red_reversal ^^^24
execute as @s[scores={move=34}] at @s run summon ds:red_reversal ^^^29
execute as @s[scores={move=34}] at @s run summon ds:red_reversal ^^^34

execute as @s[scores={move=27},type=player] at @s run camera @s fade time 0.25 0.35 0.25 color 0 0 0
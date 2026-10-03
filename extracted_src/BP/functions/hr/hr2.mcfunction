playanimation @s[scores={move=60}] animation.deadly_strikes1

tag @s[scores={move=1..2},tag=form2] remove form2

tag @s[scores={move=52..,Stun=1..},tag=form2] remove form2
playanimation @s[scores={move=52..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=52..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..58}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..51}] Camera 4
scoreboard players set @a[tag=deadlystriked,r=40,c=1] Camera 4

scoreboard players set @s[scores={move=50..52}] atk 2
scoreboard players set @s[scores={move=14..15}] atk 2

execute as @s[scores={move=56..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=52..57}] at @s positioned ^^^2 unless entity @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run scriptevent ds:knockback 4

execute as @s[scores={move=1..2}] at @s run tag @e[tag=deadlystriked,r=40,c=1] remove deadlystriked

execute as @s[scores={move=16..52}] at @s run tp @s @s
execute as @s[scores={move=4..15}] at @s run tp @s ~~~ facing ~~-10~

execute as @s[scores={move=50}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s run function damages/blunt_damage

execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:heavy_impact3
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:heavy_impact5
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:ground_slam3
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:dirt2
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:dirt0
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:pushed_up1
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:pushed_up2
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run particle ds:ground_slam1
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^0.5 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=52..54},tag=griefable] at @s positioned ^^7^2 run effect @e[tag=!Frames,r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 1 true
execute as @s[scores={move=49..50},tag=griefable] at @s positioned ^^7^2 run effect @e[tag=!Frames,r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 0 30 true

execute as @s[scores={move=51}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=51}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=51}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 2.25 9999
execute as @s[scores={move=50}] at @s anchored eyes positioned ^^^2 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=50}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 5 override
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 35
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 8
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 95
execute as @s[scores={move=50}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=50}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] add deadlystriked

execute as @s[scores={move=50}] at @s positioned ^^^2 unless entity @e[tag=!Frames,r=4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.cancel
execute as @s[scores={move=50}] at @s positioned ^^^2 unless entity @e[tag=!Frames,r=4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 2
execute as @s[scores={move=45..49}] at @s unless entity @e[tag=deadlystriked,r=12] run playanimation @s animation.cancel
execute as @s[scores={move=45..49}] at @s unless entity @e[tag=deadlystriked,r=12] run scoreboard players set @s move 2

scoreboard players set @e[tag=deadlystriked,r=40,c=1] knockdown 95

execute as @s[scores={move=53},tag=griefable] at @s positioned ^^7^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^11^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^14^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^16^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^19^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^22^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^25^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^28^2 run summon ds:lapse_explode
execute as @s[scores={move=53},tag=griefable] at @s positioned ^^31^2 run summon ds:lapse_explode
execute as @s[scores={move=40..52},tag=griefable] at @s run kill @e[type=item,r=50]

camera @s[scores={move=40..48},type=player] set minecraft:free pos ^ ^1 ^2 rot ~ ~180
execute as @s[scores={move=40..48}] at @s run camera @a[tag=deadlystriked,c=1,r=12] set minecraft:free pos ^ ^1 ^2 rot ~ ~180

camera @s[scores={move=16..39},type=player] set minecraft:free pos ^-2 ^-2 ^0.45 facing @s
execute as @s[scores={move=16..39}] at @s run camera @a[tag=deadlystriked,c=1,r=12] set minecraft:free pos ^-2 ^-2 ^0.45 facing @s

camera @s[scores={move=15},type=player] set minecraft:free pos ^0.3 ^-1 ^-7.6 facing @s
execute as @s[scores={move=15}] at @s run camera @a[tag=deadlystriked,c=1,r=12] set minecraft:free pos ^0.3 ^-1 ^-7.6 facing @s


execute as @s[scores={move=40..41}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 1.7
execute as @s[scores={move=40..41}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.7
execute as @s[scores={move=40..41}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=40..41}] at @s run particle ds:flashstep2 ~~~


title @s[scores={move=16..39},tag=!impactframesoff,type=player] title 
title @s[scores={move=15},tag=!impactframesoff,type=player] title 
title @s[scores={move=14},tag=!impactframesoff,type=player] title 
title @s[scores={move=13},tag=!impactframesoff,type=player] title 
title @s[scores={move=12},tag=!impactframesoff,type=player] title 
title @s[scores={move=11},tag=!impactframesoff,type=player] title §l
camera @s[scores={move=16},type=player] fade time 0.1 0.2 0.1 color 255 255 255
title @a[tag=deadlystriked,tag=!impactframesoff,r=40,c=1] title 

execute as @s[scores={move=37..38}] at @s run playsound music.bass3 @a[r=30] ~~~ 999999 1.25 999999

execute as @s[scores={move=37..38}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 1.7
execute as @s[scores={move=37..38}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.7
execute as @s[scores={move=37..39}] at @s run particle ds:flashstep1 ~~1~0.5
execute as @s[scores={move=37..39}] at @s run particle ds:flashstep2 ~~1~0.5
execute as @s[scores={move=38}] at @s run particle ds:ground_slam3 ~~1~0.5
execute as @s[scores={move=40}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=48}] at @s positioned ^^^2 run tp @e[tag=deadlystriked,c=1,r=6] ~~35~
execute as @s[scores={move=48}] at @s positioned ^^^2 run tp @s ~~35~

execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound mob.punch @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=14}] at @s anchored eyes positioned ^^^2 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players operation @e[tag=deadlystriked,r=12,c=1] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2 run damage @e[tag=deadlystriked,r=12,c=1] 8 override
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players add @e[tag=deadlystriked,r=12,c=1] Stun 35
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players add @e[tag=deadlystriked,r=12,c=1] Evade 8
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players set @e[tag=deadlystriked,r=12,c=1] knockdown 95
execute as @s[scores={move=14}] at @s positioned ^^^2 run scoreboard players add @e[tag=deadlystriked,r=12,c=1] Hit 10

execute as @s[scores={move=11..14}] at @s run effect @e[tag=deadlystriked,r=12,c=1] resistance 1 20 true
execute as @s[scores={move=10..13}] at @s run tp @e[tag=deadlystriked,r=12,c=1] ~~-32.25~

execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^6 run camerashake add @a[r=100] 4 1

execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^3 run particle ds:dirt0
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^3 run particle ds:dirt4
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^5 run particle ds:dirt2

execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^4 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^8 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^14 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^18 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^22 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^26 run particle ds:ground_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^30 run particle ds:ground_slam3

execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^6 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^9 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^12 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^15 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^18 run summon ds:red_reversal
execute as @s[scores={move=5..13},tag=griefable] at @s positioned ^^^18 run kill @e[type=item,r=50]
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^21 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^24 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^27 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^30 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^33 run summon ds:red_reversal
execute as @s[scores={move=13},tag=griefable] at @s positioned ^^^36 run summon ds:red_reversal

execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:large_slam1
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:large_slam2
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:large_slam3
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:large_slam4
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:large_slam5
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:dirt0
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:dirt2
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^30 run particle ds:dirt4
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^32 run particle ds:leap
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^33 run particle ds:ground_slam2
execute as @s[scores={move=14},tag=griefable] at @s positioned ^^^33 run particle ds:ground_slam3


execute as @s[scores={move=15..39}] at @s run execute as @e[tag=deadlystriked,c=1,r=12] at @s run tp @s ~~~
execute as @s[scores={move=15..39}] at @s run tp @e[tag=deadlystriked,c=1,r=12] ~~-0.25~0.25 facing @s


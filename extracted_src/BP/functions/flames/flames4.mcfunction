playanimation @s[scores={move=20}] animation.ash_slam
tag @s[scores={move=1..2},tag=form4] remove form4

tag @s[scores={move=3..,Stun=1..},tag=form4] remove form4
playanimation @s[scores={move=3..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=3..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=9..11}] atk 2
scoreboard players set @s[scores={move=4..5}] atk 2

execute as @s[scores={move=9}] at @s run function damages/blunt_damage
execute as @s[scores={move=9}] at @s run function damages/fire_damage
execute as @s[scores={move=1..9}] at @s run tp @s @s
execute as @s[scores={move=10..13}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=18}] at @s positioned ^^2^1.5 run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=18}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=18}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=18}] at @s positioned ^^2^1.5 run playsound mob.burn @a[r=50] ~~~ 0.1 3


execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_crater
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_downslam8
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_downslam3
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_downslam4
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_downslam6
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_impact1
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_impact2
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:fire_impact3
execute as @s[scores={move=9}] at @s  positioned ^^^1.5 run particle ds:dirt0
execute as @s[scores={move=9}] at @s positioned ^^^1.5 unless block ~~-0.25~ air run particle ds:fire_crater1 ~~0.1 ~
execute as @s[scores={move=6}] at @s positioned ^^^1.5 unless block ~~-0.25~ air run particle ds:fire_crater2 ~~0.1 ~
execute as @s[scores={move=10}] at @s positioned ^^^4.5 run playsound mob.burn @a[r=50] ~~~ 0.2 2
execute as @s[scores={move=10}] at @s positioned ^^^4.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s positioned ^^^4.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 2.4 9999
execute as @s[scores={move=9}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=10}] at @s positioned ^^^4.5 run playsound firework.blast @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=11}] at @s  positioned ^^^1.5 run particle ds:flame_stars
execute as @s[scores={move=11}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 3 0.15
execute as @s[scores={move=18}] at @s run camerashake add @a[r=20] 1 0.15

execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam1
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam8
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam3
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam4
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam6
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam7
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_downslam8
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:flame_stars
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:flame_stars
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:flame_stars
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_impact1
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_impact2
execute as @s[scores={move=6}] at @s  positioned ^^^1.5 run particle ds:fire_impact3
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run playsound firework.blast @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999

execute as @s[scores={move=9..12}] at @s positioned ^^^4.5 run execute as @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[c=1,scores={move=9..12}]

execute as @s[scores={move=9}] at @s positioned ^^^4.5 run execute as  @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=9}] at @s anchored eyes positioned ^^^4.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 6 override
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 3
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 15
execute as @s[scores={move=9}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 20



execute as @s[scores={move=6}] at @s positioned ^^^4.5 run execute as  @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=6}] at @s anchored eyes positioned ^^^4.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 14 override
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 14
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run effect @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 20 true
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 15
execute as @s[scores={move=6}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 90
execute as @s[scores={move=6}] at @s run summon ds:red_reverse ^^^-1
execute as @s[scores={move=6}] at @s run summon ds:red_reverse ^^^1

scoreboard players set @s[scores={move=8..9}] move 7


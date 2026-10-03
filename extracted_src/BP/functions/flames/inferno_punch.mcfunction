playanimation @s[scores={move=40}] animation.flames.ab3

tag @s[scores={move=1..2},tag=wep3] remove wep3

tag @s[scores={move=16..,Stun=1..},tag=wep3] remove wep3
playanimation @s[scores={move=16..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..}] Move 4

scoreboard players set @s[scores={move=18..11}] atk 2

execute as @s[scores={move=18}] at @s run function damages/blunt_damage
execute as @s[scores={move=18}] at @s run function damages/fire_damage
execute as @s[scores={move=11..20}] at @s run tp @s @s


execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=20}] at @s run summon ds:projectile ^^1^1 facing ^^1^20 none infernopunch
execute as @s[scores={move=19}] at @s run scoreboard players set @e[type=ds:projectile,name=infernopunch,c=1,r=5] Deleter 8
execute as @s[scores={move=17..19}] at @s run playanimation @e[type=ds:projectile,name=infernopunch,c=1,r=5] animation.flames.ab3b
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit1
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit4
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact1
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact2
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact3
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=36}] at @s positioned ^^2^1.5 run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=36}] at @s positioned ^^2^1.5 run playsound mob.shock @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=36}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=36}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=36}] at @s positioned ^^2^1.5 run playsound mob.burn @a[r=50] ~~~ 0.1 2

execute as @s[scores={move=29}] at @s positioned ^^2^1.5 run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=29}] at @s positioned ^^2^1.5 run playsound mob.shock @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=29}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=29}] at @s positioned ^^2^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=29}] at @s positioned ^^2^1.5 run playsound mob.burn @a[r=50] ~~~ 0.15 1

execute as @s[scores={move=18..22}] at @s positioned ^^^4.5 run execute as  @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[c=1,scores={move=18..22}]
execute as @s[scores={move=19}] at @s positioned ^^^4.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=19}] at @s positioned ^^^4.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=19}] at @s positioned ^^^4.5 run playsound mob.burn @a[r=50] ~~~ 0.2 0.65
execute as @s[scores={move=19}] at @s positioned ^^^4.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=19}] at @s positioned ^^^4.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run execute as  @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^4.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players operation @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 14 override
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run effect @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 20 true
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 40
execute as @s[scores={move=18}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=4.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 90
execute as @s[scores={move=18}] at @s run summon ds:red_reverse ^^^-1
execute as @s[scores={move=18}] at @s run summon ds:red_reverse ^^^1


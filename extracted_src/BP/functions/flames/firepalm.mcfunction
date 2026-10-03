playanimation @s[scores={move=20}] animation.flames.ab1

tag @s[scores={move=1..2},tag=wep1] remove wep1

tag @s[scores={move=10..,Stun=1..},tag=wep1] remove wep1
playanimation @s[scores={move=10..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=10..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..15}] Move 4

scoreboard players set @s[scores={move=10..11}] atk 2

execute as @s[scores={move=10}] at @s run function damages/blunt_damage
execute as @s[scores={move=10}] at @s run function damages/fire_damage
execute as @s[scores={move=1..12}] at @s run tp @s ~~~

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=6}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 0 20 true

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit1
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit4
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact1
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact3
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=10..12}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[c=1,scores={move=10..12}]
execute as @s[scores={move=19}] at @s positioned ^^^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.burn @a[r=50] ~~~ 0.1 1
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 9 override
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Flourish 6
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 33
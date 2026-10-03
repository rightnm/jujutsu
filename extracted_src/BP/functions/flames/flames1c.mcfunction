playanimation @s[scores={move=60}] animation.scorched_earth

tag @s[scores={move=1..2},tag=form1c] remove form1c

tag @s[scores={move=20..,Stun=1..},tag=form1c] remove form1c
playanimation @s[scores={move=20..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=20..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..}] Move 4
scoreboard players set @s[scores={move=11..43}] Frames 5
scoreboard players set @s[scores={move=10..41}] Camera 4

execute as @s[scores={move=10..41}] at @s run tp @s @s

execute as @s[scores={move=23..41}] at @s if block ~~-0.5~ air run playanimation @s animation.cancel
execute as @s[scores={move=23..41}] at @s if block ~~-0.5~ air run scoreboard players set @s move 3

execute as @s[scores={move=23..24}] at @s if entity @e[tag=griefable] positioned ~~~4 run function flames/heat
execute as @s[scores={move=23..24}] at @s if entity @e[tag=griefable] positioned ~~~-4 run function flames/heat
execute as @s[scores={move=23..24}] at @s if entity @e[tag=griefable] positioned ~4~~ run function flames/heat
execute as @s[scores={move=23..24}] at @s if entity @e[tag=griefable] positioned ~-4~~ run function flames/heat
execute as @s[scores={move=23..24}] at @s if entity @e[tag=griefable] positioned ~~~ run function flames/heat

execute as @s[scores={move=55}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=55}] at @s run camerashake add @a[r=50] 2 0.15

execute as @s[scores={move=41}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=41}] at @s run camerashake add @a[r=50] 2 0.15

execute as @s[scores={move=10..41}] at @s run particle ds:scorched1
execute as @s[scores={move=10..41}] at @s run particle ds:scorched2
execute as @s[scores={move=10..41}] at @s run particle ds:scorched3
execute as @s[scores={move=10..41}] at @s run particle ds:scorched4
execute as @s[scores={move=10..41}] at @s run particle ds:scorched5
execute as @s[scores={move=10..41}] at @s run particle ds:scorched6
execute as @s[scores={move=10..41}] at @s run particle ds:scorched7
execute as @s[scores={move=7..41}] at @s run particle ds:scorched_end
execute as @s[scores={move=10..22}] at @s run particle ds:scorched_end2
execute as @s[scores={move=10..41}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.3 9999
execute as @s[scores={move=10..41}] at @s run  playsound mob.burn @a[r=50] ~~~ 0.1 0.9
execute as @s[scores={move=10..41}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=10..41}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=10..41}] at @s run damage @e[tag=!Frames,type=!ds:ember_insect,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 2 override
execute as @s[scores={move=10..41}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 2
execute as @s[scores={move=10..41}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 1
execute as @s[scores={move=10..41}] at @s run scoreboard players set @e[tag=!Frames,type=!ds:ember_insect,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 8
execute as @s[scores={move=10..41}] at @s run scoreboard players set @e[tag=!Frames,type=!ds:ember_insect,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 3
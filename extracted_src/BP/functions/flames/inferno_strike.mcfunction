playanimation @s[scores={move=55}] animation.flames.ab4

tag @s[scores={move=1..2},tag=wep4] remove wep4

tag @s[scores={move=30..,Stun=1..},tag=wep4] remove wep4
playanimation @s[scores={move=30..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=30..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 15
scoreboard players set @s[scores={move=15..30}] Frames 5
scoreboard players set @s[scores={move=1..30}] Camera 15

scoreboard players set @s[scores={move=29..31}] atk 2

execute as @s[scores={move=29}] at @s run function damages/explosion_damage
execute as @s[scores={move=29}] at @s run function damages/fire_damage
execute as @s[scores={move=11..30}] at @s run tp @s @s

execute as @s[scores={move=30..35}] at @s run scriptevent ds:knockback 4

execute as @s[scores={move=29}] at @s run particle ds:ground_slam3
execute as @s[scores={move=29}] at @s run particle ds:fire_hit1
execute as @s[scores={move=29}] at @s run particle ds:fire_hit2
execute as @s[scores={move=29}] at @s run particle ds:fire_hit2
execute as @s[scores={move=29}] at @s run particle ds:fire_hit2
execute as @s[scores={move=29}] at @s run particle ds:fire_hit4
execute as @s[scores={move=29}] at @s run particle ds:fire_impact1
execute as @s[scores={move=29}] at @s run particle ds:fire_impact2
execute as @s[scores={move=29}] at @s run particle ds:fire_impact3
execute as @s[scores={move=29}] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=49}] at @s run camerashake add @a[r=20] 1 0.4
execute as @s[scores={move=49}] at @s run playsound mob.shock @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=49}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={move=49}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.30 9999
execute as @s[scores={move=49}] at @s run playsound mob.burn @a[r=50] ~~~ 99999 1 99999

execute as @s[scores={move=39}] at @s run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=39}] at @s run playsound mob.shock @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=39}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.30 9999
execute as @s[scores={move=39}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=39}] at @s run playsound mob.burn @a[r=50] ~~~ 99999 1 99999

execute as @s[scores={move=30}] at @s run particle ds:inferno_quake1 ~~1~
execute as @s[scores={move=30}] at @s run particle ds:inferno_quake2
execute as @s[scores={move=30}] at @s run particle ds:inferno_quake3
execute as @s[scores={move=30}] at @s run particle ds:inferno_quake4
execute as @s[scores={move=30}] at @s run particle ds:inferno_quake5
execute as @s[scores={move=30}] at @s run particle ds:inferno_quake6
execute as @s[scores={move=30}] at @s run particle ds:fire_crater_large1
execute as @s[scores={move=30}] at @s run particle ds:fire_crater_large2
execute as @s[scores={move=30}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.30 9999
execute as @s[scores={move=30}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=30}] at @s run playsound mob.burn @a[r=50] ~~~ 9999 0.67 9999
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=31}] at @s run playsound mob.burst @a[r=50] ~~~ 9999 1.05 9999
execute as @s[scores={move=29}] at @s run execute as @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=29}] at @s run scoreboard players operation @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=29}] at @s run damage @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 8 override
execute as @s[scores={move=29}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=29}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=29}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 25
execute as @s[scores={move=29}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 20
execute as @s[scores={move=29}] at @s run camerashake add @a[r=60] 4 0.25 rotational
camera @s[scores={move=29},type=player] set minecraft:free pos ^6^6^4 facing ~~~
execute as @s[scores={move=29}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=24}] at @s run effect @a[r=100] night_vision 0 20 true

execute as @s[scores={move=15}] at @s run particle ds:inferno_quake1 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:inferno_quake2
execute as @s[scores={move=15}] at @s run particle ds:inferno_quake3
execute as @s[scores={move=15}] at @s run particle ds:inferno_quake4
execute as @s[scores={move=15}] at @s run particle ds:inferno_quake5
execute as @s[scores={move=15}] at @s run particle ds:inferno_quake7
execute as @s[scores={move=15}] at @s run particle ds:fire_crater_large1b
execute as @s[scores={move=15}] at @s run particle ds:fire_crater_large2b
execute as @s[scores={move=15}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.3 9999
execute as @s[scores={move=15}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=15}] at @s run playsound mob.burn @a[r=50] ~~~ 9999 0.67 9999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=19}] at @s run playsound mob.burst @a[r=50] ~~~ 9999 0.75 9999
execute as @s[scores={move=19}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=15}] at @s run execute as @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=15}] at @s run scoreboard players operation @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=15}] at @s run damage @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 14 override
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 25
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 20
execute as @s[scores={move=15}] at @s run camerashake add @a[r=60] 4 0.4 rotational
camera @s[scores={move=15},type=player] set minecraft:free pos ^5^12^8 facing ~~~
execute as @s[scores={move=15}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=8}] at @s run effect @a[r=100] night_vision 0 20 true

execute as @s[scores={move=14}] at @s if entity @e[tag=griefable] run effect @e[r=20,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 25 true
execute as @s[scores={move=13}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~12~4 
execute as @s[scores={move=13}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~12~-4 
execute as @s[scores={move=13}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~12~
execute as @s[scores={move=13}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~4~12~
execute as @s[scores={move=13}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~-4~12~
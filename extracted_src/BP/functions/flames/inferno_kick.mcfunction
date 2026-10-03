playanimation @s[scores={move=55}] animation.flames.ab5

tag @s[scores={move=1..2},tag=wep5] remove wep5

tag @s[scores={move=26..,Stun=1..},tag=wep5] remove wep5
playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

execute as @s[scores={move=1..2}] at @s run tag @e[tag=infernokicktrg,c=1,r=60] remove infernokicktrg

scoreboard players set @s[scores={move=11..}] Camera 4
scoreboard players set @s[scores={move=11..}] Move 4

execute as @s[scores={move=27..}] at @s if block ~~-1~ air if block ~~-2~ air run tp @s ~~-2~
execute as @s[scores={move=27..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=27..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=27..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=27..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=25..}] at @s run tp @s @s
execute as @s[scores={move=24..26}] at @s unless entity @e[tag=infernokicktrg,r=30] positioned ^^^30 run tag @e[tag=!Frames,type=!ds:ember_insect,r=29.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add infernokicktrg

execute as @s[scores={move=24}] at @s run camerashake add @a[r=40] 2 0.15
execute as @s[scores={move=45}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=43}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=35}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.95 99999
execute as @s[scores={move=33}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.7 99999
execute as @s[scores={move=25}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=23}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=28..}] at @s run playsound random.fizz @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=34}] at @s run playsound mob.blitz1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=32}] at @s run camerashake add @a[r=20] 4 0.15 
execute as @s[scores={move=32}] at @s run particle ds:judgement_stars ~~1~

execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] run scoreboard players set @s move 23
execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] run tp @s ^^^3.33 facing @e[tag=infernokicktrg,c=1,r=60]
execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] run playsound mob.blaze.shoot @a[r=40] ~~~ 99999 0.5 99999
execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] run particle ds:somethingidk ~~1~
execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] run camerashake add @a[r=10] 0.1 0.1 

execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] if block ~~1~ bedrock run tag @e[r=60,tag=infernokicktrg,c=1] remove infernokicktrg

execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] if entity @e[tag=griefable,c=1] unless block ~~1~ air unless block ~~1~ bedrock unless block ~~~ bedrock run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air [] destroy
execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=60] if entity @e[tag=griefable,c=1] run kill @e[type=item,r=10]

execute as @s[scores={move=20..23}] at @s run execute as @e[tag=infernokicktrg,r=4.88,tag=Frames,tag=!infinity,tag=!unselect] at @s run particle ds:flashstep1 
execute as @s[scores={move=20..23}] at @s run execute as @e[tag=infernokicktrg,r=4.88,tag=Frames,tag=!infinity,tag=!unselect] at @s run particle ds:flashstep2
execute as @s[scores={move=20..23}] at @s run tag @e[tag=infernokicktrg,r=4.88,tag=Frames] remove infernokicktrg

execute as @s[scores={move=20..23}] at @s unless entity @e[tag=infernokicktrg,r=60] run scriptevent ds:knockback 12
execute as @s[scores={move=16..23}] at @s unless entity @e[tag=infernokicktrg,r=60] run scoreboard players set @s move 3

execute as @s[scores={move=20..23}] at @s if entity @e[tag=infernokicktrg,r=5] run scoreboard players set @s move 14
execute as @s[scores={move=11..14}] at @s run tp @e[tag=infernokicktrg,c=1,r=5] ^^^1.5 facing @s


playanimation @s[scores={move=20..23}] animation.flames.ab5b
playanimation @s[scores={move=13}] animation.flames.ab5b2

execute as @s[scores={move=10}] at @s run function damages/blunt_damage
execute as @s[scores={move=10}] at @s run function damages/fire_damage
execute as @s[scores={move=10..12}] at @s run tp @s ~~~

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
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact4
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_downslam3
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_downslam4
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_downslam6

execute as @s[scores={move=10..12}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[c=1,scores={move=10..12}]
execute as @s[scores={move=19}] at @s positioned ^^^1.5 run playsound mob.blaze.shoot @a[r=60] ~~~ 9999 0.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.blaze.shoot @a[r=60] ~~~ 9999 0.8 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.burn @a[r=60] ~~~ 0.1 0.8
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound random.explode @a[r=60] ~~~ 9999 0.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=60] ~~~ 9999 0.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run camerashake add @a[r=60] 4 0.5
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 20 override
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 6
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 20 true
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=10}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 33
execute as @s[scores={move=9..10}] at @s run summon ds:red_reverse ^^^0.5
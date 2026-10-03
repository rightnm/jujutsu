playanimation @s[scores={move=80}] animation.sun_bomb
tag @s[scores={move=1..2},tag=form6] remove form6

tag @s[scores={move=16..,Stun=1..},tag=form6] remove form6
playanimation @s[scores={move=16..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..16}] Frames 4

execute as @s[scores={move=70}] at @s if entity @e[tag=griefable] run function flames/heat2x2
execute as @s[scores={move=60}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~1~1~ run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~-1~1~ run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~~1~1 run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~~1~-1 run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~1~1~-1 run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~-1~1~1 run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~1~1~1 run function flames/heat3x3
execute as @s[scores={move=50}] at @s if entity @e[tag=griefable] positioned ~-1~1~-1 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~2~1~ run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~-2~1~ run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~~1~2 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~~1~-2 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~2~1~-2 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~-2~1~2 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~2~1~2 run function flames/heat3x3
execute as @s[scores={move=40}] at @s if entity @e[tag=griefable] positioned ~-2~1~-2 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~3~1~ run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~-3~1~ run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~~1~3 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~~1~-3 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~3~1~-3 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~-3~1~3 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~3~1~3 run function flames/heat3x3
execute as @s[scores={move=30}] at @s if entity @e[tag=griefable] positioned ~-3~1~-3 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~4~1~ run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~-4~1~ run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~~1~4 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~~1~-4 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~4~1~-4 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~-4~1~4 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~4~1~4 run function flames/heat3x3
execute as @s[scores={move=20}] at @s if entity @e[tag=griefable] positioned ~-4~1~-4 run function flames/heat3x3
execute as @s[scores={move=16}] at @s if entity @e[tag=griefable] positioned ~~1~ run function flames/heat
execute as @s[scores={move=16..74}] at @s run scoreboard players add @e[tag=!Frames,r=10,type=!ds:ember_insect,tag=!flames,tag=!fire_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 2
execute as @s[scores={move=16..74}] at @s run scoreboard players add @e[tag=!Frames,r=8,type=!ds:ember_insect,tag=!flames,tag=!fire_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 1
execute as @s[scores={move=16..74}] at @s run scoreboard players add @e[tag=!Frames,r=8,type=!ds:ember_insect,tag=!flames,tag=!fire_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 1
execute as @s[scores={move=16..74}] at @s run playanimation @e[tag=!Frames,r=8,type=!ds:ember_insect,tag=!flames,scores={onfire=3..},tag=!abilitying,tag=!fire_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] animation.stunned
execute as @s[scores={move=16..74}] at @s run execute as @e[tag=!Frames,r=8,type=!ds:ember_insect,tag=!flames,scores={onfire=3..},tag=!fire_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scoreboard players operation @s Stun = @s onfire
execute as @s[scores={move=16..74}] at @s if entity @e[c=1,scores={wheelactive=1..},r=15,rm=0.25,tag=!fire_adapting,tag=!fire_adapted] run function damages/fire_damage
execute as @s[scores={move=16..74}] at @s if entity @e[c=1,family=mahoraga,r=15,tag=!fire_adapting,tag=!fire_adapted] unless entity @e[c=1,scores={wheelactive=1..},r=15,rm=0.25,tag=!fire_adapting,tag=!fire_adapted] run function damages/fire_damage

execute as @s[scores={move=75}] at @s run playsound bubble.up @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=75}] at @s run playsound bubble.down @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=70}] at @s run playsound mob.burn @a[r=100] ~~~ 0.2 1.5
execute as @s[scores={move=70}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=70}] at @s run playsound portal.trigger @a[r=100] ~~~ 0.15 1.5

execute as @s[scores={move=15}] at @s run playsound mob.blasted1 @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=50] 4 0.2 rotational
execute as @s[scores={move=15}] at @s run particle ds:invert ^^^0.15
execute as @s[scores={move=16}] at @s run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=13}] at @s run effect @a[r=20] night_vision 0 20 true
execute as @s[scores={move=14}] at @s run particle ds:fireball_m_ex1 ^^1^1 
execute as @s[scores={move=14}] at @s run particle ds:fireball_m_ex2 ^^1^1 
execute as @s[scores={move=14}] at @s run particle ds:fireball_m_ex3 ^^1^1 
execute as @s[scores={move=14}] at @s run particle ds:fireball_m_ex4 ^^1^1 
execute as @s[scores={move=14}] at @s run particle ds:fireball_m_ex5 ^^1^1 
execute as @s[scores={move=14..18}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=14..15}] at @s run tp @s ~~~

execute as @s[scores={move=15}] at @s run summon ds:projectile "SunfireBomb" ^^1^1.5 
execute as @s[scores={move=15}] at @s run summon ds:projectile "SunfireBombTRG" ^^1^55
execute as @s[scores={move=15}] at @s positioned ^^1^55 run scoreboard players set @e[type=ds:projectile,name="SunfireBombTRG",c=1,r=55] Deleter 40
execute as @s[scores={move=15}] at @s positioned ^^1^1 run scoreboard players set @e[type=ds:projectile,name="SunfireBomb",c=1,r=3] Deleter 39
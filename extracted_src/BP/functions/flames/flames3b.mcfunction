playanimation @s[scores={move=45}] animation.heatwave

tag @s[scores={move=1..2},tag=form3b] remove form3b

tag @s[scores={move=26..,Stun=1..},tag=form3b] remove form3b
playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

effect @s[scores={move=21..}] slowness 1 3 true

scoreboard players set @s[scores={move=24..26}] Frames 5

execute as @s[scores={move=10..25}] at @s run tp @s ~~~

execute as @s[scores={move=25}] at @s positioned ^^^7 run function damages/explosion_damage
execute as @s[scores={move=25}] at @s positioned ^^^7 run function damages/fire_damage

execute as @s[scores={move=25}] at @s positioned ^^^7 run function flames/heat
execute as @s[scores={move=25}] at @s positioned ^4^4^4 run function flames/heat
execute as @s[scores={move=25}] at @s positioned ^-4^-4^7 run function flames/heat


execute as @s[scores={move=45}] at @s positioned ^^^13 run playsound mob.blaze.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=45}] at @s positioned ^^^13 run playsound mob.burn @a[r=90] ~~~ 99999 1 99999

execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 30
execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 29
execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 12
execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 35
execute as @s[scores={move=25}] at @s positioned ^^^13 run damage @e[r=12.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 30 entity_attack entity @s
execute as @s[scores={move=25}] at @s run effect @e[r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={move=25}] at @s if entity @e[tag=griefable,c=1] run summon ds:red_reverse ^8^17^9
execute as @s[scores={move=25}] at @s  if entity @e[tag=griefable,c=1] run summon ds:red_reverse ^4^13^13
execute as @s[scores={move=25}] at @s if entity @e[tag=griefable,c=1]  run summon ds:red_reverse ^^9^9
execute as @s[scores={move=25}] at @s  if entity @e[tag=griefable,c=1] run summon ds:red_reverse ^4^4^4
execute as @s[scores={move=25}] at @s  if entity @e[tag=griefable,c=1] run summon ds:red_reverse ^8^^
execute as @s[scores={move=25}] at @s  if entity @e[tag=griefable,c=1] run summon ds:red_reversal ^8^17^9
execute as @s[scores={move=25}] at @s  if entity @e[tag=griefable,c=1] run summon ds:red_reversal ^4^13^13
execute as @s[scores={move=25}] at @s if entity @e[tag=griefable,c=1]  run summon ds:red_reversal ^^9^9
execute as @s[scores={move=25}] at @s if entity @e[tag=griefable,c=1]  run summon ds:red_reversal ^4^4^4
execute as @s[scores={move=25}] at @s if entity @e[tag=griefable,c=1]  run summon ds:red_reversal ^8^^
execute as @s[scores={move=25}] at @s run particle ds:invert ^^1^


execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.shock1 @a[r=90] ~~~ 99999 2.85 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.burn @a[r=90] ~~~ 99999 0.5 99999

execute as @s[scores={move=25}] at @s positioned ^^^13 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:ground_slam3 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:impact1 ^^1^2


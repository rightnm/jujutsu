playanimation @s[scores={move=50}] animation.molten_crusher

tag @s[scores={move=1..2},tag=form5d] remove form5d

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Frames 4
scoreboard players set @s[scores={move=1..}] Camera 4

execute as @s[scores={move=1..}] at @s run tp @s ~~~

execute as @s[scores={move=50}] at @s positioned ^^^30 run summon ds:molten_hands ^^^ facing @s 
execute as @s[scores={move=49..50}] at @s positioned ^^^30 run scoreboard players set @e[type=ds:molten_hands,c=1,r=25] Deleter 49
execute as @s[scores={move=48..50}] at @s positioned ^^^30 run playanimation @e[type=ds:molten_hands,c=1,r=25] animation.molten_crush


execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~0.5~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~0.33~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~0.1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s unless block ~~~ air run tp @s ~~0.1~

 
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ lava run tp @s ~~-1~

execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-0.33~ air run tp @s ~~-0.33~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute positioned ^^^30 as @e[type=ds:molten_hands,c=1] at @s if block ~~-0.1~ air run tp @s ~~-0.1~


execute as @s[scores={move=48}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.3 99999
execute as @s[scores={move=5..48}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound bubble.up @a[r=200] ~~~ 99999 0.6 99999
execute as @s[scores={move=5..48}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound bubble.down @a[r=200] ~~~ 99999 0.6 99999
execute as @s[scores={move=48}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 99999 0.3 99999

execute as @s[scores={move=5..50}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run particle ds:molten_crush
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run particle ds:molten_crush2 ~~15~
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run particle ds:molten_crush3 ~~15~
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run particle ds:molten_crush4 ~~15~
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run particle ds:large_shockwave ~~15~

execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run scoreboard players set @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 3
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run effect @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 20 true
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run scoreboard players set @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 90
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run damage @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 100 override
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run scoreboard players add @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 20
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run scoreboard players add @e[tag=!Frames,r=33,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 90
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run summon ds:mahoraga_knockback2 

execute as @s[scores={move=5..48}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run camerashake add @a[r=75] 0.1 0.1
execute as @s[scores={move=30}] at @s unless score griefing Mode = three Mode if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s unless entity @e[family=damage,tag=DomainExpansion,r=70,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] unless entity @s[tag=lavaoff] run fill ~6~-1~6 ~-6~~-6 lava [] replace air
execute as @s[scores={move=27}] at @s unless score griefing Mode = three Mode if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s unless entity @e[family=damage,tag=DomainExpansion,r=70,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] unless entity @s[tag=lavaoff] run fill ~12~-2~12 ~-12~~-12 lava [] replace air
execute as @s[scores={move=23}] at @s unless score griefing Mode = three Mode if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s unless entity @e[family=damage,tag=DomainExpansion,r=70,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] unless entity @s[tag=lavaoff] run fill ~17~-3~17 ~-17~~-17 lava [] replace air
execute as @s[scores={move=22}] at @s unless score griefing Mode = three Mode if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s unless entity @e[family=damage,tag=DomainExpansion,r=70,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] unless entity @s[tag=lavaoff] run fill ~20~~20 ~-20~-4~-20 lava [] replace air

execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.shock1 @a[r=200] ~~~ 9999 1.5 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.shock1 @a[r=200] ~~~ 9999 1.35 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound random.explode @a[r=200] ~~~ 9999 0.35 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound random.explode @a[r=200] ~~~ 9999 0.2 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 9999 0.35 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run camera @a[r=50] fade time 0 0 0.5 color 255 255 255
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run camerashake add @a[r=100] 4 0.25 rotational
execute as @s[scores={move=20}] at @s positioned ^^^30 run execute as @e[type=ds:molten_hands,c=1] at @s run function damages/fire_damage
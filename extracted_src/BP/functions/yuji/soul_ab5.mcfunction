playanimation @s[scores={move=30..31}] animation.soul_shrine.ab5

playanimation @s[scores={move=12..31,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=12..31,Stun=1..}] move 2

execute as @s[scores={move=20..19}] at @s if block ~~-0.2~ air run playanimation @s animation.cancel
execute as @s[scores={move=20..19}] at @s if block ~~-0.2~ air run scoreboard players set @s move 2

tag @s[scores={move=1..2},tag=form5] remove form5

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..}] Camera 6
scoreboard players set @s[scores={move=5..20}] Frames 8


execute as @s[scores={move=29..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=29..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=29..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=29..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=29..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=29..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=12..27}] at @s run tp @s @s
execute as @s[scores={move=26..27}] at @s run scriptevent ds:knockback 0.75

execute as @s[scores={move=12}] at @s positioned ^^^2 run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=12}] at @s positioned ^^^2 run particle ds:craterv2
execute as @s[scores={move=12}] at @s positioned ^^^2 run particle ds:ground_slam1
execute as @s[scores={move=12}] at @s positioned ^^^2 run particle ds:ground_slam2
execute as @s[scores={move=12}] at @s positioned ^^^2 run playsound mob.slash1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=12}] at @s positioned ^^^2 run playsound random.explode @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=12}] at @s positioned ^^^2 run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=12}] at @s positioned ^^^3.97 run tag @e[tag=!Frames,r=3.9,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add fractureflash
execute as @s[scores={move=9..11}] at @s positioned ^^^3.97 if entity @e[tag=fractureflash,tag=!Frames,r=3.9,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..}] animation.soul_shrine.ab5b
execute as @s[scores={move=1000..}] at @s run playanimation @e[tag=fractureflash,r=8,c=1] animation.soul_shrine.ab5_hit

scoreboard players set @e[tag=fractureflash,r=8,c=1] Stun 25
scoreboard players set @e[tag=fractureflash,r=8,c=1] Camera 20

execute as @s[scores={move=871..1000}] at @s run scoreboard players set @a[r=5,tag=!fractureflash] Camera 20
execute as @s[scores={move=852..870}] at @s run scoreboard players set @a[r=5,tag=!fractureflash] Camera 6

execute as @s[scores={move=1000..},type=player] at @s run tp @s @s
execute as @s[scores={move=990..},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=850..989},type=!player] at @s as @e[type=ds:rock_wall,r=60,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={move=850..989},type=!player] at @s at @e[type=ds:rock_wall,r=60,c=1] run tp @s ^^^2.15 facing ~~~
execute as @s[scores={move=880..}] at @s run tp @e[tag=fractureflash,r=15,c=1] ^^^1.4 facing @s

execute as @s[scores={move=1000}] at @s run camera @a[r=5] set minecraft:free pos ^3^2^0.5 facing ~~1.3~

execute as @s[scores={move=970}] at @s run camera @a[r=5] set minecraft:free pos ^-0.4^0.5^0.5 facing ^^1.3^-2
execute as @s[scores={move=969..970}] at @s run camera @a[r=5] set minecraft:free ease 1 in_out_circ pos ^-1^1.3^-3.75 facing ^^1.3^-1.5
execute as @s[scores={move=947..948}] at @s run camera @a[r=5] set minecraft:free ease 0.75 in_out_circ pos ^1.5^2.5^-3.25 facing ^^1.3^2
execute as @s[scores={move=935..936}] at @s run camera @a[r=5] set minecraft:free ease 0.33 in_sine pos ^1.5^1.25^1.25 facing ^^1.3^1


execute as @s[scores={move=995}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~-4~ 99999 0.8 99999

execute as @s[scores={move=990}] at @s if entity @p[tag=griefable] positioned ^^^4 unless block ~~-1~ bedrock unless block ~~-1~ barrier run fill ~2~-1~2~-2~-1~-2 air

execute as @s[scores={move=970}] at @s run execute as @a[r=10] at @s run playsound music.bass3 @s ~~~ 99999 0.45 99999

execute as @s[scores={move=990}] at @s run camerashake add @a[r=25] 3 0.25
execute as @s[scores={move=990}] at @s run playsound random.explode @a[r=25] ~~-4~ 99999 1.25 99999
execute as @s[scores={move=990}] at @s run playsound mob.wither.break_block @a[r=25] ~~-4~ 99999 0.5 99999
execute as @s[scores={move=990}] at @s run playsound mob.wither.break_block @a[r=25] ~~-4~ 99999 0.8 99999
execute as @s[scores={move=990}] at @s run particle ds:ground_slam1 ^^^2
execute as @s[scores={move=990}] at @s run particle ds:ground_slam2 ^^^2
execute as @s[scores={move=990}] at @s run particle ds:ground_slam3 ^^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^1.5^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^1.25^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^1^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^0.75^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^0.5^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^0.25^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-1.5^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-1.25^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-1^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-0.75^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-0.5^^2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1 ^-0.25^^2
execute as @s[scores={move=990}] at @s run summon ds:rock_wall ^^^2.15 facing @s
execute as @s[scores={move=985}] at @s run camerashake add @a[r=25] 3 0.25

execute as @s[scores={move=970}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 99999 1.75 99999

execute as @s[scores={move=940..970}] at @s run particle ds:turbo_intensity3 ^^^-1.6
execute as @s[scores={move=940..970}] at @s run particle ds:turbo_intensity4 ^^^-1.6

execute as @s[scores={move=898}] at @s run playsound mob.turbulence @a[r=100] ^^1^1 99999 0.75 99999


execute as @s[scores={move=935}] at @s run playsound mob.punch1 @a[r=100] ^^1^1 99999 0.8 99999
execute as @s[scores={move=935}] at @s run playsound mob.wither.break_block @a[r=100] ^^1^1 99999 1.5 99999
execute as @s[scores={move=935}] at @s run playsound mob.wither.shoot @a[r=100] ^^1^1 99999 0.35 99999
execute as @s[scores={move=935}] at @s run playsound mob.electricity @a[r=100] ^^1^1 99999 2.25 99999
execute as @s[scores={move=931}] at @s run playsound mob.electricity @a[r=100] ^^1^1 99999 2.35 99999
execute as @s[scores={move=922}] at @s run playsound mob.electricity @a[r=100] ^^1^1 99999 2.15 99999
execute as @s[scores={move=917}] at @s run playsound mob.electricity @a[r=100] ^^1^1 99999 2.45 99999
execute as @s[scores={move=908}] at @s run playsound mob.electricity @a[r=100] ^^1^1 99999 2.5 99999
execute as @s[scores={move=900..935}] at @s run particle ds:turbo_intensity3 ^^^1
execute as @s[scores={move=900..935}] at @s run particle ds:turbo_intensity4 ^^1^1
execute as @s[scores={move=900..915}] at @s run particle ds:black_flash_small ^^1^1
execute as @s[scores={move=900..935}] at @s run camerashake add @a[r=10] 0.12 0.08
execute as @s[scores={move=900..935}] at @s run camera @a[r=5] set minecraft:free pos ^1.5^1.25^1.25 facing ^^1.3^1

execute as @s[scores={move=898}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=897}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=896}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=895}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=894}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=893}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=892}] at @s run title @a[r=5,tag=!impactframesoff] title 
execute as @s[scores={move=890..891}] at @s run title @a[r=5,tag=!impactframesoff] title §l


execute as @s[scores={move=870..901}] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=891}] at @s run summon gg:impact_frame
execute as @s[scores={move=889}] at @s run particle ds:invert ^^2^-2 
execute as @s[scores={move=892..893}] at @s run playsound mob.blackflash2 @a[r=100] ~~1~ 99999 0.85 99999
execute as @s[scores={move=896..897}] at @s run particle ds:black_flash3 ^^1^1 

execute as @s[scores={move=870..898}] at @s run particle ds:black_flash3b ^^1^1 
execute as @s[scores={move=870..898}] at @s run particle ds:black_flash3c ^^1^1 

execute as @s[scores={move=890..893}] at @s run particle ds:heian_impact1 ^^1^1 

execute as @s[scores={move=885}] at @s run summon gg:impact_frame
execute as @s[scores={move=884}] at @s run particle ds:invert ^^2^-2 
execute as @s[scores={move=882}] at @s run particle ds:red_tint ^^2^-2
execute as @s[scores={move=880}] at @s run summon gg:impact_frame
execute as @s[scores={move=885}] at @s run playsound mob.kokusen3 @a[r=100] ~~1~ 99999 0.98 99999
execute as @s[scores={move=880..882}] at @s run playsound mob.blackflash @a[r=100] ~~1~ 99999 0.85 99999
execute as @s[scores={move=880..882}] at @s run playsound mob.blackflash2 @a[r=100] ~~1~ 99999 0.5 99999

execute as @s[scores={move=875..876}] at @s run particle ds:black_flash1 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash4 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash5 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash6 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash7 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash8 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash9 ^^1^1 
execute as @s[scores={move=875..876}] at @s run particle ds:black_flash10 ^^1^1 



scoreboard players set @s[scores={move=875}] thezone 221

execute as @s[scores={move=875..876},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
tag @s[scores={move=875,blackflashlearn=0},tag=!noparticles] add noparticles
execute if entity @s[scores={move=875,blackflashlearn=0}] run function blackflash_first

execute as @s[scores={move=875,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=fractureflash,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=875,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=fractureflash,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=875,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=fractureflash,r=8,scores={grade=5..},tag=!unselect] unless entity @e[tag=fractureflash,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=875,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=fractureflash,r=8,scores={grade=5..},tag=!unselect] unless entity @e[tag=fractureflash,r=8,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=875,blackflash_amount=0..},type=!player] at @s if entity @e[tag=fractureflash,r=8,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1





execute as @s[scores={move=878}] at @s run particle ds:first_blackflash1 ^2^2^-2
execute as @s[scores={move=872}] at @s run particle ds:first_blackflash2 ^-2^2^-2

execute as @s[scores={move=875}] at @s run damage @e[tag=fractureflash,r=8,c=1] 200 suicide entity @s
execute as @s[scores={move=875}] at @s run scoreboard players set @e[tag=fractureflash,r=8,c=1] knockdown 90
execute as @s[scores={move=875}] at @s run scoreboard players set @e[tag=fractureflash,r=8,c=1] Hit 10
execute as @s[scores={move=875},tag=yuji_awakened] at @s run scoreboard players add @e[tag=fractureflash,r=8,c=1] antiheal 100
execute as @s[scores={move=875}] at @s run function damages/blunt_damage
execute as @s[scores={move=875},tag=yuji_awakened] at @s run function damages/soul_damage
execute as @s[scores={move=872..875}] at @s run summon ds:red_reverse ^^1^
execute as @s[scores={move=873..874}] at @s run effect @e[r=30,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={move=873}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ^^1^7
execute as @s[scores={move=873}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ^^1^11
execute as @s[scores={move=873}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ^^1^15
execute as @s[scores={move=882}] at @s run playsound mob.rubble @a[r=100] ~~~ 999999 1 999999
execute as @s[scores={move=882}] at @s run playsound mob.shock1 @a[r=100] ~~~ 999999 0.5 999999
execute as @s[scores={move=872}] at @s run particle ds:rubble3 ^^1^1 
execute as @s[scores={move=872}] at @s run particle ds:ground_pound2 ^^1^1 
execute as @s[scores={move=872}] at @s run particle ds:ground_pound3 ^^1^1 
execute as @s[scores={move=872}] at @s run particle ds:ground_pound4 ^^^1 
execute as @s[scores={move=872}] at @s run particle ds:ground_slam2 ^^1^1 


execute as @s[scores={move=800..850}] at @s run event entity @e[type=ds:rock_wall,r=60,c=1] ds:disappear
execute as @s[scores={move=800..848}] at @s run tag @e[tag=fractureflash,r=100,c=1] remove fractureflash
effect @s[scores={move=800..848},type=player] slowness 1 1 true
scoreboard players set @s[scores={move=800..848},type=!player] Disabled 30
scoreboard players set @s[scores={move=800..848},type=!player] hitCD 30
scoreboard players set @s[scores={move=800..848}] Move 30
scoreboard players set @s[scores={move=800..848}] move 3

execute as @s[scores={move=852..899}] at @s run camera @a[r=5] set minecraft:free pos ^^3^-5.5 facing ^^1.3^1
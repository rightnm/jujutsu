playanimation @s[scores={move=25..26}] animation.soul_shrine.ab1

playanimation @s[scores={move=15..26,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=15..26,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=form1] remove form1


effect @s[scores={move=24..}] slowness 1 2 true

execute as @s[scores={move=14..16}] at @s run scriptevent ds:knockback 0.5
scoreboard players set @s[scores={move=16}] atk 2

execute as @s[scores={move=15}] at @s run playsound mob.witch.throw @a ^^1^1 1 2

execute as @s[scores={move=15..17}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run tp @s ~~~ facing @e[scores={move=15..17},r=5,c=1]
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run playsound mob.punch1 @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run playsound mob.slash1 @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] at @s run playsound mob.cleave @a[r=50] ~~~ 9999 1.5 9999

execute as @s[scores={move=15}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] add soulcleaved1
execute as @s[scores={move=15}] positioned ^^^2.5 if entity @e[tag=soulcleaved1,r=2.45,c=1] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] positioned ^^^2.5 if entity @e[tag=soulcleaved1,r=2.45,c=1] at @s run function damages/slash_damage
execute as @s[scores={move=15}] positioned ^^^2.5 if entity @e[tag=soulcleaved1,r=2.45,c=1] at @s run function damages/soul_damage

execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 4
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 30
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 1
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 6 suicide entity @s
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playanimation @e[tag=!Frames,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!flyhead] animation.stunned

execute as @s[scores={move=8..13}] at @s if entity @e[tag=soulcleaved1,r=5,c=1] run scoreboard players set @s move 101

playanimation @s[scores={move=100..101}] animation.soul_shrine.ab1b
scoreboard players set @s[scores={move=100..}] Camera 18
scoreboard players set @s[scores={move=100..}] Move 18

execute as @s[scores={move=97..}] at @s run tp @s @s
execute as @s[scores={move=97..}] at @s run tp @e[tag=soulcleaved1,r=5,c=1] ^^0.05^1 facing @s


execute as @s[scores={move=97..}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=97..}] at @s run particle ds:turbo_intensity4 ~~~

execute as @s[scores={move=99}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.sheep.shear @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=97}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.sheep.shear @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=95}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.sheep.shear @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave1 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave2 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave3 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave4 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave5 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:soul_cleave6 ~~1~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run particle ds:blood_splat1 ~~1~

execute as @s[scores={move=96}] at @s run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=96}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.slash1 @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.cleave @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=96}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run playsound mob.blood @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=96}] at @s run scoreboard players add @e[tag=soulcleaved1,r=5,c=1] Evade 4
execute as @s[scores={move=96}] at @s run scoreboard players set @e[tag=soulcleaved1,r=5,c=1] Stun 30
execute as @s[scores={move=96}] at @s run scoreboard players add @e[tag=soulcleaved1,r=5,c=1] Hit 3
execute as @s[scores={move=96}] at @s run scoreboard players add @e[tag=soulcleaved1,r=5,c=1] antiheal 40

execute as @s[scores={move=95..97}] at @s run tag @e[scores={detect_health=0..21},tag=soulcleaved1,r=5,c=1] add cleaved_finisher
execute as @s[scores={move=95..97}] at @s run scoreboard players set @e[scores={detect_health=0..21},tag=soulcleaved1,tag=cleaved_finisher,r=5,c=1] dying 31

execute as @s[scores={move=96}] at @s if entity @e[tag=soulcleaved1,r=5,c=1] run function damages/slash_damage
execute as @s[scores={move=96}] at @s if entity @e[tag=soulcleaved1,r=5,c=1] run function damages/soul_damage
execute as @s[scores={move=96}] at @s unless entity @e[scores={detect_health=0..21},tag=soulcleaved1,r=5,c=1] run damage @e[tag=soulcleaved1,r=5,c=1] 20 suicide
execute as @s[scores={move=96}] at @s unless entity @e[scores={detect_health=0..21},tag=soulcleaved1,r=5,c=1] run scoreboard players operation @e[tag=soulcleaved1,r=5,c=1] damagehalf += @s damageadd


execute as @s[scores={move=83..}] at @s run execute as @e[tag=soulcleaved1,r=5,c=1] at @s run tp @s @s
execute as @s[scores={move=95}] at @s rotated ~ 0 run tp @s ^^^2.5


playanimation @s[scores={move=70..73}] animation.cancel
execute as @s[scores={move=70..73}] at @s run tag @e[tag=soulcleaved1,r=100,c=1] remove soulcleaved1
scoreboard players set @s[scores={move=70..73}] move 2

execute as @s[scores={move=83..96}] at @s run scriptevent ds:knockback 0.3
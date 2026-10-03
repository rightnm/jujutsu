playanimation @s[scores={move=45..46}] animation.calamity.ab1

tag @s[scores={move=1..2},tag=wep1] remove wep1

tag @s[scores={move=45..,Stun=1..},tag=wep1] remove wep1
playanimation @s[scores={move=45..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=45..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..45}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @a[tag=leftright,c=1,r=4] Camera 4
scoreboard players set @e[tag=leftright,c=1,r=4] Move 4
scoreboard players set @e[tag=leftright,c=1,r=4] Stun 5
playanimation @e[tag=leftright,c=1,r=4] animation.stunned


execute as @s[scores={move=45}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 1.4
execute as @s[scores={move=45}] at @s run particle ds:ground_dust2
execute as @s[scores={move=45}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add leftright
execute as @s[scores={move=45}] at @s positioned ^^^2 run scoreboard players set @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] Stun 15
execute as @s[scores={move=42..44}] at @s unless entity @e[tag=leftright,c=1,r=4] positioned ^^^2 run tag @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add leftright
execute as @s[scores={move=42..44}] at @s unless entity @e[tag=leftright,c=1,r=4] positioned ^^^2 run scoreboard players set @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] Stun 15

execute as @s[scores={move=40..42}] at @s positioned ^^^2 unless entity @e[tag=leftright,r=1.95,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=40..42}] at @s positioned ^^^2 unless entity @e[tag=leftright,r=1.95,c=1] run scoreboard players set @s Stun 10
execute as @s[scores={move=40..42}] at @s positioned ^^^2 unless entity @e[tag=leftright,r=1.95,c=1] run scoreboard players set @s move 2


execute as @s[scores={move=40..42}] at @s run tp @s @s
execute as @s[scores={move=14..19}] at @s run tp @s @s
execute as @s[scores={move=1..40},type=player] at @s run tp @e[tag=leftright,c=1,r=4] ^^^2.2 facing ~~1~
execute as @s[scores={move=1..40},type=!player] at @s rotated ~ 0 run tp @e[tag=leftright,c=1,r=4] ^^^2.2 facing ~~1~

scoreboard players set @s[scores={move=41}] atk 2
execute as @s[scores={move=37..40}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 3 0.15
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=40}] at @s positioned ^^1^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 2.35 9999
execute as @s[scores={move=40}] at @s positioned ^^^2.5 run damage @e[tag=leftright,c=1,r=2.45] 5 override
execute as @s[scores={move=40}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Hit 3
execute as @s[scores={move=40}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Evade 3
execute as @s[scores={move=40}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={move=36}] atk 2
execute as @s[scores={move=32..35}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 2 0.1
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run particle ds:large_impact1 ~~~
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 2.35 9999
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run damage @e[tag=leftright,c=1,r=2.45] 5 override
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Hit 3
execute as @s[scores={move=35}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Evade 3
execute as @s[scores={move=35}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={move=26}] atk 2
execute as @s[scores={move=18..25}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 2.35 9999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run damage @e[tag=leftright,c=1,r=2.45] 5 override
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Evade 3
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Hit 3
execute as @s[scores={move=25}] at @s run function damages/blunt_damage


scoreboard players random @s[scores={move=21},tag=!heavenlyrestriction] blackflashchance 1 200
scoreboard players set @s[scores={move=21},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=16}] atk 2
scoreboard players set @s[scores={move=14..19}] Camera 6
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 4 0.15
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:large_impact1 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run particle ds:large_impact2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run playsound mob.blood1 @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run playsound mob.punch1 @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=15}] at @s positioned ^^1^1.5 run playsound mob.bullet @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run damage @e[tag=leftright,c=1,r=2.45] 15 override
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=leftright,c=1,r=2.45] damage += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Hit 3
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Evade 3
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=leftright,c=1,r=2.45] Flourish 6
execute as @s[scores={move=15}] at @s run function damages/blunt_damage


execute as @s[scores={move=1..2}] at @s run tag @e[c=1,tag=leftright,r=15] remove leftright
playanimation @s[scores={move=15}] animation.yuji.manji_kick

tag @s[scores={move=1..2},tag=wep1] remove wep1

scoreboard players set @s[scores={move=1..11}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..7}] Camera 4
scoreboard players set @e[tag=manji,r=7,c=1] Camera 4
scoreboard players set @e[tag=manji,r=7,c=1] Move 4
scoreboard players set @e[tag=manji,r=7,c=1] Stun 5

execute as @s[scores={move=14}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 0.4
execute as @s[scores={move=10}] at @s run particle ds:dirt2

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={punch=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] atk 2
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run tag @e[tag=!Frames,scores={atk=1..},r=4.99,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add manji
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,scores={atk=1..},r=4.99,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] Stun 15
execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..,move=3..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] move 2
execute as @s[scores={move=8..10}] at @s positioned ^^^2 if entity @e[tag=!Frames,scores={atk=1..},r=4.99,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 6

execute as @s[scores={move=6..7}] at @s positioned ^^^2 unless entity @e[tag=manji,r=4.99,c=1] run scoreboard players set @s Stun 10
execute as @s[scores={move=6..7}] at @s positioned ^^^2 unless entity @e[tag=manji,r=4.99,c=1] run scoreboard players set @s move 2

playanimation @s[scores={move=5}] animation.yuji.manji_kick2

scoreboard players random @s[scores={move=5},tag=!heavenlyrestriction] blackflashchance 1 99
scoreboard players set @s[scores={move=5},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=4..5}] atk 2

execute as @s[scores={move=2..6}] at @s run execute as @e[tag=manji,r=7,c=1] at @s run tp @s @s
execute as @s[scores={move=2..6}] at @s run execute as @e[tag=manji,r=7,c=1] at @s run tp @e[scores={move=2..6},r=7,c=1] ^^0.15^1 facing @s

execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:punch1 ~~~
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:punch2 ~~~
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:punch3 ~~~
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:punch4 ~~~
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=4}] at @s positioned ^^^0.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=4}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=4}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=4}] at @s positioned ^^^2.5 run damage @e[tag=manji,r=2.45,c=1] 5 override entity @s
execute as @s[scores={move=4}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=manji,r=2.45,c=1] damage += @s damageadd
execute as @s[scores={move=4}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=manji,r=2.45,c=1] Evade 25
execute as @s[scores={move=4}] at @s run  function damages/blunt_damage
execute as @s[scores={move=4}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=manji,r=2.45,c=1] knockdown 15
execute as @s[scores={move=1..2}] at @s run tag @e[tag=manji,r=7,c=1] remove manji
playanimation @s[scores={move=41..42}] animation.black_fists.ab2

playanimation @s[scores={move=30..42,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=30..42,Stun=1..}] move 2

scoreboard players set @s[scores={move=1..20}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..30}] Camera 5

scoreboard players set @a[tag=twinkick,r=25,c=1] Camera 4
scoreboard players set @e[tag=twinkick,r=25,c=1] Move 4
execute as @e[tag=twinkick,r=25,c=1] unless entity @s[scores={Stun=5..}] run scoreboard players set @s Stun 5
execute as @e[tag=twinkick,r=25,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim


execute as @s[scores={move=980..996}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run scoreboard players set @a[r=20,tag=!twinkick] Camera 4


execute as @s[scores={move=41}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 0.4

execute as @s[scores={move=31}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 1
execute as @s[scores={move=31}] at @s run particle ds:ground_dust2
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:punch3 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:punch4 ~~1~
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.punch1 @a[r=40] ~~1~ 999999 1.5 999999
execute as @s[scores={move=30}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound random.explode @a[r=40] ~~1~ 999999 2.3 999999
execute as @s[scores={move=30}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 40
execute as @s[scores={move=30}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add noStunnedAnim
execute as @s[scores={move=30}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add twinkick

#false
execute as @s[scores={move=30}] at @s positioned ^^^2 unless entity @e[tag=twinkick,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.knock
execute as @s[scores={move=30}] at @s positioned ^^^2 unless entity @e[tag=twinkick,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s Stun 15
execute as @s[scores={move=30}] at @s positioned ^^^2 unless entity @e[tag=twinkick,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 2

scoreboard players random @s[scores={move=19}] blackflashchance 1 100
scoreboard players set @s[scores={move=19},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:punch3 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run particle ds:punch4 ~~1~
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run camerashake add @a[r=20] 2.25 0.25 rotational
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run playsound mob.punch1 @a[r=40] ~~1~ 999999 0.8 999999
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run playsound mob.shock1 @a[r=40] ~~1~ 999999 1.7 999999
execute as @s[scores={move=15}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run playsound mob.blood1 @a[r=40] ~~1~ 999999 0.8 999999
execute as @s[scores={move=15}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=15}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2
execute as @s[scores={move=9}] at @s run particle ds:ground_slam1
execute as @s[scores={move=9}] at @s run particle ds:ground_slam3
execute as @s[scores={move=9}] at @s run particle ds:dirt03
execute as @s[scores={move=9}] at @s run particle ds:bounce

execute as @s[scores={move=4..28}] at @s run tp @s @s
execute as @s[scores={move=16..28}] at @s run tp @e[tag=twinkick,r=25,c=1] ^^^1 facing @s
execute as @s[scores={move=30}] at @s run playanimation @e[tag=twinkick,r=25,c=1] animation.black_fists.ab2_hit


execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=twinkick,r=25,c=1] knockdown 40

execute as @s[scores={move=6}] at @s unless entity @e[tag=twinkick,r=25,c=1,scores={detect_health=0..30}] run damage @e[tag=twinkick,r=25,c=1] 20 override entity @s
execute as @s[scores={move=6}] at @s unless entity @e[tag=twinkick,r=25,c=1,scores={detect_health=0..30}] run scoreboard players operation @e[tag=twinkick,r=25,c=1] damage += @s damageadd

execute as @s[scores={move=6..7}] at @s if entity @e[scores={detect_health=0..30},tag=twinkick,r=25,c=1] run scoreboard players set @s move 1001

execute as @s[scores={move=6}] at @s run function damages/blunt_damage


playanimation @s[scores={move=1000..}] animation.black_fists.ab2_finisher
execute as @s[scores={move=995..}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=995..}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 2
execute as @s[scores={move=995..}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 2

execute as @s[scores={move=997..}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run tp @s ^^1^-1
execute as @s[scores={move=990..}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run tp @s @s
execute as @s[scores={move=995..997}] at @s at @e[tag=twinkick,r=25,c=1] run tp @s ~~~ facing @e[tag=twinkick,r=0.15,c=1]

execute as @s[scores={move=980..990}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=980..990}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=980..990}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=980..990}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=980..996}] at @s run execute as @e[tag=twinkick,r=25,c=1] at @s run camera @a[r=20] set minecraft:free pos ^5^1^ facing ~~~

execute as @s[scores={move=980..985}] at @s run scriptevent ds:knockback 1


scoreboard players set @s[scores={move=990}] thezone 221

execute as @s[scores={move=990..991},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
execute if entity @s[scores={move=990,blackflashlearn=0}] run function blackflash_first

execute as @s[scores={move=990,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=twinkick,r=25,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=990,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @e[tag=twinkick,r=25,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=990,blackflash_amount=0..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=twinkick,r=25,scores={grade=5..},tag=!unselect] unless entity @e[tag=twinkick,r=25,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1
execute as @s[scores={move=990,blackflash_amount=10..,forms=0..3},type=player,tag=yuji_awakened] at @s if entity @a[tag=twinkick,r=25,scores={grade=5..},tag=!unselect] unless entity @e[tag=twinkick,r=25,family=special_grade,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run tellraw @s {"rawtext":[{"text":"§eYour Experience has grown, you can now advance your §4Cursed Technique§e!"}]}
execute as @s[scores={move=990,blackflash_amount=0..},type=!player] at @s if entity @e[tag=twinkick,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players add @s blackflash_amount 1




execute as @s[scores={move=996}] at @s run playsound mob.kokusen2 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=990}] at @s run particle ds:invert
execute as @s[scores={move=990}] at @s run summon gg:impact_frame
execute as @s[scores={move=988}] at @s run function clear_impframe
execute as @s[scores={move=990}] at @s run particle ds:black_flash1
execute as @s[scores={move=990}] at @s run particle ds:black_flash2
execute as @s[scores={move=990}] at @s run particle ds:black_flash3
execute as @s[scores={move=990}] at @s run particle ds:black_flash4
execute as @s[scores={move=990}] at @s run particle ds:black_flash5
execute as @s[scores={move=990}] at @s run particle ds:black_flash6
execute as @s[scores={move=990}] at @s run particle ds:black_flash7
execute as @s[scores={move=990}] at @s run particle ds:black_flash8
execute as @s[scores={move=990}] at @s run particle ds:black_flash9
execute as @s[scores={move=990}] at @s run particle ds:heian_impact1
execute as @s[scores={move=990}] at @s run particle ds:dirt0
execute as @s[scores={move=990}] at @s run particle ds:dirt2
execute as @s[scores={move=990}] at @s run particle ds:large_impact1
execute as @s[scores={move=990}] at @s run particle ds:large_impact2
execute as @s[scores={move=990}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=990}] at @s run playsound mob.blackflash @a ~~~ 100000 1.35 100000
execute as @s[scores={move=990}] at @s run playsound mob.blackflash2 @a ~~1~ 100000 0.85 100000
execute as @s[scores={move=990}] at @s run playsound mob.wither.break_block @a ~~~ 100000 1 100000
execute as @s[scores={move=990}] at @s run scoreboard players set @e[tag=twinkick,r=25,c=1] knock 40
execute as @s[scores={move=990}] at @s run scoreboard players set @e[tag=twinkick,r=25,c=1] dying 30
execute as @s[scores={move=990},tag=yuji_awakened] at @s run scoreboard players add @e[tag=twinkick,r=25,c=1] antiheal 100


execute as @s[scores={move=985}] at @s run scoreboard players set @s move 2

tag @s[scores={move=1..2},tag=wep2v2] remove wep2v2
 execute as @s[scores={move=1..2}] at @s run tag @e[r=25,tag=twinkick,c=1] remove twinkick
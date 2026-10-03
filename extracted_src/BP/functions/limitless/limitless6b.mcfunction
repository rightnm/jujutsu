execute as @s[scores={move=100}] at @s run  tp @s @s
playanimation @s[scores={move=100..}] animation.infinite_void_2sec
execute as @s[scores={move=84}] at @s run playsound mob.infinitevoidsmall @a ~~~ 100000 1 100000
execute as @s[scores={move=100}] at @s run camerashake add @a[r=48] 2 0.25
execute as @s[scores={move=100}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={move=100}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={move=100}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={move=100}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={move=1..80}] at @s run particle ds:domainarea ~~~



execute as @s[scores={move=100}] at @s anchored eyes run camera @s fade time 0.2 0.2 0.75 color 0 0 0

execute as @s[scores={move=100}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-1.25 ^8 rot ~-25 ~180
execute as @s[scores={move=80}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_sine pos ^ ^0.15 ^0.85 rot ~3 ~180

execute as @s[scores={move=40}] at @s anchored eyes run camera @s set minecraft:free ease 0.1 in_sine pos ^ ^2 ^8 rot ~22 ~180
execute as @s[scores={move=37}] at @s anchored eyes run camera @s set minecraft:free ease 1.85 in_sine pos ^ ^2.5 ^10 rot ~24 ~180

tag @e[type=!item,scores={move=1..35},tag=form6b,tag=limitless,tag=domainlayout] remove domainlayout
tag @e[type=!item,scores={move=1..2},tag=form6b,tag=limitless] remove form6b

scoreboard players add @s[scores={move=100..}] infinity 15
scoreboard players add @s[scores={move=1..}] infinity 1
scoreboard players set @s[scores={move=1..100}] ProjImmune 10

execute as @s[scores={move=9..100}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=9..100}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=9..100}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=9..100}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=1..}] at @s run execute as @e[r=48] at @s run tp @s ~~~
scoreboard players set @s[scores={move=1..}] Camera 44

tag @s[scores={move=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s move 45
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run camerashake add @s 1.5 0.1 positional
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.blaze.shoot @a[r=50]  ~~~ 0.44 0.2 100000
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.22 100000
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.62 100000
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash ~~~
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash1 ~~1~
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash2 ~~1~
execute as @s[scores={move=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playanimation @s animation.infinite_void_standby2

execute as @s[scores={move=1..50,Energy=2..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 1
execute as @s[scores={move=1..50,Energy=12..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 6

execute as @s[scores={move=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s Stun 30
execute as @s[scores={move=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run function domainloser

execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run camerashake add @a[r=45] 1 0.15
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2secvoid_out1 ~~1~
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2secvoid_out2 ~~1~
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2secvoid_out3 ^^1^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye1 ^^2^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye2 ^^2^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye3 ^^2^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye1 ^^2^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye2 ^^2^-2.5
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:2sec_eye3 ^^2^-2.5
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:unlimited_void1 ~~1~
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:unlimited_void2 ~~1~
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:dirt2
execute as @s[scores={move=40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run effect @a[r=45] night_vision 1 1 true
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[scores={infinity=4..},r=45,tag=!domainactive,tag=!domainimmune,tag=!unselect,rm=0.15] infinity 3
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[scores={infinity=4..},r=45,tag=!domainactive,tag=!domainimmune,tag=!unselect,rm=0.15] Evade 0
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run effect @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,rm=0.15] slowness 30 99 true
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run tag @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={Move=0..,move=0..,cutscene=0..},rm=0.15,tag=!unlimited_hit] add unlimited_hit
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run tag @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={punch=1..},rm=0.15,tag=!punch0] add punch0
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,rm=0.15] Stun 600
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,rm=0.15] Move 600
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,rm=0.15] Camera 600
execute as @s[scores={move=37..40}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run scoreboard players set @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,r=45,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,rm=0.15] Disabled 600
execute as @s[scores={move=37}] at @s run camera @a[r=45] fade time 0.1 0 0.1 color 1 0 1
execute as @s[scores={move=35}] at @s unless entity @e[type=!item,tag=domainlayout,r=45,rm=0.5] run particle ds:voidstar ^^3^

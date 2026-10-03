execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players add @s[scores={Energy=0}] flashstep 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute unless entity @e[tag=deer_fight,r=100] run tag @e[tag=deer_fight,tag=!shikigami] remove deer_fight
execute unless entity @e[tag=deer_fight,r=100] run tag @e[tag=deer_fight,tag=shikigami,c=1] remove deer_fight
execute unless entity @e[tag=deer_fight,r=100] run kill @s

particle ds:deer_aura1 ~~1~
particle ds:deer_aura2 ~~1~
particle ds:deer_aura3 ~~~
particle ds:agito_aura3 ~~~
scoreboard players set @s Hyper 5
tag @s[type=ds:rounddeerboss,tag=!Big] add Big

execute as @s[type=ds:rounddeerboss,scores={cutscene=0,Hit=0,flashstep=0,Disabled=0,Stun=0,move=0}] at @s if entity @e[type=!ds:rounddeerboss,tag=!Frames,r=40,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players random @s chance 0 2

scoreboard players set @s[type= ds:rounddeerboss,scores={chance=1,cutscene=0,Hit=0,flashstep=0,Disabled=0,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 300

camerashake add @a[r=7,rm=4,tag=!curse,tag=!unselect] 0.12 0.1
damage @a[r=7,rm=4,tag=!curse,tag=!unselect] 1 wither
effect @a[r=7,rm=4,tag=!curse,tag=!unselect] wither 1 4 true
effect @a[r=7,rm=4,tag=!unselect] weakness 1 2 true
camerashake add @a[r=4,rm=2.5,tag=!curse,tag=!unselect] 0.18 0.1
damage @a[r=4,rm=2.5,tag=!curse,tag=!unselect] 2 wither
effect @a[r=4,rm=2.5,tag=!curse,tag=!unselect] wither 2 6 true
effect @a[r=4,rm=2.5,tag=!unselect] weakness 1 3 true
camerashake add @a[r=2.5,tag=!curse,tag=!unselect] 0.25 0.1
effect @a[r=2.5,tag=!curse,tag=!unselect] wither 3 10 true
effect @a[r=2.5,tag=!unselect] weakness 1 4 true
damage @a[r=2.5,tag=!curse,tag=!unselect] 3 wither
effect @s regeneration 10 4 true


execute as @s[scores={chance=1,move=1..}] at @s run tp @s ~~~ facing @p[r=40,tag=!unselect]

execute as @s[scores={chance=1,move=1..20}] at @s if entity @e[family=mahoraga,r=15]  run function damages/rct_damage
execute as @s[scores={chance=1,move=1..20}] at @s if entity @e[scores={wheelactive=1..},r=15,tag=!unselect] unless entity @e[family=mahoraga,r=15] run function damages/rct_damage
execute as @s[scores={chance=1,move=1..20}] at @s run playsound mob.wither.shoot @a ~~~ 1000000 1.5 1000000
execute as @s[scores={chance=1,move=1..20}] at @s run playsound mob.wither.shoot @a ~~~ 1000000 0.5 1000000
execute as @s[scores={chance=1,move=1..20}] at @s run camerashake add @a[r=40] 2 0.25
execute as @s[scores={chance=1,move=1..20}] at @s run scoreboard players set @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 20
execute as @s[scores={chance=1,move=1..20}] at @s run damage @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!purecurse,tag=!curse] 6 entity_attack entity @s
execute as @s[scores={chance=1,move=1..20}] at @s run damage @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=purecurse,tag=!curse] 1 suicide entity @s
execute as @s[scores={chance=1,move=1..20}] at @s run damage @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=curse] 1 suicide entity @s
execute as @s[scores={chance=1,move=1..20}] at @s run effect @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] wither 5 2 true
execute as @s[scores={chance=1,move=1..20}] at @s run scoreboard players add @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=purecurse,tag=!curse] rct 3
execute as @s[scores={chance=1,move=1..20}] at @s run scoreboard players set @e[tag=!Frames,r=38.5,type=!ds:rounddeerboss,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 10
execute as @s[scores={chance=1,move=1..20}] at @s run particle ds:deer_aurav1 ~~1~
execute as @s[scores={chance=1,move=1..20}] at @s run particle ds:deer_aurav2 ~~1~


damage @e[tag=!Frames,tag=!unselect,family=purecurse,r=10,tag=!curse] 1 suicide entity @s
damage @e[tag=!Frames,tag=!unselect,tag=curse,r=10] 1 suicide entity @s
scoreboard players add @e[tag=!Frames,tag=!unselect,family=purecurse,r=7,tag=!curse] rct 2
scoreboard players add @e[tag=!Frames,tag=!unselect,tag=curse,r=7] rct 2
scoreboard players add @e[tag=!Frames,tag=!unselect,family=purecurse,r=4,tag=!curse] rct 1
scoreboard players add @e[tag=!Frames,tag=!unselect,tag=curse,r=4] rct 1
effect @e[tag=!Frames,tag=!unselect,family=purecurse,r=10,rm=7,tag=!curse] wither 3 1 true
effect @e[tag=!Frames,tag=!unselect,tag=curse,r=10,rm=7] wither 3 1 true
effect @e[tag=!Frames,tag=!unselect,family=purecurse,r=7,rm=4,tag=!curse] wither 6 3 true
effect @e[tag=!Frames,tag=!unselect,tag=curse,r=7,rm=4] wither 6 3 true
effect @e[tag=!Frames,tag=!unselect,family=purecurse,r=4,tag=!curse] wither 10 5 true
effect @e[tag=!Frames,tag=!unselect,tag=curse,r=4] wither 10 5 true

scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0
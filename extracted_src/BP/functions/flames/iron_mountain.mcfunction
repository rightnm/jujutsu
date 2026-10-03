tickingarea remove IronMountain
execute as @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 IronMountain

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

execute as @a[scores={domainactive=1..,Energy=0..1,domain=0,Disabled=0,Disabled2=0},tag=flames,r=50] at @s run scoreboard players set @e[type=ds:iron_mountain,name=IronMountain,r=50,c=1,scores={Deleter=32..}] Deleter 31

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=33..}] at @s unless entity @e[tag=flames,scores={domainactive=1..},r=55] run scoreboard players set @s Deleter 32

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run kill @e[type=item,r=50]

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run kill @e[type=arrow,r=50]

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=50] at @s run function damages/jogo_domain
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run execute as @e[c=1,scores={wheelactive=1..},r=50,tag=!domainactive,tag=!spectator] at @s positioned ^^^2 run function damages/jogo_domain

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=50,tag=!domainactive,tag=!domainimmune] infinity 3

execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] Energy 0
scoreboard players remove @s[type=ds:iron_mountain,name=IronMountain,scores={Energy=1..}] Energy 1
scoreboard players set @s[type=ds:iron_mountain,name=IronMountain,scores={Energy=0}] Energy 14

scoreboard players set @e[tag=flames,r=55,scores={ability10=0..50}] ability10 100
scoreboard players set @e[family=jogo,r=55,scores={ability10=0..50}] ability10 100

tp @s ~ 301.05 ~

scoreboard players random @s[scores={Energy=2}] chance 1 6


scoreboard players set @e[family=!gojo,tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 25
damage @e[family=!gojo,tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 10 fire_tick
execute as @s[scores={chance=3}] at @s run execute as @e[family=!gojo,tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s positioned ^^^1 run function damages/fire_damage

execute as @s[scores={Evade=140}] at @s run execute as @a[r=50] at @s run playsound ambient.nether_wastes.loop @s ~~5~ 0.15 1
execute as @s[scores={chance=5}] at @s run playsound ambient.nether_wastes.mood @a[r=50] ^^10^15 99999 1 99999
scoreboard players set @s[scores={chance=5}] chance 0

execute unless entity @s[scores={Evade=0..}] run scoreboard players add @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] Evade 0
scoreboard players remove @s[type=ds:iron_mountain,name=IronMountain,scores={Evade=1..}] Evade 1
scoreboard players set @s[type=ds:iron_mountain,name=IronMountain,scores={Evade=0}] Evade 150
playanimation @s[scores={Evade=0..1}] animation.iron_mountain.ambience




execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=26..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=26..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=26..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=26..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run execute as @e[r=44,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~15 ~ ~15 ~-15 -15 ~-15 air [] replace barrier

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=28,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s @s
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=28,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ^^^ facing @e[type=ds:iron_mountain,name=IronMountain,c=1,r=40]
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=28,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ^^1^1.5 facing @e[type=ds:iron_mountain,name=IronMountain,c=1,r=40]

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run tp @s @s

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={chance=4}] at @s run camerashake add @a[r=50] 0.15 0.15
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run particle ds:iron_mountain1
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run particle ds:iron_mountain2
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run particle ds:iron_mountain3
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..}] at @s run particle ds:iron_mountain4


execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=40..}] at @s if entity @e[scores={domainactive=1..,ab=1..,move=1..},tag=flames,r=50] run scoreboard players add @s Deleter 1

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..30}] at @s run scoreboard players set @e[r=90,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 6
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=flames,r=100] ~ ~1~
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..22}] at @s run execute as @e[r=50,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~30 301 ~30 ~-30 301 ~-30 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..21}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..20}] at @s run stopsound @a[r=90] ambient.nether_wastes.loop
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=CoffinBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=CoffinBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=CoffinBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=9..12}] at @s positioned ~~-200~-0 run kill @e[name=CoffinBarrier,c=1] 
execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=3..},r=90,tag=flames] domainactive 2

execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~0.8~-0


execute as @s[type=ds:iron_mountain,name=IronMountain,scores={Deleter=1..10}] at @s run scoreboard players set @e[r=90,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,name=!IronMountain] tpdown 4


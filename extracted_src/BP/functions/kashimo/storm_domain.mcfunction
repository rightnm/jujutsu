tickingarea remove StormDomain
execute as @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 StormDomain

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

execute as @a[scores={domainactive=1..,Energy=0..1,domain=0,Disabled=0,Disabled2=0}] at @s run scoreboard players set @e[name=StormDomain,r=50,c=1] Deleter 31

execute as @s[name=StormDomain,scores={Deleter=33..}] at @s unless entity @a[tag=lightning,scores={domainactive=1..},r=50] run scoreboard players set @s Deleter 32

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run kill @e[type=item,r=60]

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run kill @e[type=arrow,r=60]

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=50] at @s run function damages/kashimo_domain
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run execute as @e[c=1,scores={wheelactive=1..},r=50,tag=!domainactive] at @s positioned ^^^2 run function damages/kashimo_domain

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=60,tag=!domainactive,tag=!domainimmune] infinity 3

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:domain_barrierv2 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain_background1 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain_background2 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain_background3 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..,Energy=1..2}] at @s run particle ds:kashimo_domain1 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..,Energy=3}] at @s run particle ds:kashimo_domain2 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..,Energy=1..2}] at @s run particle ds:kashimo_domain3 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain2 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain_floor ~~1~

execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s[name=StormDomain,scores={Deleter=1..}] Energy 0
scoreboard players remove @s[name=StormDomain,scores={Energy=1..}] Energy 1
scoreboard players set @s[name=StormDomain,scores={Energy=0}] Energy 14

scoreboard players random @s[scores={Energy=2}] chance 1 3 

execute as @s[scores={chance=2}] at @s run playsound ambient.weather.thunder @a ~~~ 99999 1 99999

execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run particle ds:domain_lightning1 ~~23~
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run particle ds:domain_lightning2 ~~13~
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run particle ds:domain_lightning3
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run playsound random.explode @a ~~~ 999999 0.5 999999
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run damage @s 20 lightning
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run scoreboard players add @s Stun 10
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run scoreboard players add @s Hit 3
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s run scoreboard players add @s shocked 10
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s positioned ^^^1 run function damages/electric_damage 
execute as @s[scores={chance=3}] at @s run execute as @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,tag=!Frames,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!armor_stand] at @s positioned ^^^1 run function damages/storm_domain

scoreboard players set @s[scores={chance=3}] chance 0

execute unless entity @s[scores={Evade=0..}] run scoreboard players add @s[name=StormDomain,scores={Deleter=1..}] Evade 0
scoreboard players remove @s[name=StormDomain,scores={Evade=1..}] Evade 1
scoreboard players set @s[name=StormDomain,scores={Evade=0}] Evade 1200

execute as @s[scores={Evade=1198..1199}] at @s run playsound music.storm @a[r=50]


execute as @s[name=StormDomain,scores={Deleter=26..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[name=StormDomain,scores={Deleter=26..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[name=StormDomain,scores={Deleter=26..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[name=StormDomain,scores={Deleter=26..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run execute as @e[r=44,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run fill ~15 ~ ~15 ~-15 -15 ~-15 air [] replace barrier


execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain4 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain5 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain6 ~~2~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain8 ~~1~
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run particle ds:kashimo_domain7 ~~1~

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run tp @s @s
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run tp @s ^^^ facing @e[name=StormDomain,c=1]
execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run tp @s ^^1^1 facing @e[name=StormDomain,c=1]

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s run tp @s @s

execute as @s[name=StormDomain,scores={Deleter=21..}] at @s run effect @e[tag=!domainactive,tag=!heavenlyrestriction,tag=!domainimmune,r=40,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] slowness 2 1 true

execute as @s[name=StormDomain,scores={Deleter=1..}] at @s if entity @p[scores={domainactive=1..,ab=1..,move=1..},tag=lightning,r=90] run scoreboard players add @s Deleter 1

execute as @s[name=StormDomain,scores={Deleter=1..30}] at @s run scoreboard players set @e[r=90,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Stun 6
execute as @s[name=StormDomain,scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=lightning,r=100] ~ ~1~
execute as @s[name=StormDomain,scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[name=StormDomain,scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[name=StormDomain,scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier

execute as @s[name=StormDomain,scores={Deleter=1..22}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier

execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~30 301 ~30 ~-30 301 ~-30 air
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 air
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 air
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[name=StormDomain,scores={Deleter=1..21}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[name=StormDomain,scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[name=StormDomain,scores={Deleter=1..20}] at @s run stopsound @a[r=90] music.storm
execute as @s[name=StormDomain,scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[name=StormDomain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=StormBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[name=StormDomain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=StormBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[name=StormDomain,scores={Deleter=1..15}] at @s positioned ~~-200~-0 run execute as @e[name=StormBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[name=StormDomain,scores={Deleter=9..12}] at @s positioned ~~-200~-0 run kill @e[name=StormBarrier,c=1] 
execute as @s[name=StormDomain,scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=3..},r=90,tag=lightning] domainactive 2

execute as @s[name=StormDomain,scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ~~0.8~-0


execute as @s[name=StormDomain,scores={Deleter=1..10}] at @s run scoreboard players set @e[r=90,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:boss_knockback1,type=!ds:boss_knockback_small,type=!ds:mahoraga_knockback1,type=!ds:mahoraga_knockback2,type=!gg:impact_frame,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,name=!StormDomain] tpdown 4


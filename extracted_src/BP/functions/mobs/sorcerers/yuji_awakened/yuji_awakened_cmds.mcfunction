execute as @e[type=ds:yuji_itadori_awakened,c=16] unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] guilty_score 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] chance 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] hitCD 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Stun 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] move 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] rct 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] rctuses 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] ability1 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] ability2 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] ability3 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] ability4 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] ability5 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Move 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Flourish 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] knockdown 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Camera 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Disabled 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] endurance 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] cutscene 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] domainCD 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] domainstart 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] domain 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] domainactive 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Hit 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] DashCD 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] hitdodge 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] flashstep 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] blackflash_amount 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] reversecursedCD 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] dying 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] antiheal 0
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] thezone 0
scoreboard players set @e[scores={Energy=0,thezone=0},type=ds:yuji_itadori_awakened,c=16] damageadd 12
scoreboard players set @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] punch 1
scoreboard players set @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] strength 47
scoreboard players set @e[scores={Energy=0,domainCD=0},type=ds:yuji_itadori_awakened,c=16] domainCD 300
execute as @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] unless entity @s[scores={forms=1..}] run scoreboard players set @s forms 1
execute as @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] unless entity @s[scores={blackflashlearn=1..}] run scoreboard players set @s blackflashlearn 1
execute as @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] unless entity @s[scores={simpledomainown=1..}] run scoreboard players set @s simpledomainown 1
scoreboard players add @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] simpledomainCD 0
tag @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16,tag=!soul_learned] add soul_learned
tag @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16,tag=!havingcts] add havingcts
tag @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16,tag=!yuji_awakened] add yuji_awakened
tag @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16,tag=!basic_behavior] add basic_behavior
scoreboard players set @e[scores={Energy=0},type=ds:yuji_itadori_awakened,c=16] Energy 12000



scoreboard players add @e[scores={combat=0,Energy=1..4000},type=ds:yuji_itadori_awakened,c=16] Energy 3
scoreboard players add @e[scores={combat=0,Energy=4001..8000},type=ds:yuji_itadori_awakened,c=16] Energy 4
scoreboard players add @e[scores={combat=0,Energy=8001..11995},type=ds:yuji_itadori_awakened,c=16] Energy 5
effect @e[scores={Move=1..,move=3..},type=ds:yuji_itadori_awakened,c=16] slowness 1 9 true
effect @e[scores={Move=1..,move=1..2},type=ds:yuji_itadori_awakened,c=16] slowness 0 10 true
effect @e[scores={Move=1..2,move=0},type=ds:yuji_itadori_awakened,c=16] slowness 0 10 true
tag @e[scores={domain=1..},tag=!domainactive,type=ds:yuji_itadori_awakened,c=16] add domainactive




scoreboard players set @e[scores={DashCD=!0},type=ds:yuji_itadori_awakened,c=16] DashCD 0
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=arrow,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=thrown_trident,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=small_fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=dragon_fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=fireworks_rocket,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=fishing_hook,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=splash_potion,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=area_effect_cloud,r=9] positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0,combat=1..},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=snowball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0,combat=1..},type=ds:yuji_itadori_awakened,c=16] at @s at @e[type=egg,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] at @s if entity @e[name=!LimitlessP,name=!HollowP,name=!200HollowP,family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:white_background,type=!ds:black_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:kokun_npc,type=!ds:bayer_npc,tag=!itemdrop,tag=!DomainExpansion,type=!ds:wcs,type=!ds:wcs2,r=6,c=1,scores={atk=1..2}] run scoreboard players random @s DashCD 1 10
scoreboard players random @e[scores={DashCD=1..7,Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},type=ds:yuji_itadori_awakened,c=16] DashCD -203 -202
tag @e[scores={DashCD=-203..-202,Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},tag=!customDashCD,type=ds:yuji_itadori_awakened,c=16] add customDashCD
execute as @e[scores={DashCD=-203..-202,Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,domainstart=0,domain=0},tag=customDashCD,type=ds:yuji_itadori_awakened,c=16] at @s run function _hitdodge



execute as @e[scores={Hit=1..2,cutscene=0,Stun=0..20,flashstep=0,move=0,Move=0,knockdown=0,Flourish=0,domainstart=0,domain=0},tag=!customDashCD,type=ds:yuji_itadori_awakened,c=16] at @s run function _hitdodge





scoreboard players remove @e[scores={thezone=1..,ability3=1..},type=ds:yuji_itadori_awakened,c=16] ability3 1
scoreboard players remove @e[scores={thezone=1..,Disabled=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 1
scoreboard players set @e[scores={damageadd=0..13,thezone=3..},type=ds:yuji_itadori_awakened,c=16] damageadd 14
scoreboard players set @e[scores={damageadd=14,thezone=1..2},type=ds:yuji_itadori_awakened,c=16] damageadd 12

scoreboard players set @e[scores={forms=0..1,blackflash_amount=1..8},type=ds:yuji_itadori_awakened,c=16] forms 2
scoreboard players set @e[scores={forms=0..2,blackflash_amount=9..},type=ds:yuji_itadori_awakened,c=16] forms 3
scoreboard players set @e[scores={detect_health=0..350,forms=0..1},type=ds:yuji_itadori_awakened,c=16] forms 2
scoreboard players set @e[scores={detect_health=0..150,forms=0..2},type=ds:yuji_itadori_awakened,c=16] forms 3

event entity @e[scores={detect_health=351..},has_property={property:yuji_face=!0},type=ds:yuji_itadori_awakened,c=16] yuji_faceoff
event entity @e[scores={detect_health=256..350},has_property={property:yuji_face=!1},type=ds:yuji_itadori_awakened,c=16] yuji_face1
event entity @e[scores={detect_health=101..255},has_property={property:yuji_face=!2},type=ds:yuji_itadori_awakened,c=16] yuji_face2
event entity @e[scores={detect_health=0..100},has_property={property:yuji_face=!3},type=ds:yuji_itadori_awakened,c=16] yuji_face3

#another way to random domainCD lol, also conducive to making more convenient for other mobs to detect domainCD
scoreboard players set @e[scores={domainCD=0..200,forms=0..2,detect_health=151..},type=ds:yuji_itadori_awakened,c=16] domainCD 300

tag @e[tag=cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={domainCD=0..360,forms=3..}] remove cantdomain
tag @e[tag=!cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={domainCD=361..,forms=3..}] add cantdomain
tag @e[tag=!cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={forms=0..2}] add cantdomain
execute as @e[tag=!cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={forms=3..},tag=!cantdomain] at @s if entity @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={domainactive=1..},r=66] run tag @s add cantdomain
execute as @e[tag=!cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={forms=3..},tag=!cantdomain] at @s if entity @e[family=projectile,tag=DomainExpansion,r=66] run tag @s add cantdomain
execute as @e[tag=!cantdomain,type=ds:yuji_itadori_awakened,c=16,scores={forms=3..},tag=!cantdomain] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] run tag @s add cantdomain





scoreboard players set @e[scores={domainactive=1..,domainCD=!7350,thezone=197..199},tag=domainactive,type=ds:yuji_itadori_awakened,c=16] domainCD 7350


scoreboard players remove @e[scores={domainstart=0,domain=0,domainactive=1..,domainCD=7201..},tag=domainactive,type=ds:yuji_itadori_awakened,c=16] domainCD 2

execute as @e[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,domainactive=1..,Stun=0,move=0,domainCD=0..7200},tag=domainactive,type=ds:yuji_itadori_awakened,c=16] at @s run scoreboard players set @e[type=ds:yuji_domain,scores={Deleter=51..},r=50,c=1] Deleter 50





scoreboard players set @e[scores={domainstart=1..,domainCD=!7350},type=ds:yuji_itadori_awakened,c=16] domainCD 7350
scoreboard players set @e[scores={domain=1..,domainCD=!7350},type=ds:yuji_itadori_awakened,c=16] domainCD 7350
execute as @e[scores={domainstart=1..},type=ds:yuji_itadori_awakened,c=16] at @s run tp @s ~~~~ 0
execute as @e[scores={domain=70..},type=ds:yuji_itadori_awakened,c=16] at @s run tp @s ~~~~ 0
execute as @e[scores={domain=59..60},type=ds:yuji_itadori_awakened,c=16] at @s run tp @s ~~~~ 0
execute as @e[scores={domainstart=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/yuji_domain_start
execute as @e[scores={domain=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/yuji_domain





tag @e[scores={reversecursedCD=0},tag=rctCD,type=ds:yuji_itadori_awakened,c=16] remove rctCD
scoreboard players remove @e[scores={combat=1..,reversecursedCD=1..},tag=rctCD,type=ds:yuji_itadori_awakened,c=16] reversecursedCD 1
scoreboard players remove @e[scores={combat=0,reversecursedCD=1..},type=ds:yuji_itadori_awakened,c=16] reversecursedCD 1
scoreboard players remove @e[scores={combat=0,rctuses=1..},type=ds:yuji_itadori_awakened,c=16] rctuses 1
effect @e[scores={dying=0,combat=0,detect_health=0..380,rctuses=0..799,antiheal=0,Energy=2..},type=ds:yuji_itadori_awakened,c=16] slowness 1 3 true
scoreboard players set @e[scores={dying=0,combat=0,detect_health=0..380,rctuses=0..799,antiheal=0,Energy=2..},type=ds:yuji_itadori_awakened,c=16] rct 5
effect @e[scores={dying=0,detect_health=0..80,rct=0,rctuses=0..799,antiheal=0,Energy=2..},type=ds:yuji_itadori_awakened,c=16] slowness 1 3 true
scoreboard players set @e[scores={dying=0,detect_health=0..80,rct=0,rctuses=0..799,antiheal=0,Energy=2..},type=ds:yuji_itadori_awakened,c=16] rct 150


#additional use rct to fill the gap period when distance to the target is relatively far during ability disabled period
execute as @e[tag=!hasTRG,type=ds:yuji_itadori_awakened,scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD,c=16] at @s unless entity @e[type=!ds:yuji_itadori_awakened,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,c=1] run effect @s slowness 1 3 true
execute as @e[tag=!hasTRG,type=ds:yuji_itadori_awakened,scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD,c=16] at @s unless entity @e[type=!ds:yuji_itadori_awakened,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,c=1] run scoreboard players add @s reversecursedCD 6
execute as @e[tag=!hasTRG,type=ds:yuji_itadori_awakened,scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..306,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD,c=16] at @s unless entity @e[type=!ds:yuji_itadori_awakened,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,c=1] run scoreboard players add @s rct 5
execute as @e[tag=!hasTRG,type=ds:yuji_itadori_awakened,scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=5..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,reversecursedCD=301..,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD,c=16] at @s unless entity @e[type=!ds:yuji_itadori_awakened,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,c=1] run tag @s add rctCD


tag @s[tag=hit] remove hit


#simple domain
execute as @e[tag=simpledomain,scores={move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run tp @s ~~~~ 0
scoreboard players set @e[tag=simpledomain,scores={move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 15
scoreboard players set @e[tag=simpledomain,scores={move=1..},type=ds:yuji_itadori_awakened,c=16] simpledomainCD 600
execute as @e[tag=simpledomain,scores={move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function ce/simpledomain


#---------------


scoreboard players set @e[scores={chance=3,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 35


scoreboard players set @e[scores={chance=4,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 35


scoreboard players set @e[scores={chance=5,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 35


scoreboard players set @e[scores={chance=6,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 35


scoreboard players set @e[scores={chance=7,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 40
scoreboard players set @e[scores={chance=7,Stun=0,move=1..,ability2=0},type=ds:yuji_itadori_awakened,c=16] ability2 500


scoreboard players set @e[scores={chance=8,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 38


scoreboard players set @e[scores={chance=9,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 18
scoreboard players set @e[scores={chance=9,Stun=0,move=1..,ability1=0},type=ds:yuji_itadori_awakened,c=16] ability1 400
scoreboard players remove @e[scores={thezone=1..,ability1=5..},type=ds:yuji_itadori_awakened,c=16] ability1 5


scoreboard players set @e[scores={chance=10,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=11,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


#new moves
scoreboard players set @e[scores={chance=12,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=13,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=14,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=15,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=16,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


#yuji moves
scoreboard players set @e[scores={chance=17,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=18,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=19,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=20,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=21,Stun=0,move=1..,Disabled=0..24},type=ds:yuji_itadori_awakened,c=16] Disabled 25
scoreboard players set @e[scores={chance=21,move=1..},type=ds:yuji_itadori_awakened,c=16] ability4 600


#soulshrine
scoreboard players set @e[scores={chance=22,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=23,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=24,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25


scoreboard players set @e[scores={chance=25,Stun=0,move=1..,Disabled=0..24},type=ds:yuji_itadori_awakened,c=16] Disabled 25
scoreboard players set @e[scores={chance=25,move=1..},type=ds:yuji_itadori_awakened,c=16] ability5 600





scoreboard players set @e[scores={chance=97,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25

scoreboard players set @e[scores={chance=98,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25

scoreboard players set @e[scores={chance=99,Stun=0,move=1..},type=ds:yuji_itadori_awakened,c=16] Disabled 25





#-----moves-----
execute as @e[scores={chance=3,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/yuji/manji_kick
execute as @e[scores={chance=4,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function hr/hr9
execute as @e[scores={chance=5,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function hr/hr1
execute as @e[scores={chance=6,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/yuji/triple_kick
execute as @e[scores={chance=7,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/yuji/dive_kick
execute as @e[scores={chance=8,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/yuji/fierce_barrage
execute as @e[scores={chance=9,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/yuji/divergent_strike
execute as @e[scores={chance=10,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function hr/hr7
execute as @e[scores={chance=11,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function hr/deadly_strike

execute as @e[scores={chance=12,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/left_right
execute as @e[scores={chance=13,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/shoulder_bash
execute as @e[scores={chance=14,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/palm_strike
execute as @e[scores={chance=15,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/cruel_combo
execute as @e[scores={chance=16,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/vicious_claws

execute as @e[scores={chance=17,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/fierce_strikes
execute as @e[scores={chance=18,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/twinkicks
execute as @e[scores={chance=19,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/brutal_quake
execute as @e[scores={chance=20,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/deadly_pursuit
execute as @e[scores={chance=21,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/vengeance_fists


execute as @e[scores={chance=22,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab1
execute as @e[scores={chance=23,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab2
execute as @e[scores={chance=24,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab3
execute as @e[scores={chance=25,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab5





execute as @e[scores={chance=97,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab4
execute as @e[scores={chance=98,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function yuji/soul_ab3
execute as @e[scores={chance=99,move=1..},type=ds:yuji_itadori_awakened,c=16] at @s run function fighting/calamity_claws/shoulder_bash





scoreboard players set @e[scores={move=1..2,endurance=1..},type=ds:yuji_itadori_awakened,c=16] endurance 0
scoreboard players set @e[scores={move=1..2,chance=1..},type=ds:yuji_itadori_awakened,c=16] chance 0
tag @e[tag=hasTRG,type=ds:yuji_itadori_awakened,c=16] remove hasTRG

tag @e[type=ds:toji,tag=!toji_function,c=16] add toji_function
tag @e[type=ds:toji_boss,tag=!toji_function,c=16] add toji_function
execute as @e[family=toji,tag=toji_function,c=16] unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @e[scores={Energy=0},family=toji,tag=toji_function,c=16] unless entity @e[scores={weapontype=0..}] run scoreboard objectives add weapontype dummy
execute as @e[scores={Energy=0},family=toji,tag=toji_function,c=16] unless entity @e[scores={loading_timer=0..}] run scoreboard objectives add loading_timer dummy
execute as @e[scores={Energy=0},family=toji,tag=toji_function,c=16] unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s guilty_score 200
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] EnergyCap 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] weapontype 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] flashstep 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Stun 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] move 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Move 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Camera 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Disabled 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] endurance 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] cutscene 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] DashCD 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Hit 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] antiheal 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] endurance 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] agility 0
scoreboard players set @e[scores={Energy=0,agility=0},type=ds:toji,c=16] endurance 1500
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] knockdown 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Flourish 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] hitCD 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] ability1 0
scoreboard players add @e[scores={Energy=0},family=toji,tag=toji_function,c=16] loading_timer 0
scoreboard players set @e[scores={Energy=0},family=toji,tag=toji_function,c=16] damageadd 10
scoreboard players set @e[scores={Energy=0},family=toji,tag=toji_function,c=16] punch 1
scoreboard players set @e[scores={Energy=0},family=toji,tag=toji_function,c=16] strength 44
execute as @e[scores={Energy=0,agility=0},type=ds:toji_boss,c=16] at @s unless entity @e[family=projectile,name=RikoArrived,scores={Deleter=210..220},r=50,c=1] run playsound music.toji @a[r=100]
tag @e[scores={Energy=0},tag=!heavenlyrestriction,family=toji,tag=toji_function,c=16] add heavenlyrestriction
tag @e[scores={Energy=0},tag=!basic_behavior,family=toji,tag=toji_function,c=16] add basic_behavior
scoreboard players set @e[scores={Energy=0},family=toji,tag=toji_function,c=16] Energy 44



#when toji is at the bottom of the world, will be add worldrange tag  (cuz block & blocks conditional subcmd cannot detect blocks outside the world range, and it will also cause entire cmd to be invalidated regardless of whether condition is true or false)
tag @e[tag=worldrange,family=toji,tag=toji_function,c=16] remove worldrange
tag @e[y=-64,dy=-61,tag=!worldrange,family=toji,tag=toji_function,c=16] add worldrange
execute as @e[scores={Move=1..,move=3..,chance=!6},family=toji,tag=toji_function,c=16] unless entity @s[scores={chance=5,weapontype=2}] run effect @s slowness 1 9 true
effect @e[scores={Move=1..,move=1..2},family=toji,tag=toji_function,c=16] slowness 0 10 true
effect @e[scores={Move=1..2,move=0},family=toji,tag=toji_function,c=16] slowness 0 10 true
scoreboard players set @e[scores={nocts=3..},family=toji,tag=toji_function,c=16] nocts 2
scoreboard players remove @e[scores={shocked=10..},family=toji,tag=toji_function,c=16] shocked 1

#add "cooldown" to glock, prevent toji from using glock like using a submachine gun
scoreboard players remove @e[scores={loading_timer=1..},family=toji,tag=toji_function,c=16] loading_timer 1
tag @e[scores={loading_timer=0},tag=in_loading,family=toji,tag=toji_function,c=16] remove in_loading
tag @e[scores={loading_timer=100..},tag=!in_loading,family=toji,tag=toji_function,c=16] add in_loading

scoreboard players add @e[type=ds:toji_boss,c=16] agility 1
execute as @e[type=ds:toji_boss,scores={agility=2000..},c=16] at @s unless entity @s[scores={chance=7,move=1..,weapontype=1}] run playsound music.toji @a[r=100]
execute as @e[type=ds:toji_boss,scores={agility=2000..},c=16] unless entity @s[scores={chance=7,move=1..,weapontype=1}] run scoreboard players set @s agility 0
execute as @e[type=ds:toji_boss,tag=!phase2,c=16] unless score @s endurance = @s agility run scoreboard players operation @s endurance = @s agility
scoreboard players set @e[type=ds:toji_boss,scores={endurance=!1500},tag=phase2,c=16] endurance 1500


execute as @e[type=ds:toji_boss,c=16] at @s unless entity @a[tag=special_mission_vessel,r=80,c=1,m=!spectator] at @p[tag=special_mission_vessel,r=250,m=!spectator] run function mobs/toji/flashstep2





#invisible when there are two or more flyheads around
execute as @e[tag=invisible,family=toji,tag=toji_function,c=16] run effect @s invisibility 1 11 true
tag @e[tag=invisible,family=toji,tag=toji_function,c=16] remove invisible



#prevent toji from dying easily or being unable to move freely (like getting stuck in block)
execute as @e[scores={Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0},family=toji,tag=toji_function,c=16] at @s unless block ~~1~ air unless block ~~1~ water unless block ~~1~ tallgrass unless block ~~1~ double_plant unless block ~~1~ short_grass unless block ~~1~ fern unless block ~~1~ tall_grass unless block ~~1~ large_fern unless block ~~1~ deadbush unless block ~~1~ yellow_flower unless block ~~1~ red_flower unless block ~~1~ torchflower unless block ~~1~ pitcher_plant unless block ~~1~ vine unless block ~~1~ twisting_vines unless block ~~1~ weeping_vines unless block ~~1~ bamboo_sapling unless block ~~1~ bamboo unless block ~~1~ reeds unless block ~~1~ cave_vines unless block ~~1~ cave_vines_body_with_berries unless block ~~1~ cave_vines_head_with_berries unless block ~~1~ kelp unless block ~~1~ torch unless block ~~1~ soul_torch unless block ~~1~ redstone_torch unless block ~~1~ unlit_redstone_torch unless block ~~1~ ladder unless block ~~1~ scaffolding unless block ~~1~ chain unless block ~~1~ frame unless block ~~1~ glow_frame unless block ~~1~ standing_sign unless block ~~1~ spruce_standing_sign unless block ~~1~ birch_standing_sign unless block ~~1~ jungle_standing_sign unless block ~~1~ acacia_standing_sign unless block ~~1~ darkoak_standing_sign unless block ~~1~ mangrove_standing_sign unless block ~~1~ cherry_standing_sign unless block ~~1~ bamboo_standing_sign unless block ~~1~ crimson_standing_sign unless block ~~1~ warped_standing_sign unless block ~~1~ wall_sign unless block ~~1~ spruce_wall_sign unless block ~~1~ birch_wall_sign unless block ~~1~ jungle_wall_sign unless block ~~1~ acacia_wall_sign unless block ~~1~ darkoak_wall_sign unless block ~~1~ mangrove_wall_sign unless block ~~1~ cherry_wall_sign unless block ~~1~ bamboo_wall_sign unless block ~~1~ crimson_wall_sign unless block ~~1~ warped_wall_sign unless block ~~1~ oak_hanging_sign unless block ~~1~ spruce_hanging_sign unless block ~~1~ birch_hanging_sign unless block ~~1~ jungle_hanging_sign unless block ~~1~ acacia_hanging_sign unless block ~~1~ dark_oak_hanging_sign unless block ~~1~ mangrove_hanging_sign unless block ~~1~ cherry_hanging_sign unless block ~~1~ bamboo_hanging_sign unless block ~~1~ crimson_hanging_sign unless block ~~1~ warped_hanging_sign unless block ~~1~ standing_banner unless block ~~1~ wall_banner unless block ~~1~ lever unless block ~~1~ stone_button unless block ~~1~ wooden_button unless block ~~1~ spruce_button unless block ~~1~ birch_button unless block ~~1~ jungle_button unless block ~~1~ acacia_button unless block ~~1~ dark_oak_button unless block ~~1~ mangrove_button unless block ~~1~ cherry_button unless block ~~1~ bamboo_button unless block ~~1~ crimson_button unless block ~~1~ warped_button unless block ~~1~ polished_blackstone_button unless block ~~1~ end_rod unless block ~~1~ lightning_rod unless block ~~1~ glow_lichen unless block ~~1~ hanging_roots unless block ~~1~ frog_spawn unless block ~~1~ spore_blossom unless block ~~1~ small_amethyst_bud unless block ~~1~ medium_amethyst_bud unless block ~~1~ large_amethyst_bud unless block ~~1~ amethyst_cluster run function mobs/toji/flashstep





#this is to make toji use dodge on attacking player/mob and projectile that is facing him (including wcs, but to wcs probability of successfully only 60%)
scoreboard players set @e[scores={DashCD=!0},family=toji,tag=toji_function,c=16] DashCD 0
scoreboard players random @e[scores={Hit=1..,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] DashCD 1 11
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[scores={atk=1..2},r=9,type=!ds:toji,type=!ds:toji_boss] positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=arrow,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=thrown_trident,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=small_fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=dragon_fireball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=fireworks_rocket,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=fishing_hook,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=splash_potion,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[type=area_effect_cloud,r=9] positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,combat=1..},family=toji,tag=toji_function,c=16] at @s at @e[type=snowball,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0,combat=1..},family=toji,tag=toji_function,c=16] at @s at @e[type=egg,r=9] if block ~~-0.15~ air if block ^^^0.15 air positioned ^^^4.5 if entity @s[r=4.5] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[name=!LimitlessP,name=!HollowP,name=!200HollowP,family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:sukuna_innate_domain,type=!ds:white_background,type=!ds:black_background,type=!ds:takada_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:toji_cutscene,type=!ds:toji_apple,type=!ds:toji_awakening,type=!ds:takada_chan,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:cursed_egg,type=!ds:kokun_npc,type=!ds:bayer_npc,type=!ds:megumi_idle,type=!ds:itadori_noai,type=!ds:riko_amanai_noai,type=!ds:riko_amanai_awake,tag=!itemdrop,tag=!DomainExpansion,type=!ds:wcs,type=!ds:wcs2,r=12,c=1] positioned ^^^6 if entity @s[r=6] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s if entity @e[name=!LimitlessP,name=!HollowP,name=!200HollowP,family=projectile,family=!despawncito,family=!pest,family=!monster,family=!npc,type=!ds:conflict_essence_drop,type=!ds:component,type=!ds:mysterious_artifact,type=!ds:reality_shard,type=!ds:attractor,type=!ds:capture_point,type=!ds:cube_area,type=!ds:cube_area2,type=!ds:forest_scene,type=!ds:glocks,type=!ds:judgeman,type=!ds:particle_locator,type=!ds:void_reactor,type=!ds:rift,type=!ds:rock_wall,type=!ds:rift_stabilizer,type=!ds:deathgamble,type=!ds:slots,type=!ds:sukuna_innate_domain,type=!ds:white_background,type=!ds:black_background,type=!ds:takada_background,type=!ds:mahoraga_ritual1,type=!ds:mahoraga_ritual2,type=!ds:tounge_coil,type=!ds:sukuna_innate_domain,type=!ds:toji_cutscene,type=!ds:toji_apple,type=!ds:toji_awakening,type=!ds:takada_chan,type=!ds:lost_hiten,type=!ds:massive_field,type=!ds:cursed_egg,type=!ds:kokun_npc,type=!ds:bayer_npc,type=!ds:megumi_idle,type=!ds:itadori_noai,type=!ds:riko_amanai_noai,type=!ds:riko_amanai_awake,tag=!itemdrop,tag=!DomainExpansion,type=!ds:wcs,type=!ds:wcs2,r=6,c=1,scores={atk=1..}] run scoreboard players random @s DashCD 1 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[family=projectile,type=ds:wcs2,r=27,c=1] positioned ^^^13.5 if entity @s[r=13.5] run scoreboard players random @s DashCD -9 10
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s at @e[family=projectile,type=ds:wcs,r=40,c=1] positioned ^^^20 if entity @s[r=20] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=14,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=14,c=1] positioned ^^^7 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=21,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=21,c=1] positioned ^^^14 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=28,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=28,c=1] positioned ^^^21 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=35,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=35,c=1] positioned ^^^28 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=42,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=42,c=1] positioned ^^^35 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=49,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=49,c=1] positioned ^^^42 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=56,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=56,c=1] positioned ^^^49 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=63,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=63,c=1] positioned ^^^56 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
execute as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] at @s as @e[scores={move=11..15},tag=sukuna,tag=form9s,r=70,c=1] at @s anchored eyes as @e[scores={Hit=0,flashstep=0,Stun=0..20,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,r=70,c=1] positioned ^^^63 if entity @s[r=7] run scoreboard players random @s DashCD 11 20
scoreboard players random @e[scores={DashCD=-3..-1,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] DashCD -203 -202
scoreboard players random @e[scores={DashCD=1..9,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] DashCD -203 -202
scoreboard players set @e[scores={DashCD=11..16,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},family=toji,tag=toji_function,c=16] DashCD -201
tag @e[scores={DashCD=-203..-201,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},tag=!customDashCD,family=toji,tag=toji_function,c=16] add customDashCD
execute as @e[scores={DashCD=-203..-201,flashstep=0,Move=0,move=0,cutscene=0,knockdown=0,Flourish=0},tag=customDashCD,family=toji,tag=toji_function,c=16] at @s run function _hitdodge

execute as @e[scores={Hit=1..2,cutscene=0,Stun=0..20,flashstep=0,move=0,Move=0,knockdown=0,Flourish=0},tag=!customDashCD,family=toji,tag=toji_function,c=16] at @s run function _hitdodge



scoreboard players remove @e[scores={EnergyCap=1..},family=toji,tag=toji_function,c=16] EnergyCap 1
scoreboard players remove @e[scores={Stun=10..},family=toji,tag=toji_function,c=16] Stun 10



scoreboard players random @e[scores={EnergyCap=0},tag=switching,family=toji,tag=toji_function,c=16] EnergyCap 600 1200
execute as @e[tag=switching,scores={cutscene=1..},family=toji,tag=toji_function,c=16] at @s run function mobs/toji/phase

scoreboard players set @e[scores={cutscene=1..},family=toji,tag=toji_function,c=16] Disabled 20
scoreboard players set @e[scores={cutscene=1..,move=3..},family=toji,tag=toji_function,c=16] move 2
scoreboard players set @e[scores={cutscene=1..,chance=1..,move=0},family=toji,tag=toji_function,c=16] chance 0



#make sure that toji does not escape out of simple domain within the range of malevolent kitchen (ik this is quite confusing but this is done to make this ai a bit more perfect lol)
tag @e[tag=inDomain,family=toji,tag=toji_function,c=16] remove inDomain
execute as @e[tag=!inDomain,family=toji,tag=toji_function,c=16] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},type=!ds:toji,type=!ds:toji_boss,r=200] at @s unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] unless entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run tag @s add inDomain
execute as @e[tag=!inDomain,family=toji,tag=toji_function,c=16] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=ChimeraGarden1] run tag @s add inDomain



#phase2
tag @e[type=ds:toji_boss,scores={detect_health=0..250},tag=!phase2,tag=inDomain,c=16] add phase2
tag @e[type=ds:toji_boss,scores={detect_health=0..250},tag=!phase2,tag=simpledomain_protecting,c=16] add phase2



execute as @e[scores={Disabled=0,weapontype=1,chance=!18..19},hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand,quantity=0},family=toji,tag=toji_function,c=16] unless entity @s[scores={chance=15,weapontype=1}] unless entity @s[scores={chance=21}] run replaceitem entity @s slot.weapon.mainhand 1 ds:inverted_spear
execute as @e[scores={Disabled=0,weapontype=2,chance=!18..19},hasitem={item=ds:soul_sword,location=slot.weapon.mainhand,quantity=0},family=toji,tag=toji_function,c=16] unless entity @s[scores={chance=15,weapontype=1}] unless entity @s[scores={chance=21}] run replaceitem entity @s slot.weapon.mainhand 1 ds:soul_sword


#summon flyheads
tag @e[tag=flyheadsCD,scores={ability1=0},family=toji,tag=toji_function,c=16] remove flyheadsCD
tag @e[tag=!flyheadsCD,scores={ability1=401..},family=toji,tag=toji_function,c=16] add flyheadsCD


tag @e[tag=hit,family=toji,tag=toji_function,c=16] remove hit


#---------------
scoreboard players set @e[scores={chance=3,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=4,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=5,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=6,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 15

tag @e[scores={chance=7,Stun=0,move=1..,weapontype=1},tag=invisible2,family=toji,tag=toji_function,c=16] remove invisible2
scoreboard players set @e[scores={chance=7,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 35



scoreboard players set @e[scores={chance=3,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=4,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=5,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=6,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=7,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 25



scoreboard players set @e[scores={chance=8,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 17

scoreboard players set @e[scores={chance=9,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 9

scoreboard players set @e[scores={chance=10,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 17

scoreboard players set @e[scores={chance=11,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 5



scoreboard players set @e[scores={chance=14,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 20

scoreboard players set @e[scores={chance=15,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=16,Stun=0,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=16,Stun=0,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] Disabled 15

scoreboard players set @e[scores={chance=17,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 17

scoreboard players set @e[scores={chance=20,Stun=0,move=1..},family=toji,tag=toji_function,c=16] Disabled 33



#-----moves-----

execute as @e[scores={chance=3,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/ankle_cutter
execute as @e[scores={chance=4,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/deep_pierce
execute as @e[scores={chance=5,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/domain_breaker
execute as @e[scores={chance=6,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/flash_slashes
execute as @e[scores={chance=7,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/wrong_way

execute as @e[scores={chance=3,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/soul_slice
execute as @e[scores={chance=4,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/soul_slice2
execute as @e[scores={chance=5,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/throughout_heaven
execute as @e[scores={chance=6,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/crossway_slashes
execute as @e[scores={chance=7,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/judgement_cut


execute as @e[scores={chance=8,move=1..},family=toji,tag=toji_function,c=16] at @s run function hr/dive_kick
execute as @e[scores={chance=9,move=1..},family=toji,tag=toji_function,c=16] at @s run function hr/hr9
execute as @e[scores={chance=10,move=1..},family=toji,tag=toji_function,c=16] at @s run function fighting/calamity_claws/cruel_combo
execute as @e[scores={chance=11,move=1..},family=toji,tag=toji_function,c=16] at @s run function hr/hr5


execute as @e[scores={chance=15,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/crossway_slashes
execute as @e[scores={chance=16,move=1..,weapontype=1},family=toji,tag=toji_function,c=16] at @s run function fighting/invertedspear/flash_slashes
execute as @e[scores={chance=16,move=1..,weapontype=2},family=toji,tag=toji_function,c=16] at @s run function fighting/soul_sword/throughout_heaven
execute as @e[scores={chance=17,move=1..},family=toji,tag=toji_function,c=16] at @s run function fighting/calamity_claws/shoulder_bash

execute as @e[scores={chance=20,move=1..},family=toji,tag=toji_function,c=16] at @s run function hr/hr6


scoreboard players add @e[hasitem={item=ds:glock,location=slot.weapon.mainhand},scores={Disabled=4},family=toji,tag=toji_function,c=16] loading_timer 15
effect @e[hasitem={item=ds:glock,location=slot.weapon.mainhand},scores={Disabled=4},family=toji,tag=toji_function,c=16] speed 0 10 true
effect @e[hasitem={item=ds:glock,location=slot.weapon.mainhand},scores={Disabled=4},family=toji,tag=toji_function,c=16] slowness 1 2 true





tag @e[tag=gunshot_mob,family=toji,tag=toji_function,c=16] remove gunshot_mob
scoreboard players set @e[scores={move=1..2,chance=1..},family=toji,tag=toji_function,c=16] chance 0
tag @e[tag=hasTRG,family=toji,tag=toji_function,c=16] remove hasTRG
tag @e[tag=limitless,tag=Frames,scores={infinity=1..},tag=!dodged,r=200,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add dodged
effect @e[type=!player,scores={strength=30..,detect_health=1..},tag=!dodged,r=200,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 3 7 true
spreadplayers ~ ~ 30 40 @e[type=!player,scores={strength=30..,detect_health=1..},tag=!dodged,r=200,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand]
scoreboard players set @e[type=!player,scores={strength=30..,detect_health=1..},tag=!dodged,r=200,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Frames 10
tag @e[type=!player,scores={strength=30..,detect_health=1..},tag=!dodged,r=200,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add dodged

effect @e[type=!player,family=mahoraga,tag=fire_adapted,tag=!explosion_adapted] resistance 3 2 true
effect @e[type=!player,family=mahoraga,tag=!fire_adapted,tag=explosion_adapted] resistance 3 2 true
effect @e[type=!player,family=mahoraga,tag=fire_adapted,tag=explosion_adapted] resistance 3 4 true


camera @a[r=400] fade time 0 0.5 1 color 255 255 255
playsound random.explode @a[r=400] ~~~ 9999 0.5 9999
playsound random.explode @a[r=400] ~~~ 9999 0.25 9999
playsound random.explode @a[r=400] ~~~ 9999 0.15 9999
playsound mob.shock1 @a[r=400] ~~~ 9999 0.5 9999
playsound mob.burst @a[r=400] ~~~ 9999 1 9999

execute as @a[r=200] at @s run playsound random.explode @a[r=400] ^^16^ 9999 0.5 9999
execute as @a[r=200] at @s run playsound random.explode @a[r=400] ^^16^ 9999 0.25 9999
execute as @a[r=200] at @s run playsound random.explode @a[r=400] ^^16^ 9999 0.15 9999
execute as @a[r=200] at @s run playsound mob.shock1 @a[r=400] ^^16^ 9999 0.5 9999
execute as @a[r=200] at @s run playsound mob.burst @a[r=400] ^^16^ 9999 1 9999


camerashake add @a[r=400] 4 2.5 rotational
damage @e[r=200,tag=!Frames,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 100 override
damage @e[r=50,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 600 override
scoreboard players set @e[r=200,tag=!Frames,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 50
scoreboard players set @e[r=200,tag=!Frames,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 15
scoreboard players add @e[r=200,tag=!Frames,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 50
scoreboard players add @e[r=200,tag=!Frames,tag=!dodged,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 100
particle ds:meteor_land1 
particle ds:meteor_land2 
particle ds:meteor_land3 
particle ds:meteor_land4 
particle ds:meteor_land5 
particle ds:meteor_land6 
particle ds:meteor_land7
particle ds:meteor_land8
particle ds:meteor_land9
particle ds:stoic_explode
particle ds:stoic_explode4
particle ds:stoic_explode3
particle ds:stoic_crater1
particle ds:stoic_crater2
particle ds:large_shockwave
particle ds:impact2
execute as @p[tag=griefable,c=1] run summon ds:projectile summonmeteor
execute as @p[tag=griefable,c=1] run scoreboard players set @e[name=summonmeteor,c=1,r=5] Deleter 25
execute as @p[tag=griefable,c=1] run function heat15x15
tickingarea remove meteor
kill @s
tag @e[tag=dodged,r=250] remove dodged
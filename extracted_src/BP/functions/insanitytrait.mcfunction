scoreboard players set @a[scores={insanity=0..599,insanityCD=0}] insanityCD 5000
scoreboard players set @a[scores={insanityCD=4999..,insanity=0}] insanity 600
execute as @a[scores={insanity=599..}] at @s run particle ds:insanity_awaken~~1.5~
execute as @a[scores={insanity=599..}] at @s run playsound mob.wither.ambient @a[r=100] ~~~ 9999 0.8 9999
camera @a[scores={insanity=599..}] fade time 0 0 0.5 color 100 0 0
camera @a[scores={insanity=1..3}] fade time 0 1.5 0.25 color 100 0 0
effect @a[scores={insanity=1..3}] slowness 5 1 true
execute as @a[scores={atk=1..2,insanity=1..599}] at @s positioned ^^^2 run scoreboard players operation @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!Frames,r=1.95] damagehalf += @s damageadd
title @a[tag=!impactframesoff,scores={insanity=1..599,move=0},tag=!abilitying] title 
scoreboard players remove @a[scores={Stun=1..,cutscene=0,insanity=1..599},tag=!Frames] Stun 1
effect @a[scores={insanity=1..599},tag=!Frames,tag=!unselect] resistance 1 0 true
scoreboard players add @a[scores={insanity=1..599},tag=!heavenlyrestriction] Energy 2
effect @a[scores={detect_sprint=1..,insanity=1..599}] speed 1 4 true
effect @a[scores={insanity=1..599}] strength 1 3 true
execute as @a[scores={insanity=1..599}] at @s run particle ds:insanity1
execute as @a[scores={insanity=1..599}] at @s run particle ds:insanity2
camerashake add @a[scores={insanity=1..599}] 0.02 0.05
scoreboard players remove @a[scores={insanity=1..}] insanity 1

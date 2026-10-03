playanimation @s[scores={cutscene=80..,Camera=0},tag=adapting,tag=!dismantlepummel] animation.mahoraga.adaption
scoreboard players set @s[tag=soul_adapting,tag=adapting,scores={cutscene=31..,antiheal=1..}] antiheal 0
effect @s[scores={cutscene=31..},tag=adapting] instant_health 1 10 true
effect @s[scores={cutscene=31..},tag=adapting] resistance 1 10 true
effect @s[scores={cutscene=41..},tag=adapting] slowness 1 10 true
execute as @s[scores={cutscene=5..},tag=adapting] at @s run tp @s ~~~~ 0

execute as @s[scores={cutscene=1..80},tag=adapting] at @s run particle ds:adapt_cutscene ~~3.5~
execute as @s[scores={cutscene=1..80},tag=adapting] at @s run particle ds:adapt_cutscene1 ~~0.13~
execute as @s[scores={cutscene=1..80},tag=adapting] at @s run particle ds:adapt_cutscene2 ~~3.5~
execute as @s[tag=!serious,scores={cutscene=80},tag=adapting] at @s run stopsound @a music.mahoraga
execute as @s[tag=!serious,scores={cutscene=78},tag=adapting] at @s run playsound music.thunderclap1 @a[r=90] ~ ~ ~ 1000000 1 1000000
scoreboard players set @s[tag=!serious,scores={cutscene=78},tag=adapting] endurance 2080

execute as @s[scores={cutscene=21..},tag=adapting] at @s run effect @e[r=90,family=!mahoraga,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 1 10 true
execute as @s[scores={cutscene=9..},tag=adapting] at @s run scoreboard players set @e[r=90,family=!mahoraga,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 5
execute as @s[scores={cutscene=9..},tag=adapting] at @s run scoreboard players set @e[r=90,family=!mahoraga,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Camera 5
execute as @s[scores={cutscene=9..},tag=adapting] at @s run scoreboard players set @e[r=90,family=!mahoraga,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Move 5

execute as @s[scores={cutscene=20},tag=adapting] at @s run playsound music.adapt @a[r=90] ~ ~ ~ 1000000 1 1000000
execute as @s[scores={cutscene=20},tag=adapting] at @s run camerashake add @a[r=90] 3 0.2
execute as @s[scores={cutscene=20},tag=adapting] at @s run function shikigami/shikigami/mahoraga_adaption

tag @s[scores={cutscene=1..5},tag=adapting,tag=!serious] add serious
tag @s[scores={cutscene=1..5},tag=adapting,tag=adapting] remove adapting

execute as @s[scores={cutscene=80},tag=adapting] at @s run camera @a[r=90] fade time 0.25 0.1 0.25 color 0 0 0
execute as @s[scores={cutscene=80},tag=adapting] at @s run camera @a[r=90] set minecraft:free pos ~ ~8 ~ rot ~90 ~
execute as @s[scores={cutscene=79},tag=adapting] at @s run camera @a[r=90] set minecraft:free ease 3 in_sine pos ~ ~7 ~ rot ~90 ~
execute as @s[scores={cutscene=18},tag=adapting] at @s run camera @a[r=90] fade time 0.2 1 0.5 color 0 0 0
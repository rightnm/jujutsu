playanimation @s[scores={move=20}] animation.beru.speedblitz_down
execute as @s[scores={move=13..18}] at @s run tp @s ~~~
execute as @s[scores={move=1..22}] at @s run tp @s ~~~~ 0

scoreboard players set @s[scores={move=4..18}] Camera 4
scoreboard players set @s[scores={move=4..18}] Frames 4
scoreboard players set @s[scores={move=4..18}] Move 4

scoreboard players set @e[tag=takedown,r=60,c=1] Stun 25

execute as @s[scores={move=18}] at @s positioned ^^^60 run tag @e[tag=!Frames,c=1,r=59.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!bat] add takedown

execute as @s[scores={move=17..19}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=17..19}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=17..19}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=17..19}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=17..19}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2
execute as @s[scores={move=17..19}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.75
execute as @s[scores={move=17..19}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2.25

execute as @s[scores={move=16..17}] at @s positioned ^^^60 run execute as @e[c=1,tag=takedown,r=59.95] at @s run tp @s ~~~~ 0
execute as @s[scores={move=15..16}] at @s positioned ^^^60 run execute as @e[c=1,tag=takedown,r=59.95] at @s run tp @e[c=1,scores={move=15..16},r=59.95] ^^^-1 facing @s
execute as @s[scores={move=5..16}] at @s run tp @s ~~~ facing @e[tag=takedown,r=5,c=1]
execute as @s[scores={move=5..16}] at @s run tp @e[tag=takedown,r=5,c=1] ^^^0.75

execute as @s[scores={move=11}] at @s run function damages/blunt_damage


scoreboard players set @s[scores={move=11..12}] atk 2
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.2,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd

execute as @s[scores={move=11}] at @s positioned ^^^2.25 run damage @e[r=2.2,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 12

execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.2,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10

execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.2,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 8

execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.2,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 65

execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.shock @a ~~~ 10000 1.2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.6 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.3 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.75 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.35 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.65 10000
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run camerashake add @a[r=20] 4 1
execute as @s[scores={move=11}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_pount2 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_pount3 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:ground_pount4 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact1 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact2 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact3 ^^^0.25
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact5 ^^^0.25

camera @s[scores={move=8},type=player] fade time 0.15 0.45 0.25 color 0 0 0

execute as @s[scores={move=1..2}] at @s run tag @e[tag=takedown,c=1] remove takedown
execute as @s[name="SunfireBomb",scores={Deleter=21..}] at @s run tp @s ^^^ facing @e[type=ds:projectile,name=SunfireBombTRG,c=1,r=55]
execute as @s[name="SunfireBomb",scores={Deleter=21..}] at @s run tp @s ^^^2.11
execute as @s[name="SunfireBomb",scores={Deleter=21..}] at @s run tp @s ^^^2.11
execute as @s[scores={Deleter=21..}] at @s if entity @e[type=ds:projectile,name=SunfireBombTRG,r=3] run scoreboard players set @s Deleter 20
execute as @s[scores={Deleter=1..20}] at @s run kill @e[type=ds:projectile,name=SunfireBombTRG,r=55,c=1]

execute as @s[scores={Deleter=21..}] at @s  unless block ~~~ air run scoreboard players set @s Deleter 20
execute as @s[scores={Deleter=21..}] at @s if entity @e[tag=!Frames,r=3,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players set @s Deleter 20

execute as @s[scores={Deleter=3}] at @s run function damages/fire_damage
execute as @s[scores={Deleter=3}] at @s run function damages/explosion_damage


execute as @s[scores={Deleter=7..19}] at @s run camerashake add @a[r=100] 0.15 0.15 
execute as @s[scores={Deleter=19}] at @s run playsound portal.trigger @a[r=100] ~~~ 999999 5 99999
execute as @s[scores={Deleter=7..19}] at @s run particle ds:sunfirebomb_ex_charge1
execute as @s[scores={Deleter=7..19}] at @s run particle ds:sunfirebomb_ex_charge2
execute as @s[scores={Deleter=7..19}] at @s run particle ds:sunfirebomb_ex_charge3
execute as @s[scores={Deleter=7..19}] at @s run particle ds:sunfirebomb_ex_charge4
execute as @s[scores={Deleter=7..19}] at @s run particle ds:sunfirebomb_ex_charge5

execute as @s[scores={Deleter=1..5}] at @s run kill @e[type=ds:projectile,name=SunfireBombTRG,r=55]
execute as @s[scores={Deleter=5}] at @s run playsound mob.blasted3 @a[r=300] ~~~ 999999 0.8 999999
execute as @s[scores={Deleter=5}] at @s run playsound mob.blasted2 @a[r=300] ~~~ 999999 0.5 999999
execute as @s[scores={Deleter=5}] at @s run playsound mob.blasted4 @a[r=300] ~~~ 999999 1 999999
execute as @s[scores={Deleter=5}] at @s run camerashake add @a[r=300] 4 0.25 rotational
execute as @s[scores={Deleter=5}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex1
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex2
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex3
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex4
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex5
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex6
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex7
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex8
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex9
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex10
execute as @s[scores={Deleter=4}] at @s run particle ds:sunfirebomb_ex11
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~15~~ run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~-15~~ run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~-15~~15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~15~~-15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~15~~15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~-15~~-15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~~~15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~~~-15 run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] positioned ~~~ run function flames/heat15x15
execute as @s[scores={Deleter=4}] at @s  run damage @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 80 override
execute as @s[scores={Deleter=4}] at @s  run scoreboard players add @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 25
execute as @s[scores={Deleter=4}] at @s run scoreboard players add @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={Deleter=4}] at @s  run scoreboard players set @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 90
execute as @s[scores={Deleter=4}] at @s  run scoreboard players add @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 80
execute as @s[scores={Deleter=4}] at @s run summon ds:mahoraga_knockback2
execute as @s[scores={Deleter=4}] at @s run effect @e[tag=!Frames,r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 20 true
execute as @s[scores={Deleter=4}] at @s if entity @e[tag=griefable] run effect @e[r=25,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 20 true

execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~~5
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~-5~~
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~5~~
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~~-5
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~~
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~~
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~-5~
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion ~~5~
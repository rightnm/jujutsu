playanimation @s[scores={move=30}] animation.hellfire
tag @s[scores={move=1..2},tag=form4c] remove form4c

tag @s[scores={move=28..,Stun=1..},tag=form4c] remove form4c
playanimation @s[scores={move=28..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=28..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 14
scoreboard players set @s[scores={move=1..15}] Camera 14
scoreboard players set @s[scores={move=1..16}] Frames 4

execute as @s[scores={move=14}] at @s run function damages/explosion_damage
execute as @s[scores={move=14}] at @s run function damages/fire_damage

execute as @s[scores={move=27..28}] at @s run particle ds:dirt0
execute as @s[scores={move=28}] at @s run particle ds:rubble3
execute as @s[scores={move=28}] at @s run particle ds:crater
execute as @s[scores={move=28}] at @s run particle ds:leap
execute as @s[scores={move=28}] at @s run playsound random.explode @a[r=30] ~~~ 99999 0.8 99999
execute as @s[scores={move=28}] at @s run tp @s ~~35~
execute as @s[scores={move=28}] at @s run effect @s slow_falling 1 1 true

scoreboard players set @s[scores={move=22..24}] move 18

execute as @s[scores={move=17}] at @s run particle ds:fire_downslam2
execute as @s[scores={move=17}] at @s run particle ds:fire_downslam3
execute as @s[scores={move=17}] at @s run particle ds:fire_downslam4
execute as @s[scores={move=17}] at @s run particle ds:fire_downslam5
execute as @s[scores={move=17}] at @s run particle ds:fire_downslam6
execute as @s[scores={move=17}] at @s run particle ds:fire_downslam7
execute as @s[scores={move=17}] at @s run particle ds:flame_stars
execute as @s[scores={move=17}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=17}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 1.35 9999


execute as @s[scores={move=13..15}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.45 9999


execute as @s[scores={move=17}] at @s run tp @s @s
execute as @s[scores={move=1..10}] at @s run tp @s ~~~
execute as @s[scores={move=15..17}] at @s run tp @s ~~~ facing ^^-3^10

execute as @s[scores={move=10..12}] at @s if block ~~-1~ air run tp @s ~~-1 ~


execute as @s[scores={move=10..12}] at @s if block ~~-1~ air run tp @s ~~-1 ~
execute as @s[scores={move=10..12}] at @s if block ~~-0.5~ air run tp @s ~~-0.5 ~
execute as @s[scores={move=10..12}] at @s if block ~~-0.25~ air run tp @s ~~-0.25 ~
execute as @s[scores={move=10..12}] at @s if block ~~-0.1~ air run tp @s ~~-0.1 ~
execute as @s[scores={move=13..15},type=player] at @s if block ~~-1~ air if block ~~-2~ air run camera @s set minecraft:free pos ^15^3^-20 facing ^^^4
execute as @s[scores={move=1..10},type=player] at @s if block ~~-1~ air if block ~~-2~ air run camera @s clear
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact1
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact2
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact3
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact4
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact5
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact6
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:blazing_impact7
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:fire_downslam8
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:impact
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air if block ~~-3~ air run tp @s ^^^3.5
execute as @s[scores={move=13..15}] at @s if block ~~-1~ air if block ~~-2~ air run scoreboard players set @s move 14
execute as @s[scores={move=13..15}] at @s unless blocks ~~-4~ ~~~ ~~~ all run scoreboard players set @s move 11
playanimation @s[scores={move=13..15}] animation.hellfire2


execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex1 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex1 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex2 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex2 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex3 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex3 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex4 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex4 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex5 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex5 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fireball_l_ex6 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:fire_downslam9
execute as @s[scores={move=10}] at @s run particle ds:flame_repulse_ex1 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:flame_repulse_ex2 ~~1~
execute as @s[scores={move=10}] at @s run playsound mob.burst @a[r=70] ~~~ 99999 1.25 99999
execute as @s[scores={move=10}] at @s run playsound random.explode @a[r=70] ~~~ 99999 0.5 99999
execute as @s[scores={move=10}] at @s run playsound random.explode @a[r=70] ~~~ 99999 0.25 99999
execute as @s[scores={move=10}] at @s run playsound mob.burn @a[r=70] ~~~ 99999 0.85 99999
execute as @s[scores={move=8..10}] at @s run playsound mob.blaze.shoot @a[r=70] ~~~ 99999 0.25 99999
execute as @s[scores={move=5..10}] at @s run camerashake add @a[r=40] 4 0.15 rotational
execute as @s[scores={move=10}] at @s run camera @a[r=15] fade time 0 0 0.25 color 255 255 255

execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=10}] at @s  run damage @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 50 override
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 50
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 6
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 40
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 90
execute as @s[scores={move=9}] at @s  if entity @e[tag=griefable] run effect @e[r=15,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={move=9}] at @s  if entity @e[tag=griefable] run summon ds:energy_explosion
execute as @s[scores={move=9}] at @s  if entity @e[tag=griefable] run function flames/heat15x15
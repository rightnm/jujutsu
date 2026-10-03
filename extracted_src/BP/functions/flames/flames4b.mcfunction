playanimation @s[scores={move=45}] animation.flame_repulsion
tag @s[scores={move=1..2},tag=form4b] remove form4b

tag @s[scores={move=16..,Stun=1..},tag=form4b] remove form4b
playanimation @s[scores={move=16..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 24
scoreboard players set @s[scores={move=1..}] Camera 24

scoreboard players set @s[scores={move=14..16}] atk 2
scoreboard players set @s[scores={move=14..16}] Frames 4

execute as @s[scores={move=14}] at @s run function damages/fire_damage
execute as @s[scores={move=14}] at @s run function damages/explosion_damage

execute as @s[scores={move=41..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=1..40}] at @s run tp @s ~~~

execute as @s[scores={move=40}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1.5
execute as @s[scores={move=40}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 0.2 0.5
execute as @s[scores={move=40}] at @s run particle ds:flame_stars1 ~~1~

execute as @s[scores={move=30}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1.5
execute as @s[scores={move=30}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 0.2 0.8
execute as @s[scores={move=30}] at @s run particle ds:flame_stars1 ~~1~

execute as @s[scores={move=24}] at @s run playsound mob.burn @a[r=20] ~~~ 0.2 1.5
execute as @s[scores={move=24}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 0.2 1
execute as @s[scores={move=24}] at @s run particle ds:flame_stars1 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:fire_downslam6

execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse1 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse2 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse3 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse4 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse5 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse6 ~~1~
execute as @s[scores={move=20..40}] at @s run particle ds:flame_repulse7 ~~1~
execute as @s[scores={move=20..40}] at @s run camerashake add @a[r=20] 0.1 0.15

execute as @s[scores={move=20..25}] at @s run particle ds:flashfire_aura1 ~~1~
execute as @s[scores={move=20..25}] at @s run particle ds:flashfire_aura2 ~~1~
execute as @s[scores={move=15..19}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=15..19}] at @s run camerashake add @a[r=20] 0.25 0.15
execute as @s[scores={move=17..19}] at @s run playsound firework.blast @a[r=20] ~~~ 99999 1.25 99999
execute as @s[scores={move=15..16}] at @s run playsound firework.blast @a[r=20] ~~~ 99999 0.8 99999

execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex1 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex1 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex2 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex2 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex3 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex3 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex4 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex4 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex5 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex5 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:fireball_l_ex6 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:flame_repulse_ex1 ~~1~
execute as @s[scores={move=14}] at @s run particle ds:flame_repulse_ex2 ~~1~
execute as @s[scores={move=14}] at @s run playsound mob.shock1 @a[r=70] ~~~ 99999 1.95 99999
execute as @s[scores={move=14}] at @s run playsound random.explode @a[r=70] ~~~ 99999 0.5 99999
execute as @s[scores={move=14}] at @s run playsound mob.burn @a[r=70] ~~~ 99999 0.85 99999
execute as @s[scores={move=10..14}] at @s run playsound mob.blaze.shoot @a[r=70] ~~~ 99999 0.45 99999
execute as @s[scores={move=10..14}] at @s run camerashake add @a[r=40] 4 0.15 rotational
execute as @s[scores={move=14}] at @s run camera @a[r=15] fade time 0 0 0.25 color 255 255 255

execute as @s[scores={move=14..16}] at @s  run execute as  @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[c=1,scores={move=14..16}]

execute as @s[scores={move=14}] at @s  run execute as @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function flames/fire_hit
execute as @s[scores={move=14}] at @s  run damage @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 25 override
execute as @s[scores={move=14}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 25
execute as @s[scores={move=14}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 6
execute as @s[scores={move=14}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 33
execute as @s[scores={move=14}] at @s  run scoreboard players add @e[tag=!Frames,r=12,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Flourish 13
execute as @s[scores={move=13}] at @s  if entity @e[tag=griefable] run effect @e[r=15,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 10 true
execute as @s[scores={move=13}] at @s  if entity @e[tag=griefable] run summon ds:energy_explosion
execute as @s[scores={move=13}] at @s  if entity @e[tag=griefable] run function flames/heat15x15
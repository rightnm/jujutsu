playanimation @s[scores={move=30}] animation.flashfire

tag @s[scores={move=1..2},tag=form1d] remove form1d

tag @s[scores={move=10..30,Stun=1..},tag=form1d] remove form1d
playanimation @s[scores={move=10..30,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=10..30,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..}] Move 4

scoreboard players set @s[scores={move=10..11}] atk 2

execute as @s[scores={move=10}] at @s run function damages/blunt_damage
execute as @s[scores={move=10}] at @s run function damages/fire_damage
execute as @s[scores={move=1..11}] at @s run tp @s ~~~

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=6}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 0 20 true


execute as @s[scores={move=10..14}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit1
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit2
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_hit4
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact1
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact2
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run particle ds:fire_impact3
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.2 9999


execute as @s[scores={move=9..10}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,type=!ds:ember_insect,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add flashfire
execute as @s[scores={move=9..10}] at @s positioned ^^^2.5 run playanimation @e[tag=!Frames,type=!ds:ember_insect,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] animation.flashfire2b
execute as @s[scores={move=9..10}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,type=!ds:ember_insect,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run playanimation @s animation.flashfire2
execute as @s[scores={move=9..10}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,type=!ds:ember_insect,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players set @s move 10001

execute as @s[scores={move=4..7}] at @s positioned ^^^2.5 unless entity @e[tag=!Frames,type=!ds:ember_insect,r=2.45,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players set @s move 3

execute as @s[scores={move=9000..}] at @s run scoreboard players set @a[r=10] Camera 6

scoreboard players set @s[scores={move=9000..}] infinity 6
scoreboard players set @s[scores={move=9000..}] Move 6
scoreboard players set @s[scores={move=9000..}] Stun 6

scoreboard players set @e[tag=flashfire,c=1,r=10] infinity 6
scoreboard players set @e[tag=flashfire,c=1,r=10] Move 6
scoreboard players set @e[tag=flashfire,c=1,r=10] Stun 6
execute as @s[scores={move=9996..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9996..9998}] at @s run tp @e[tag=flashfire,c=1,r=10] ^^^7 facing @s
execute as @s[scores={move=9998..}] at @s run camera @a[r=10] fade time 0 0.5 0.5 color 225 100 0


execute as @s[scores={move=9996..}] at @s anchored eyes run camera @a[r=10] set minecraft:free pos ^1.5^^1 facing ~~~
execute as @s[scores={move=9994}] at @s anchored eyes run camera @a[r=10] set minecraft:free ease 1 in_sine pos ^2.5^^ facing ~~~

execute as @s[scores={move=9950}] at @s run camera @a[r=12] fade time 0.2 0.5 0.2 color 255 255 255
execute as @s[scores={move=9940}] at @s anchored eyes run camera @a[r=10] set minecraft:free pos ^8^1^4 facing ^^^-1
execute as @s[scores={move=9940}] at @s anchored eyes run camera @a[r=10] set minecraft:free ease 1 in_out_circ pos ^9^1.5^4.5 facing ^^^-1

execute as @s[scores={move=9955..9957}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.6 9999
execute as @s[scores={move=9955..9957}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.6 9999
execute as @s[scores={move=9957}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9956}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9955}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9954}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9953}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9952}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9951}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9950}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9949}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9948}] at @s run title @a[r=10,tag=!impactframesoff] title §l

execute as @s[scores={move=9936}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9935}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9934}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9933}] at @s run title @a[r=10,tag=!impactframesoff] title §l

execute as @s[scores={move=9834}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9833}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9832}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9831}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9830}] at @s run title @a[r=10,tag=!impactframesoff] title §l

execute as @s[scores={move=9822}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9821}] at @s run title @a[r=10,tag=!impactframesoff] title 
execute as @s[scores={move=9820}] at @s run title @a[r=10,tag=!impactframesoff] title §l

execute as @s[scores={move=9795}] at @s run camera @a[r=10] fade time 0.4 0.5 0.5 color 255 255 255


execute as @s[scores={move=9941..}] at @s run particle ds:flashfire_cutscene ~~1~
execute as @s[scores={move=9941..}] at @s run particle ds:flashfire_cutscene2 ~~~
execute as @s[scores={move=9851..}] at @s run particle ds:flashfire_aura1 ~~1~
execute as @s[scores={move=9901..}] at @s run particle ds:flashfire_aura2 ~~1~
execute as @s[scores={move=9931..}] at @s run particle ds:flashfire_aura3 ~~1~
execute as @s[scores={move=9801..}] at @s run playsound mob.burn @a[r=50] ~~~ 0.1 0.8
execute as @s[scores={move=9800..}] at @s run camerashake add @a[r=50] 0.08 0.08 

execute as @s[scores={move=9944}] at @s run playsound mob.blitz1 @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=9938}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=9841..9935}] at @s run playsound mob.burn @a[r=50] ~~~ 0.1 2
execute as @s[scores={move=9934..9935}] at @s run camerashake add @a[r=50] 1 0.25 rotational 
execute as @s[scores={move=9930..9935}] at @s run particle ds:flame_stars ~~1~

execute as @s[scores={move=9908}] at @s run playsound music.bass3 @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=9908}] at @s run camerashake add @a[r=50] 0.2 0.15 rotational
execute as @s[scores={move=9905..9908}] at @s run particle ds:flame_stars ~~1~

execute as @s[scores={move=9847..9850}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=9837..9842}] at @s run particle ds:flame_stars ~~1~
execute as @s[scores={move=9850}] at @s run playsound music.bassboost @a[r=50] ~~~ 9999 0.55 9999

execute as @s[scores={move=9910}] at @s run camera @a[r=12] fade time 0.2 0.1 0.1 color 255 255 255
execute as @s[scores={move=9905}] at @s anchored eyes run camera @a[r=10] set minecraft:free pos ^0.65^-0.6^-0.6 facing ^-0.7^^5
execute as @s[scores={move=9904}] at @s anchored eyes run camera @a[r=10] set minecraft:free ease 2 in_sine pos ^0.8^-0.6^-0.7 facing ^-1^0.5^5
execute as @s[scores={move=9883}] at @s anchored eyes run camera @a[r=10] set minecraft:free ease 1.75 in_out_circ pos ^1^0.25^0.75 facing ^-3^-0.5^-0.25

execute as @s[scores={move=9801..9840}] at @s run playsound mob.blaze.shoot @a[r=10] ~~~ 9999 0.25 99999

execute as @s[scores={move=9795..9835}] at @s run camerashake add @a[r=40] 0.1 0.1 rotational
execute as @s[scores={move=9800..9842}] at @s anchored eyes run camera @a[r=10] set minecraft:free pos ^2.3^1^-4 facing ^^-0.5^15

execute as @s[scores={move=9795..9835}] at @s if entity @e[tag=griefable] run function flames/heat
execute as @s[scores={move=9795..9835}] at @s if entity @e[tag=griefable] positioned ^^^7 run function flames/heat
execute as @s[scores={move=9795..9835}] at @s run damage @e[tag=flashfire,c=1,r=10] 2 override
execute as @s[scores={move=9795..9835}] at @s run scoreboard players add @e[tag=flashfire,c=1,r=10] onfire 1
execute as @s[scores={move=9795..9835}] at @s run scoreboard players add @e[tag=flashfire,c=1,r=10] Evade 1
execute as @s[scores={move=9795..9835}] at @s run scoreboard players set @e[tag=flashfire,c=1,r=10] Hit 3
execute as @s[scores={move=9795..9835}] at @s run playanimation @e[tag=flashfire,c=1,r=10] animation.stunned i 0.05
execute as @s[scores={move=9797..9798}] at @s run scoreboard players set @e[tag=flashfire,c=1,r=10] knockdown 95
execute as @s[scores={move=9797..9798}] at @s run effect @e[tag=flashfire,c=1,r=10] levitation 1 22 true
execute as @s[scores={move=9792}] at @s run  playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=9792}] at @s run  playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=9797..9798}] at @s run particle ds:flame_stars ~~1~ 
execute as @s[scores={move=9797..9798}] at @s run summon ds:red_reverse ^^^4
execute as @s[scores={move=9780..9798}] at @s run tp @s @s

execute as @s[scores={move=9780..9785}] at @s run tag @e[tag=flashfire,r=30,c=1] remove flashfire
scoreboard players set @s[scores={move=9775..9785}] move 3
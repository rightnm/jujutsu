particle ds:fire_explode1 ~~~
particle ds:fire_explode2 ~~~
particle ds:fire_explode3 ~~~
particle ds:fire_explode4 ~~~
particle ds:fire_explode5 ~~~
particle ds:fire_downslam4 ~~~
particle ds:fire_downslam6 ~~~
particle ds:fire_downslam5 ~~~
particle ds:firefist2 ~~~
playsound random.explode @a[r=20] ~~~ 99999 0.5 99999
playsound random.explode @a[r=20] ~~~ 99999 0.75 99999
playsound mob.burn @a[r=20] ~~~ 99999 1.15 99999
playsound mob.blaze.shoot @a[r=20] ~~~ 99999 1.5 99999
summon ds:knockback
playsound mob.blaze.shoot @a[r=20] ~~~ 99999 1 99999
summon ds:knockback
damage @e[tag=!Frames,tag=!flames,r=5,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 3 override
camerashake add @a[r=20] 2 0.15
function damages/fire_damage
function damages/explosion_damage
scoreboard players add @e[tag=!Frames,tag=!flames,r=5,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 6
scoreboard players add @e[tag=!Frames,tag=!flames,r=5,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 3
scoreboard players add @e[tag=!Frames,tag=!flames,r=5,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 7
scoreboard players add @e[tag=!Frames,tag=!flames,r=5,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 2 

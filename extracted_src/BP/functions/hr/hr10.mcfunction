playanimation @s[scores={move=65}] animation.final_hunt
tag @s[scores={move=1..2},tag=form10] remove form10

tag @s[scores={move=55..,Stun=1..},tag=form10] remove form10
playanimation @s[scores={move=55..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=55..,Stun=1..}] move 0

scoreboard players set @s[scores={move=6..55}] Frames 4
scoreboard players set @s[scores={move=6..55}] Move 4
scoreboard players set @s[scores={move=6..55}] Camera 4

execute as @s[scores={move=60..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=1..2}] at @s run tag @e[tag=finalhunt,r=40,c=1] remove finalhunt

execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999



execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=35}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3

execute as @s[scores={move=55..56}] at @s positioned ^^^2 run tp @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] ^^^-0.5 facing @s
execute as @s[scores={move=55}] at @s positioned ^^^2 run function damages/blunt_damage
execute as @s[scores={move=55}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 5 override
execute as @s[scores={move=55}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 205 
execute as @s[scores={move=55}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=55}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 5
execute as @s[scores={move=55}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=55}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] add finalhunt
execute as @s[scores={move=55}] at @s positioned ^^^2 run effect @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 40 true
execute as @s[scores={move=55}] at @s positioned ^^^2 run effect @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slow_falling 2 1 true
execute as @s[scores={move=35..50}] at @s positioned ^^^2 run effect @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 0 20 true

execute as @s[scores={move=55}] at @s positioned ^^^2 unless entity @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=55}] at @s positioned ^^^2 unless entity @e[tag=!Frames,r=1.95,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] run scoreboard players set @s move 2
execute as @s[scores={move=36..50}] at @s unless entity @e[tag=finalhunt,r=40,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=36..50}] at @s unless entity @e[tag=finalhunt,r=40,c=1] run scoreboard players set @s move 2

execute as @s[scores={move=35}] at @s run particle ds:pushed_up1 ~~~
execute as @s[scores={move=35}] at @s run particle ds:pushed_up2 ~~~

execute as @s[scores={move=16..35}] at @s run execute as @e[tag=finalhunt,r=40,c=1] at @s run tp @s @s
execute as @s[scores={move=16..33}] at @s run execute as @e[tag=finalhunt,r=40,c=1] at @s run tp @e[scores={move=16..33,Frames=4},r=40,c=1] ^^0.15^0.75 facing @s
execute as @s[scores={move=1..10},type=player] at @s run tp @s ~~~
execute as @s[scores={move=1..10},type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=15}] at @s positioned ^^^2 run function damages/blunt_damage
execute as @s[scores={move=15}] at @s positioned ^^^2 run damage @e[tag=finalhunt,r=5,c=1] 20 override
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players set @e[tag=finalhunt,r=5,c=1] Flourish 30
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players set @e[tag=finalhunt,r=5,c=1] Hit 5
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=finalhunt,r=5,c=1] Evade 5
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players operation @e[tag=finalhunt,r=5,c=1] damage += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2 run tag @e[tag=finalhunt,r=8,c=1] add hardknockback
execute as @s[scores={move=14}] at @s positioned ^^^2 run tag @e[tag=finalhunt,r=8,c=1] remove finalhunt

execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999

execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam1
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam2
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam4
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:leap
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run camerashake add @a[r=20] 4 0.15
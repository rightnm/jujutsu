
execute as @s[scores={move=30..31}] run playanimation @s animation.todo.clap4

tag @s[scores={move=22..},tag=itemUse:ds:boogie_woogie1] add feinted

execute as @s[scores={move=21}] at @s run playsound mob.clap @a[r=100] ~~1~ 999999 1 999999
execute as @s[scores={move=21},tag=feinted] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 3 99999
scoreboard players set @s[scores={move=20..21},tag=feinted] move 2

tag @s[scores={move=20..21}] add swapper
tag @s[scores={move=20..21}] add swapkick

execute as @s[scores={move=20}] at @s positioned ^^^50 run execute as @e[scores={BoogieTargetID=1..},r=49] at @s if score @s BoogieTargetID = @e[tag=swapper,c=1] BoogieSelfID as @e[tag=swapper,c=1] at @s positioned ^^^50 run function boogie_woogie/swap
execute as @s[scores={move=20},tag=!just_swapped] at @s positioned ^^^5 run function boogie_woogie/swap_notarget

tag @s[scores={move=1..2}] remove swapkick
tag @s[scores={move=1..2}] remove feinted
tag @s[scores={move=1..2}] remove just_swapped
tag @s[scores={move=1..2}] remove form3



playanimation @s[scores={move=998..1001}] animation.todo.clap4_kick

execute as @s[scores={move=998..}] at @s run scriptevent ds:knockback 1
scoreboard players set @s[scores={move=995..996}] atk 2

execute as @s[scores={move=995..997}] at @s positioned ^^^4 run execute as @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[tag=swapkick,c=1]


execute as @s[scores={move=995}] at @s positioned ^^^4 run scoreboard players operation @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=995}] at @s positioned ^^^4 run damage @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 20 override
execute as @s[scores={move=995}] at @s positioned ^^^4 run scoreboard players set @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 10
execute as @s[scores={move=995}] at @s positioned ^^^4 run scoreboard players add @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 8
execute as @s[scores={move=995}] at @s positioned ^^^4 run scoreboard players set @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Flourish 12
execute as @s[scores={move=995}] at @s positioned ^^^4 run execute as @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.shock1 @a ~~~ 10000 1.2 10000
execute as @s[scores={move=995}] at @s positioned ^^^4 run playsound mob.wither.shoot @a ~~~ 10000 1.2 10000
execute as @s[scores={move=995}] at @s positioned ^^^4 run execute as @e[r=3.94,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.blood1 @a ~~~ 10000 0.85 10000
execute as @s[scores={move=995}] at @s positioned ^^^4 run camerashake add @a[r=20] 4 1
execute as @s[scores={move=995}] at @s run particle ds:ground_slam1 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:ground_slam2 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:ground_slam3 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:ground_slam4 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:large_impact1 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:heavy_impact2 ^^1^0.25
execute as @s[scores={move=995}] at @s run particle ds:large_impact2 ^^1^0.25

scoreboard players set @s[scores={move=900..991}] move 2



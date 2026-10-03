playanimation @s[scores={move=51}] animation.rock_kick
tag @s[scores={move=1..2},tag=form11] remove form11

tag @s[scores={move=49..,Stun=1..},tag=form11] remove form11
playanimation @s[scores={move=49..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=49..,Stun=1..}] move 0

scoreboard players set @s[scores={move=15..49}] Frames 4
scoreboard players set @s[scores={move=35..}] Move 4
scoreboard players set @s[scores={move=45..}] Camera 4

execute as @s[scores={move=47..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=46}] at @s if block ~~-0.25~ air run playanimation @s animation.cancel
execute as @s[scores={move=46}] at @s if block ~~-0.25~ air run scoreboard players set @s move 2

execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.46 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air if block ^^^1.5 air positioned ^^^1.5 run summon ds:rocktoss "a rock"
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air unless block ^^^1.5 air if block ^^^1 air positioned ^^^1 run summon ds:rocktoss "a rock"
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air unless block ^^^1.5 air unless block ^^^1 air positioned ^^^0.5 run summon ds:rocktoss "a rock"
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air if block ^^^1.5 air run tp @e[type=ds:rocktoss,name="a rock",r=5,c=1] ^^^1.5 facing ^^^25
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air unless block ^^^1.5 air if block ^^^1 air run tp @e[type=ds:rocktoss,name="a rock",r=5,c=1] ^^^1 facing ^^^25
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air unless block ^^^1.5 air unless block ^^^1 air run tp @e[type=ds:rocktoss,name="a rock",r=5,c=1] ^^^0.5 facing ^^^25
execute as @s[scores={move=45..46}] at @s unless block ~~-0.25~ air positioned ^^^1 run scoreboard players set @e[type=ds:rocktoss,name="a rock",r=5,c=1] Deleter 45

execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound random.explode @a[r=100] ~~~ 99999 1.6 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound random.explode @a[r=100] ~~~ 99999 1.45 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact1
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact2
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact3
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact5
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run camerashake add @a[r=10] 3 0.25


execute as @s[scores={move=36..40}] at @s if block ^^1^1.5 air run tp @e[type=ds:rocktoss,name="a rock",r=5,c=1] ^^1^1.5 facing ^^^25

execute as @s[scores={move=36}] at @s positioned ^ ^5 ^40 run summon ds:projectile "ARockTRG"
execute as @s[scores={move=35..36}] at @s positioned ^ ^5 ^40 run scoreboard players set @e[type=ds:projectile,name=ARockTRG,r=5,c=1] Deleter 35
execute as @s[scores={move=..36}] at @s positioned ^ ^5 ^40 run execute as @e[type=ds:projectile,name=ARockTRG,r=60,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=..36}] at @s positioned ^ ^5 ^40 run execute as @e[type=ds:projectile,name=ARockTRG,r=60,c=1] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=40..}] at @s run tp @s ~~0.15~
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=5..}] at @s run tp @s ^^^3 facing @e[type=ds:projectile,name=ARockTRG,r=100,c=1]
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=1..4}] at @s run tp @s ~~~
effect @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=1..2}] invisibility 1 10 true
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=1..2}] at @s run tp @s ~~-200~

execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=5..}] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=5] run scoreboard players set @s Deleter 4
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run summon ds:lapse_explode
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run kill @e[type=item,r=10]
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:slam_dust2
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:slam_dust2
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_pound2
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_pound3
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_pound4
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_pound4b
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_slam1
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_slam2
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:ground_slam3
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:dirt0
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:dirt1
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:dirt2
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1,scores={Deleter=4}] at @s run particle ds:dirt3

execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] run damage @e[tag=!Frames,r=2.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 8 override entity @s
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] run scoreboard players add @e[tag=!Frames,r=2.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 8
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] run scoreboard players set @e[tag=!Frames,r=2.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] run scoreboard players set @e[tag=!Frames,r=2.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 4
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] if entity @e[tag=!Frames,r=2.5,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run summon ds:knockback
execute as @e[type=ds:rocktoss,name="a rock",r=100,c=1] at @s if entity @e[type=ds:projectile,name=ARockTRG,r=100,c=1] run particle ds:ground_slam2
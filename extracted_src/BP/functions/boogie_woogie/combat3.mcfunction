playanimation @s[scores={move=35..36}] animation.todo.divebomb

scoreboard players set @s[scores={move=30..}] Move 25

execute as @s[scores={move=28..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=28..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=28..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=28..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~

playanimation @s[scores={move=30..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=30..,Stun=1..}] move 3

tag @s[scores={move=1..3}] remove wep3


execute as @s[scores={move=27}] at @s run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=27}] at @s run playsound mob.wither.break_block @a[r=30] ~~~ 99999 1 99999
execute as @s[scores={move=27}] at @s run playsound random.explode @a[r=30] ~~~ 99999 1 99999
execute as @s[scores={move=27}] at @s run playsound mob.wither.shoot @a[r=30] ~~~ 99999 2 99999
execute as @s[scores={move=27}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=27}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=27}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=27}] at @s run particle ds:leap ~~~
execute as @s[scores={move=27}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~~~
execute as @s[scores={move=27}] at @s unless block ~~-0.25~ air run particle ds:ground_pound1 ~~~
execute as @s[scores={move=27}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=27}] at @s run particle ds:ground_pound4 ~~~
execute as @s[scores={move=27}] at @s run scriptevent ds:leapup

execute as @s[scores={move=15..20}] at @s if block ~~-0.5~ air run scriptevent ds:downfall
execute as @s[scores={move=15..20}] at @s if block ~~-0.5~ air run particle ds:dirt03

execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=13..18}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=13..18}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=13..18}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~
execute as @s[scores={move=13..18}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=13..18}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=13..18}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~

scoreboard players set @s[scores={move=15..17}] Frames 7


scoreboard players random @s[scores={move=21},tag=!heavenlyrestriction] blackflashchance 1 150
scoreboard players set @s[scores={move=21},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7


execute as @s[scores={move=15}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s run particle ds:ground_slam1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2
execute as @s[scores={move=15}] at @s run particle ds:ground_pound1b
execute as @s[scores={move=15}] at @s run particle ds:ground_pound2
execute as @s[scores={move=15}] at @s run particle ds:ground_pound3
execute as @s[scores={move=15}] at @s run particle ds:ground_pound4b
execute as @s[scores={move=15}] at @s run particle ds:large_impact1
execute as @s[scores={move=15}] at @s run particle ds:large_impact2
execute as @s[scores={move=15}] at @s run particle ds:rubble3
execute as @s[scores={move=15..17}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=17}] at @s run playsound mob.burst @a[r=100] ~~-4~ 99999 2 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=150] 4 0.25
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 25
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 60
execute as @s[scores={move=15}] at @s run damage @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 20 override
execute as @s[scores={move=15}] at @s run scoreboard players operation @e[tag=!Frames,r=6,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=15}] at @s run function damages/blunt_damage


playanimation @s[scores={move=15}] animation.absorption.ab2

tag @s[scores={move=1..2},tag=form2] remove form2

scoreboard players set @s[scores={move=1..11}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..7}] Camera 4
scoreboard players set @e[tag=manji,r=7,c=1] Camera 4
scoreboard players set @e[tag=manji,r=7,c=1] Move 4
scoreboard players set @e[tag=manji,r=7,c=1] Stun 5

execute as @s[scores={move=14}] at @s run playsound mob.electricity @a[r=10] ~~~ 1 1.5
execute as @s[scores={move=10}] at @s run particle ds:absorption2

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=7.5,tag=!Frames,scores={punch=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] atk 2

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run tag @e[r=7.5,tag=!Frames,scores={atk=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add manji

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=7.5,tag=!Frames,scores={atk=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 15

execute as @s[scores={move=8..10}] at @s positioned ^^^2 run scoreboard players set @e[r=7.5,tag=!Frames,scores={atk=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] move 6

execute as @s[scores={move=6..7}] at @s positioned ^^^2 unless entity @e[tag=manji,r=7.5] run function cancel_attack_fully

playanimation @s[scores={move=5}] animation.absorption.ab2b

scoreboard players set @s[scores={move=4..5}] atk 2

execute as @s[scores={move=2..6}] at @s run tp @s ~~~ facing @e[tag=manji,c=1]

execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:absorption_ex
execute as @s[scores={move=4}] at @s positioned ^^1^0.5 run particle ds:invert
execute as @s[scores={move=4}] at @s positioned ^^^0.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=1..4}] at @s positioned ^^^0.5 run playsound mob.electricity @a[r=50] ~~~ 9999 1.25 9999

execute as @s[scores={move=1..4}] at @s positioned ^^^7.5 run damage @e[r=7.4,c=1] 5 override
execute as @s[scores={move=4}] at @s positioned ^^^7.5 run scoreboard players operation @e[r=7.4,c=1] damage += @s absorption
execute as @s[scores={move=4}] at @s positioned ^^^7.5 run scoreboard players operation @e[r=7.4,c=1] damage /= three endurance
execute as @s[scores={move=4}] at @s positioned ^^^7.5 run scoreboard players add @e[r=7.4,c=1] Evade 25
execute as @s[scores={move=4}] at @s run  function damages/electric_damage
execute as @s[scores={move=4}] at @s positioned ^^^7.5 run scoreboard players set @e[r=7.4,c=1] knockdown 95

execute as @s[scores={move=3}] at @s run summon ds:red_reverse
execute as @s[scores={move=3}] at @s positioned ^^^7.5 run effect @e[r=7.4,c=1] levitation 1 20

scoreboard players remove @s[scores={move=1..5,absorption=1..}] absorption 1

execute as @s[scores={move=1..3}] at @s run tag @e[c=1,tag=manji] remove manji



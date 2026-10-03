playanimation @s[scores={move=35}] animation.gavel3.ab3

effect @s[scores={move=21..}] slowness 1 3 true
scoreboard players set @s[scores={move=30..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep3] remove wep3


scoreboard players set @s[scores={move=15..29}] Frames 4
scoreboard players set @s[scores={move=1..16}] Camera 8
scoreboard players set @s[scores={move=1..}] Move 8
scoreboard players set @s[scores={move=1..}] AfterAnim 8

scoreboard players random @s[scores={move=24}] blackflashchance 1 269
scoreboard players set @s[scores={move=24},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=14..16}] at @s run tp @s @s
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:crater2
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:leap2
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:dirt0
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:large_impact1
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:large_impact2
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:rubble3
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:judge_slam1
execute as @s[scores={move=16}] at @s positioned ^^^2 run particle ds:rising_strike2
execute as @s[scores={move=16}] at @s positioned ^^^1 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=23}] at @s positioned ^^1^1 run playsound mob.heavy_swing @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=16}] at @s positioned ^^1^2 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=16}] at @s positioned ^^1^2 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=16}] at @s positioned ^^1^2 run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=16}] at @s positioned ^^1^2 run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=16}] at @s positioned ^^1^2 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=16}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 20 override
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 20
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] knockdown 90
execute as @s[scores={move=16}] at @s run  function damages/blunt_damage


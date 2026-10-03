playanimation @s[scores={move=35}] animation.gavel3.ab1

effect @s[scores={move=21..}] slowness 1 3 true
scoreboard players set @s[scores={move=30..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep1] remove wep1


scoreboard players set @s[scores={move=15..19}] Frames 4
scoreboard players set @s[scores={move=1..16}] Camera 13
scoreboard players set @s[scores={move=1..16}] Move 13
scoreboard players set @s[scores={move=1..16}] AfterAnim 13

scoreboard players random @s[scores={move=23}] blackflashchance 1 269
scoreboard players set @s[scores={move=23},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=16..18}] at @s positioned ^^^3 run execute as @e[r=2.95,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run tp @s ~~~ facing @e[scores={move=16..18},c=1,r=3]
execute as @s[scores={move=16}] at @s positioned ^^1^1 run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:large_impact1  ~~1~
execute as @s[scores={move=16}] at @s positioned ^^1^2 run particle ds:large_impact2
execute as @s[scores={move=16}] at @s positioned ^^1^2 run particle ds:heavy_impact5
execute as @s[scores={move=16}] at @s positioned ^^1^1 run particle ds:ground_slam3 ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^1 run particle ds:rising_strike2 ~~~
execute as @s[scores={move=16}] at @s positioned ^^^1 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=24}] at @s positioned ^^1^1 run playsound mob.heavy_swing @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=16}] at @s positioned ^^1^3 run execute as @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=16}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 16 override
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 16
execute as @s[scores={move=16}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Flourish 15
execute as @s[scores={move=16}] at @s run  function damages/blunt_damage


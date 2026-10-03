playanimation @s[scores={move=19}] animation.gavel2.ab2

scoreboard players set @s[scores={move=17..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep2] remove wep2

scoreboard players set @s[scores={move=10..16}] Frames 4
scoreboard players set @s[scores={move=10..13}] Camera 5

scoreboard players random @s[scores={move=14}] blackflashchance 1 269
scoreboard players set @s[scores={move=14},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=9..12}] at @s positioned ^^^2 run tp @e[r=1.95,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] ^^^-1 facing @s
execute as @s[scores={move=9..12}] at @s run tp @s @s
execute as @s[scores={move=9}] at @s positioned ^^1^1 run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:parry1 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:parry2 ~~~
execute as @s[scores={move=9}] at @s positioned ^^1^1 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^1 run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=9}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=9}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=9}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=9}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=9}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=9}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 7 override
execute as @s[scores={move=9}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=9}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 7
execute as @s[scores={move=9}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Flourish 5
execute as @s[scores={move=9}] at @s run  function damages/blunt_damage


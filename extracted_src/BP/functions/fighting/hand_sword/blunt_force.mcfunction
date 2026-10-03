playanimation @s[scores={move=15}] animation.hand_sword.ab2

scoreboard players set @s[scores={move=12..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep2] remove wep2
execute as @s[scores={move=11..14}] at @s run playsound mob.witch.throw @a ~~~ 1 0.45


execute as @s[scores={move=11..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=11..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=11..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=11..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~


scoreboard players random @s[scores={move=14}] blackflashchance 1 269
scoreboard players set @s[scores={move=14},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=11..15}] Move 5
scoreboard players set @s[scores={move=11..15}] Camera 5
scoreboard players set @s[scores={move=11}] atk 2


execute as @s[scores={move=6..9}] at @s positioned ^^^2 run tp @e[r=1.95,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] ^^^-1 facing @s
execute as @s[scores={move=6..9}] at @s run tp @s @s
execute as @s[scores={move=6}] at @s positioned ^^1^1 run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:miracle 
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1 run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=6}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=6}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=6}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 2.25 9999
execute as @s[scores={move=6}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=6}] at @s positioned ^^1^2 run execute as @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=6}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 4 override
execute as @s[scores={move=6}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=6}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 5
execute as @s[scores={move=6}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.95,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Flourish 6
execute as @s[scores={move=6}] at @s run  function damages/blunt_damage


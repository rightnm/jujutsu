playanimation @s[scores={move=40}] animation.gavel1.ab3

scoreboard players set @s[scores={move=37..,Stun=1..}] move 2

execute as @s[scores={move=1..5}] at @s run tag @e[tag=headsmash] remove headsmash
tag @s[scores={move=1..2},tag=wep3] remove wep3
execute as @s[scores={move=36}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.95

scoreboard players random @s[scores={move=18}] blackflashchance 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=11..36}] Move 5
scoreboard players set @s[scores={move=11..36}] Camera 5
scoreboard players set @s[scores={move=11}] atk 2

execute as @s[scores={move=36}] at @s positioned ^^^1.55 run tag @e[tag=!Frames,r=1.5,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] add headsmash
execute as @s[scores={move=28}] at @s positioned ^^^1.55 run playanimation @e[tag=!Frames,r=1.5,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] animation.gavel1.ab3b
execute as @s[scores={move=26..31}] at @s unless entity @e[tag=headsmash,r=15] run playanimation @s animation.gavel.idle
execute as @s[scores={move=26..31}] at @s unless entity @e[tag=headsmash,r=15] run scoreboard players set @s move 2

execute as @s[scores={move=1..36}] at @s  run tp @e[tag=headsmash,c=1,r=15] ^-0.25^^1.15 facing @s
execute as @s[scores={move=1..36}] at @s run tp @s @s

execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run camerashake add @a[r=25] 1 0.15
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:parry1 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:parry2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^0.75 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=26}] at @s positioned ^^1^0.75 run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=25}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999
execute as @s[scores={move=25}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=25}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.45 9999
execute as @s[scores={move=25}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=25}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.8 9999
execute as @s[scores={move=25}] at @s  run damage @e[tag=headsmash,c=1,r=15] 2 override
execute as @s[scores={move=25}] at @s  run scoreboard players operation @e[tag=headsmash,c=1,r=15] damagehalf += @s damageadd
execute as @s[scores={move=25}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] Evade 3
execute as @s[scores={move=25}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] Hit 3
execute as @s[scores={move=25}] at @s run  function damages/blunt_damage

execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run camerashake add @a[r=20] 1 0.15
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:parry1 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:parry2 ~~~
execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=21}] at @s positioned ^^1^0.75 run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=20}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 2.10 9999
execute as @s[scores={move=20}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.65 9999
execute as @s[scores={move=20}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=20}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=20}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.8 9999
execute as @s[scores={move=20}] at @s  run damage @e[tag=headsmash,c=1,r=15] 2 override
execute as @s[scores={move=20}] at @s  run scoreboard players operation @e[tag=headsmash,c=1,r=15] damagehalf += @s damageadd
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] Evade 3
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] Hit 3
execute as @s[scores={move=20}] at @s run  function damages/blunt_damage


execute as @s[scores={move=20}] at @s positioned ^^1^0.75 run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:parry1 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:parry2 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^0.75 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^0.75 run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.50 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.15 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.05 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=headsmash,c=1,r=15] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=10}] at @s  run damage @e[tag=headsmash,c=1,r=15] 4 override
execute as @s[scores={move=10}] at @s  run scoreboard players operation @e[tag=headsmash,c=1,r=15] damagehalf += @s damageadd
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] Evade 3
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=headsmash,c=1,r=15] knockdown 75
execute as @s[scores={move=10}] at @s run  function damages/blunt_damage



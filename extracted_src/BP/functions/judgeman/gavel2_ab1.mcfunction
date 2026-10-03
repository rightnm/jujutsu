playanimation @s[scores={move=20}] animation.gavel2.ab1

scoreboard players set @s[scores={move=12..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep1] remove wep1


scoreboard players random @s[scores={move=18}] blackflashchance 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=11}] atk 2
scoreboard players set @s[scores={move=8..12}] Frames 5
execute as @s[scores={move=10..13}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,rm=0.2] at @s run tp @s ~~~ facing @e[scores={move=10..13},c=1,rm=0.2]
execute as @s[scores={move=10}] at @s  run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=10}] at @s  run particle ds:dirt0
execute as @s[scores={move=10}] at @s  run particle ds:dirt2 ~~1~
execute as @s[scores={move=10}] at @s  run particle ds:ground_slam1 ~~~
execute as @s[scores={move=10}] at @s  run particle ds:ground_slam2 ~~~
execute as @s[scores={move=10}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=7}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=11}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=9}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=10}] at @s  run execute as @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=10}] at @s  run damage @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 4 override
execute as @s[scores={move=10}] at @s  run scoreboard players operation @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 5
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Flourish 8
execute as @s[scores={move=10}] at @s  run damage @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 4 override
execute as @s[scores={move=10}] at @s run function damages/blunt_damage


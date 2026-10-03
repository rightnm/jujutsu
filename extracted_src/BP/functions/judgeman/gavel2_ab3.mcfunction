playanimation @s[scores={move=50}] animation.gavel2.ab3

scoreboard players set @s[scores={move=45..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep3] remove wep3

execute as @s[scores={move=49..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=49..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=49..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=49..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~

scoreboard players random @s[scores={move=28}] blackflashchance 1 269
scoreboard players set @s[scores={move=28},tag=blackflashrig] blackflashchance 7

effect @s[scores={move=21..}] slowness 1 3 true

execute as @s[scores={move=1..41,atk=1..2}] at @s run scriptevent ds:knockback 1

scoreboard players set @s[scores={move=41}] atk 2
scoreboard players set @s[scores={move=41}] Frames 5
execute as @s[scores={move=18..43}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,rm=0.2] at @s run tp @s ~~~ facing @e[scores={move=18..43},c=1,rm=0.2]
execute as @s[scores={move=40}] at @s  run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=40}] at @s  run particle ds:ground_slam1 ~~~
execute as @s[scores={move=40}] at @s  run particle ds:ground_slam2 ~~~
execute as @s[scores={move=40}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=40}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=41}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.15 9999
execute as @s[scores={move=40}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.punch @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=40}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=40}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=40}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 2.85 9999
execute as @s[scores={move=40}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=40}] at @s  run scoreboard players operation @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=40}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=40}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 15
execute as @s[scores={move=40}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=40}] at @s  run damage @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=40}] at @s run  function damages/blunt_damage

scoreboard players set @s[scores={move=31}] atk 2
scoreboard players set @s[scores={move=31}] Frames 5
execute as @s[scores={move=30}] at @s  run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=30}] at @s  run particle ds:ground_slam1 ~~~
execute as @s[scores={move=30}] at @s  run particle ds:ground_slam2 ~~~
execute as @s[scores={move=30}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=30}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=31}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.2 9999
execute as @s[scores={move=30}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.punch @a[r=50] ~~~ 9999 1.8 9999
execute as @s[scores={move=30}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=30}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=30}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 2.85 9999
execute as @s[scores={move=30}] at @s  run execute as @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=30}] at @s  run scoreboard players operation @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=30}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=30}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 15
execute as @s[scores={move=30}] at @s  run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=30}] at @s  run damage @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=30}] at @s run  function damages/blunt_damage


scoreboard players set @s[scores={move=23..25}] atk 2
scoreboard players set @s[scores={move=23..25}] Frames 5
scoreboard players set @s[scores={move=5..22}] Move 10
scoreboard players set @s[scores={move=5..22}] Camera 10
execute as @s[scores={move=15..22}] at @s run tp @s @s
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:dirt0
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:ground_slam1 ~~~
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:sweep1 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:sweep2 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:crater
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:leap
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run particle ds:rubble
execute as @s[scores={move=19}] at @s positioned ^^^0.5 run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.75 9999
execute as @s[scores={move=19}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=24}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] knockdown 30
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 5 override
execute as @s[scores={move=24}] at @s positioned ^^^2.5 run tp @e[tag=!Frames,r=2.45,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] ~~~
execute as @s[scores={move=22}] at @s run  function damages/blunt_damage
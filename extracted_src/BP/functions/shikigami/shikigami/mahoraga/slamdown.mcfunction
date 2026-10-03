playanimation @s[scores={move=95}] animation.agito.leap_slam

execute as @s[scores={move=84}] at @s run particle ds:crater2
execute as @s[scores={move=84}] at @s run particle ds:rubble3
execute as @s[scores={move=84}] at @s run camerashake add @a[r=40] 2 0.15
execute as @s[scores={move=84}] at @s run playsound random.explode @a ~~~ 1000000 2 1000000
execute as @s[scores={move=84}] at @s run playsound mob.wither.shoot @a ~~~ 1000000 0.6 1000000
execute as @s[scores={move=84}] at @s run particle ds:dirt2



execute as @s[scores={move=83}] at @s run execute as @e[tag=!Frames,c=1,tag=!mahoraga_tame,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=90] at @s run tp @e[family=mahoraga,c=1] ~~6~
execute as @s[scores={move=25..79}] at @s unless block ~~-1.5~ air run scoreboard players set @s move 24
execute as @s[scores={move=1..24}] at @s run tp @s ~~~
execute as @s[scores={move=24}] at @s run tp @s ~~-1~
playanimation @s[scores={move=23..24}] animation.agito.leap_slam2

execute as @s[scores={move=86..}] at @s run tp @s ~~~ facing @e[c=1,tag=!mahoraga_tame,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=90]

execute as @s[scores={move=20}] at @s  run tp @s ~~~
execute as @s[scores={move=20}] at @s  run playsound mob.wither.shoot @a ~~~  100000 0.7 100000
execute as @s[scores={move=20}] at @s  run playsound mob.wither.break_block @a ~~~  100000 0.45 100000
execute as @s[scores={move=20}] at @s  run playsound random.explode @a ~~~  100000 0.5 100000
execute as @s[scores={move=20}] at @s  run playsound random.explode @a ~~~  100000 0.25 100000
execute as @s[scores={move=20}] at @s  run playsound random.explode @a ~~~  100000 0.45 100000
execute as @s[scores={move=20}] at @s  run particle ds:dirt4 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam4
execute as @s[scores={move=20}] at @s  run particle ds:leap
execute as @s[scores={move=20}] at @s  run particle ds:rubble3
execute as @s[scores={move=20}] at @s  run particle ds:rubble3
execute as @s[scores={move=20}] at @s  run particle ds:crater3
execute as @s[scores={move=19..20}] at @s  run execute as @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run tp @s ~~~ facing @e[family=mahoraga,c=1]
execute as @s[scores={move=19..20}] at @s  run execute as @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run summon ds:knockback ^^^1
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 6
execute as @s[scores={move=20}] at @s  run damage @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 25 entity_attack entity @s
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 15
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,r=6.99,family=!mahoraga,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 25
execute as @s[scores={move=20}] at @s  run camerashake add @a[r=20] 4 0.15
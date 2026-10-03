playanimation @s[scores={move=20,amberbeast=0}] animation.lightning_palm
playanimation @s[scores={move=20,amberbeast=1..}] animation.lightning_palm2

tag @s[scores={move=1..2},tag=wep1] remove wep1

tag @s[scores={move=16..,Stun=1..},tag=wep1] remove wep1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=16}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=15..17}] atk 2


scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=19}] at @s run playsound mob.electricity @a ~~~


execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=16] 2 0.15

execute as @s[scores={move=15}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s run function damages/electric_damage

execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 1.3 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] damage += @s damageadd
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 7 override entity @s
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] shocked 11
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 8
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Stun 25
execute as @s[scores={move=15,amberbeast=0}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3

execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.65 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1a
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1a
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] damage += @s damageadd
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 14 override entity @s
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] shocked 12
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 14
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Stun 33
execute as @s[scores={move=15,amberbeast=1..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3





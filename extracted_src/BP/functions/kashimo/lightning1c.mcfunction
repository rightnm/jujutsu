playanimation @s[scores={move=40,amberbeast=0}] animation.speedblitz
playanimation @s[scores={move=40,amberbeast=1..}] animation.speedblitz2
execute as @s[scores={move=1..}] at @s run tp @s ~~~

tag @s[scores={move=1..2},tag=wep3] remove wep3

tag @s[scores={move=25..,Stun=1..},tag=wep3] remove wep3
scoreboard players set @s[scores={move=25..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..24}] Camera 4
scoreboard players set @s[scores={move=4..24}] Frames 4
scoreboard players set @s[scores={move=4..24}] Move 4

execute as @s[scores={move=11}] at @s run function damages/blunt_damage
execute as @s[scores={move=11}] at @s run function damages/electric_damage


scoreboard players set @e[tag=SpeedblitzTRG] Stun 25

execute as @s[scores={move=24}] at @s positioned ^^^60 run tag @e[tag=!Frames,c=1,r=59.95,type=!armor_stand,type=!bat,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] add SpeedblitzTRG

execute as @s[scores={move=26..28}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=26..28}] at @s run particle ds:evade ~~~
execute as @s[scores={move=26..28}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 2
execute as @s[scores={move=26..28}] at @s run playsound mob.shocked3 @a ~~~ 1 2
execute as @s[scores={move=26..28}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.75
execute as @s[scores={move=26..28}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2.25

execute as @s[scores={move=21..24}] at @s positioned ^^^60 run execute as @e[c=1,tag=SpeedblitzTRG] at @s run tp @s @s
execute as @s[scores={move=21..22}] at @s positioned ^^^60 run execute as @e[c=1,tag=SpeedblitzTRG] at @s run tp @e[scores={move=21..22},c=1] ^^^-1 facing @s
execute as @s[scores={move=11..20}] at @s run tp @s ~~~ facing @e[tag=SpeedblitzTRG,c=1]
execute as @s[scores={move=11..16}] at @s run tp @e[tag=SpeedblitzTRG,c=1] ^^^0.75



scoreboard players random @s[scores={move=16}] blackflashchance 1 69
scoreboard players set @s[scores={move=16},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=11}] at @s run function damages/blunt_damage

execute as @s[scores={move=11..24}] at @s positioned ^^^2.25 run scoreboard players set @a[r=5] Camera 5
execute as @s[scores={move=11..24},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^7 ^ ^1 rot ~ ~90


execute as @s[scores={move=11..12,amberbeast=0}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] damage += @s damageadd
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 8
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 10
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 8
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] knockdown 95
execute as @s[scores={move=11}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 45
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.6 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.3 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.5 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.35 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.65 10000
execute as @s[scores={move=11,amberbeast=0}] at @s positioned ^^^2.25 run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:ground_slam2 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:ground_slam3 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:ground_slam4 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:heavy_impact1 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:heavy_impact2 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:heavy_impact3 ^^^0.25
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:lightning_shockwave1
execute as @s[scores={move=11,amberbeast=0}] at @s run particle ds:lightning_area1


execute as @s[scores={move=11..12,amberbeast=1..}] at @s positioned ^^^2.25 run scoreboard players set @s atk 2
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run scoreboard players operation @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] damage += @s damageadd
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 16
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 10
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 8
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run scoreboard players set @e[r=2.249,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] knockdown 95
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 2 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.45 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound random.explode @a ~~~ 10000 0.25 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 2 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a ~~~ 10000 0.35 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.25 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run playsound mob.wither.break_block @a ~~~ 10000 0.45 10000
execute as @s[scores={move=11,amberbeast=1..}] at @s positioned ^^^2.25 run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:ground_slam2 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:ground_slam3 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:ground_slam4 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:heavy_impact1 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:heavy_impact2 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:heavy_impact3 ^^^0.25
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:lightning_shockwave1a
execute as @s[scores={move=11,amberbeast=1..}] at @s run particle ds:lightning_area1a

execute as @s[scores={move=1..5}] at @s run tag @e[tag=SpeedblitzTRG] remove SpeedblitzTRG
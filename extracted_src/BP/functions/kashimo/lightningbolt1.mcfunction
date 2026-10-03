execute as @s[name="LightningBolt"] at @s run tp @s ^^^1.33 facing @e[name=LightningBoltTRG,c=1]
execute as @s[name="LightningBolt"] at @s run tp @s ^^^1.33 facing @e[name=LightningBoltTRG,c=1]

execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 20
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 75
execute as @s[scores={Deleter=1..}] at @s run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 3
execute as @s[scores={Deleter=1..}] at @s run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 3
execute as @s[scores={Deleter=1..},tag=!amber] at @s run damage @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 3 override 
execute as @s[scores={Deleter=1..},tag=amber] at @s run damage @e[tag=!Frames,r=4,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 6 override 


execute as @s[scores={Deleter=6..},tag=!amber] at @s run particle ds:lightningbolt1
execute as @s[scores={Deleter=6..},tag=!amber] at @s run particle ds:lightningbolt2
execute as @s[scores={Deleter=6..},tag=!amber] at @s run particle ds:lightningbolt3

execute as @s[scores={Deleter=6..},tag=amber] at @s run particle ds:lightningbolt1a
execute as @s[scores={Deleter=6..},tag=amber] at @s run particle ds:lightningbolt2a
execute as @s[scores={Deleter=6..},tag=amber] at @s run particle ds:lightningbolt3a


function damages/electric_damage

execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam1 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:rubble3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4

execute as @s[scores={Deleter=1..5}] at @s run tp @s @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,r=2,c=1] 


execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=4}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={Deleter=4}] at @s run playsound mob.electricity @a[r=100] ~~~ 99999 0.85 99999

execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-200~


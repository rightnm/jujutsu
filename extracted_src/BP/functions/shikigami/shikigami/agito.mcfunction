execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[type=ds:agito,scores={Disabled=3..,move=0}] at @s if entity @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run scoreboard players remove @s Disabled 3
execute as @s[type=ds:agito,scores={Disabled=0,move=0}] at @s positioned ^^^47.5 if entity @e[tag=!Frames,r=44.49,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run scoreboard players random @s chance 2 4
execute as @s[type=ds:agito,scores={Disabled=0,move=0}] at @s positioned ^^^7.5 if entity @e[tag=!Frames,r=7.45,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run scoreboard players random @s chance 1 2

execute as @s[scores={Disabled=8..,move=0,cutscene=0,BasicM1=0}] at @s if entity @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run scoreboard players random @s chance -20 -21
execute as @s[scores={Disabled=8..,move=0,cutscene=0,BasicM1=0}] at @s if entity @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run scoreboard players set @s BasicM1 7


execute as @s[scores={BasicM1=1..}] at @s run function shikigami/shikigami/agito/m1s

scoreboard players set @p[tag=shikigami,scores={ability10=10..}] ability10 5000

scoreboard players set @s[type=ds:agito,scores={chance=1,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 21
execute as @s[scores={chance=1,move=1..}] at @s run function shikigami/shikigami/agito/atk1

scoreboard players set @s[type=ds:agito,scores={chance=2,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 21
execute as @s[scores={chance=2,move=1..}] at @s run function shikigami/shikigami/agito/atk2

scoreboard players set @s[type=ds:agito,scores={chance=3,Stun=0,move=0}] move 96
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 21
execute as @s[scores={chance=3,move=1..}] at @s run function shikigami/shikigami/agito/atk3

scoreboard players set @s[type=ds:agito,scores={chance=4,Stun=0,move=0}] move 70
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4,move=1..}] at @s run function shikigami/shikigami/agito/atk4

execute if block ~~~ water run effect @s levitation 1 1 true

scoreboard players set @s[scores={move=1..4}] chance 0

scoreboard players set @e[tag=shikigami,r=300,scores={ability10=10..},c=1] ability4 100
scoreboard players set @e[tag=shikigami,r=300,scores={ability10=10..},c=1] ability5 100
scoreboard players set @e[tag=shikigami,r=300,scores={ability10=10..},c=1] ability8 100

execute unless block ~~0.6~ air unless block ~~0.6~ tallgrass unless block ~~~ double_plant run tp @s ~~1~

execute as @s[scores={Disabled=20,move=0}] at @s run tp @s ~~~ facing @e[tag=!Frames,r=60,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1]
playanimation @s[scores={Disabled=20,move=0}] animation.dash
execute as @s[scores={Disabled=19,move=0}] at @s run particle ds:impact ~~2.5~
execute as @s[scores={Disabled=19,move=0}] at @s run particle mcdp_v:knockback_roar_particle_2 ~~2.5~
execute as @s[scores={Disabled=19,move=0}] at @s run effect @s speed 1 26 true
execute as @s[scores={Disabled=14,move=0}] at @s run effect @s speed 0 30 true
effect @s[scores={Disabled=0,move=0,EnergyCap=0}] regeneration 2 1 true
execute as @s[scores={Disabled=0..20,move=0}] at @s run particle ds:deer_aura1 ~~2.5~
execute as @s[scores={Disabled=0..20,move=0}] at @s run particle ds:agito_aura ~~2.5~

tag @s[type=ds:agito,tag=!Big] add Big

execute if entity @e[tag=!Frames,r=60,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!shikigami,family=!shadows,family=!shikigami,c=1] run effect @s speed 16 3 true



tp @s ^^^1 facing @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=40,tag=!crescendo,type=!arrow,c=1]

execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 100
particle ds:crescendo_orb

execute as @s[scores={Deleter=3..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!crescendo,type=!arrow,c=1] run scoreboard players set @s Deleter 2
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!crescendo,type=!arrow,c=1] run particle ds:crescendo_orb2
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!crescendo,type=!arrow,c=1] run damage @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2] 100
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!crescendo,type=!arrow,c=1] run  scoreboard players set  @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2] Stun 75
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!crescendo,type=!arrow,c=1] run effect @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2] levitation 2 1 true



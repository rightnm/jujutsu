tp @s ^^^2 facing @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=40,tag=!lscythe,type=!arrow,c=1]

execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 16
particle ds:scytheorb

execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!lscythe,type=!arrow,c=1] run damage @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2] 3 suicide
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,family=!despawncito,r=2,tag=!lscythe,type=!arrow,c=1] run kill @s


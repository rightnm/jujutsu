execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=150..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 150
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[scores={Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] positioned ^^^20 if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=40,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 5


execute as @s[scores={chance=1,Stun=0}] at @s run function wither_burst
scoreboard players set @s[scores={chance=1,Stun=0}] Disabled 101

execute as @e[type=minecraft:wither_skull_dangerous] at @s run particle ds:wither_aura
execute as @e[type=minecraft:wither_skull_dangerous] at @s run execute if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=4,tag=!unselect,type=!armor_stand,family=!purecurse,c=1,type=!minecraft:wither_skull_dangerous] at @s run function wither_burst2

scoreboard players set @s[scores={chance=1..}] chance 0
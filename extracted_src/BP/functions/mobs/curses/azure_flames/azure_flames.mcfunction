execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=150..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 150
effect @s[scores={Energy=0}] fire_resistance 999999 1 true
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[scores={Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] positioned ^^^20 if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=19.80,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 5


scoreboard players set @s[scores={chance=1,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 101
execute as @s[scores={chance=1,move=1..}] at @s run function mobs/curses/azure_flames/azure_spray

scoreboard players set @s[scores={chance=2,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 45
execute as @s[scores={chance=2,move=1..}] at @s run function mobs/curses/azure_flames/slamdown

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 90
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/curses/azure_flames/flamethrower

scoreboard players set @s[scores={chance=4..}] chance 0
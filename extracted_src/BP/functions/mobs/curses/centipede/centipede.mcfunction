execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=150..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 150
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 3
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[scores={Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=9,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 3 6

scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 32
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/curses/centipede/pierce1

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 17
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4,move=1..}] at @s run function mobs/curses/centipede/pierce2


scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 22
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 65
execute as @s[scores={chance=5,move=1..}] at @s run function mobs/curses/centipede/spin

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 52
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 65
execute as @s[scores={chance=6,move=1..}] at @s run function mobs/curses/centipede/scream


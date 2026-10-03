execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=100..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 100
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 7
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 4
scoreboard players set @s[scores={Energy=0}] Energy 9999

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 3
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run tag @s add hit

playanimation @s[scores={chance=1..2},tag=hit] animation.brute.attack
scoreboard players random @s[tag=hit] hitCD 15 22
execute as @s[tag=hit] at @s positioned ^^^2 run scoreboard players operation @e[r=1.95,tag=!Frames,tag=!unselect] damage += @s damageadd
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/curses/brute_slam
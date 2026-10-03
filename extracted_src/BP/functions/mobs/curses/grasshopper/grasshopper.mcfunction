execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=100..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 100
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 3
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 9
scoreboard players set @s[scores={Energy=0}] Energy 9999

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 5
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=1..2}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run tag @s add hit



scoreboard players random @s[scores={Disabled=1..,chance=3..,move=0}] chance 1 2

playanimation @s[scores={chance=1},tag=hit] animation.grasshopper_curse.attack1
playanimation @s[scores={chance=2},tag=hit] animation.grasshopper_curse.attack2
scoreboard players random @s[tag=hit] hitCD 2 4
execute as @s[tag=hit] at @s positioned ^^^2 run scoreboard players operation @e[r=1.95,tag=!frames] damage += @s damageadd
execute as @s[tag=hit,scores={chance=1..2}] run function m1


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 46
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/curses/grasshopper/barrage

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 45
execute as @s[scores={chance=4,move=1..}] at @s run function mobs/curses/grasshopper/sting



execute as @s[scores={combat=1..,cutscene=0,Disabled=0,hitCD=0,Stun=0}] at @s unless entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=15,tag=!unselect,type=!armor_stand,family=!purecurse,scores={combat=1..},c=1] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=30,tag=!unselect,type=!armor_stand,family=!purecurse,scores={combat=1..},c=1] run scoreboard players random @s chance 8 9

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=8,move=1..}] at @s run function mobs/curses/grasshopper/fly

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 11
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=9,move=1..}] at @s run function mobs/curses/grasshopper/poison_spit

execute as @s at @s run execute as @e[c=1,name=PoisonSpit,type=ds:projectile] run function mobs/curses/grasshopper/spit
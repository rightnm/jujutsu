execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=100..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 100
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 4
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[scores={move=0,cutscene=0}] if block ~~~ water run tp @s ^^^0.75 facing @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=55,rm=1.5,tag=!unselect,type=!armor_stand,family=!purecurse,scores={combat=1..},c=1]
execute as @s[scores={move=0,cutscene=0}] if block ~~~ water run playanimation @s animation.sharko.swim
execute as @s[scores={move=0,cutscene=0}] if block ~~-1~ water run playanimation @s animation.sharko.swim
execute as @s[scores={move=0,cutscene=0}] if block ~~~ air if block ~~-1~ water run tp @s ~~-1.15~
execute as @s[scores={move=0,cutscene=0}] if block ~~~ water run stopsound @a[r=200] mob.stomp

execute as @s[scores={Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 3 5

scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 33
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/curses/sharko/hit

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 33
execute as @s[scores={chance=4,move=1..}] at @s run function mobs/curses/sharko/hit_x2

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 53
execute as @s[scores={chance=5,move=1..}] at @s run function mobs/curses/sharko/kick


execute as @s[scores={cutscene=0,Disabled=0,Stun=0}] at @s unless entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7,tag=!unselect,type=!armor_stand,family=!purecurse,scores={combat=1..},c=1] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=30,tag=!unselect,type=!armor_stand,family=!purecurse,scores={combat=1..},c=1] run scoreboard players random @s chance 8 10


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=8,move=1..}] at @s run function mobs/curses/sharko/shoot

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 80
execute as @s[scores={chance=9,move=1..}] at @s run function mobs/curses/sharko/roar

scoreboard players set @s[scores={chance=10,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 80
execute as @s[scores={chance=10,move=1..}] at @s run function mobs/curses/sharko/leap
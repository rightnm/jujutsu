execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

scoreboard players remove @s[scores={Stun=3..}] Stun 3

execute if entity @e[type=ds:principle_yaga,r=50] run spreadplayers ~~ 30 40 @e[type=ds:sorcerer_female,r=20]
execute if entity @e[type=ds:principle_yaga,r=50] run spreadplayers ~~ 30 40 @e[type=ds:sorcerer_male,r=20]
execute if entity @e[type=ds:principle_yaga,r=50] run spreadplayers ~~ 30 40 @e[type=ds:sorcerer_female_grade2,r=20]
execute if entity @e[type=ds:principle_yaga,r=50] run spreadplayers ~~ 30 40 @e[type=ds:sorcerer_male_grade2,r=20]

execute as @s unless entity @e[r=45,type=player] run tag @s add failed
execute as @s unless entity @e[r=45,type=player] run kill @s

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,type=!ds:cursed_doll,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=5,tag=!unselect,type=!armor_stand,type=!ds:cursed_doll,c=1] run scoreboard players random @s chance 3 4
execute as @s[scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=1..2}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,type=!ds:cursed_doll,c=1] run tag @s add hit


playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 5 7
execute as @s[tag=hit] at @s positioned ^^^2 run scoreboard players operation @e[r=1.95,tag=!Frames] damage += @s damageadd
execute as @s[tag=hit,scores={chance=1..2}] run function m1


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 11
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3,move=1..}] at @s run function mobs/cursed_doll/punch

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4,move=1..}] at @s run function mobs/cursed_doll/uppercut


execute as @s[scores={combat=1..,cutscene=0,Disabled=0,hitCD=0,Stun=0,Disabled=0}] at @s if entity @e[type=!ds:cursed_doll,scores={combat=1..},r=20,rm=2.5,tag=!unselect,type=!armor_stand,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,c=1] run scoreboard players random @s chance 8 9
execute as @s[scores={combat=1..}] at @s if entity @e[type=!ds:cursed_doll,scores={Stun=1..},r=20,rm=2.5,tag=!unselect,type=!armor_stand,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,c=1] run tp @s ~~~
execute as @s[scores={combat=1..,cutscene=0,Disabled=0,hitCD=0,Stun=0,Disabled=0}] at @s if entity @e[type=!ds:cursed_doll,scores={Stun=1..},r=20,rm=3.5,tag=!unselect,type=!armor_stand,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,c=1] run scoreboard players random @s chance 10 12

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=8,move=1..}] at @s run function mobs/cursed_doll/dash_punch


scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 76
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=9,move=1..}] at @s run function mobs/cursed_doll/spasm

execute as @s[scores={chance=10}] at @s run playsound mob.cartoon_laugh @a[r=20] ~~~ 99999 1.5 99999
playanimation @s[scores={chance=10}] animation.cursed_doll.emote1
effect @s[scores={chance=10}] slowness 3 7 true
scoreboard players set @s[scores={chance=10}] Disabled 60
scoreboard players set @s[scores={chance=10}] Frames 20
scoreboard players set @s[scores={chance=10}] chance 0

playanimation @s[scores={chance=11,Disabled=49..50}] animation.cursed_doll.emote2
scoreboard players set @s[scores={chance=11,Disabled=0}] Disabled 51
execute as @s[scores={chance=11,Disabled=41}] at @s run playsound mob.cartoon1 @a[r=20] ~~~ 9999 1.72 9999
execute as @s[scores={chance=11,Disabled=28}] at @s run playsound mob.cartoon1 @a[r=20] ~~~ 9999 1.7 9999
execute as @s[scores={chance=11,Disabled=18}] at @s run playsound mob.cartoon1 @a[r=20] ~~~ 9999 1.5 9999
effect @s[scores={chance=11}] slowness 3 7 true
scoreboard players set @s[scores={chance=11}] Frames 20
scoreboard players set @s[scores={chance=11,Disabled=0..17}] chance 0

playanimation @s[scores={chance=12}] animation.cursed_doll.emote3
effect @s[scores={chance=12}] slowness 3 4 true
scoreboard players set @s[scores={chance=12}] Disabled 60
scoreboard players set @s[scores={chance=12}] Frames 20
scoreboard players set @s[scores={chance=12}] chance 0


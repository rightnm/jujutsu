execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] guilty_score 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] ability2 0
scoreboard players set @s[scores={Energy=0}] damageadd 6
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 38
execute unless entity @s[scores={blackflashlearn=1..}] run scoreboard players set @s[scores={Energy=0}] blackflashlearn 1
scoreboard players set @s[scores={Energy=0}] Energy 1200

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

event entity @s[scores={detect_health=0..250},has_property={property:yuji_face=0}] yuji_face1
event entity @s[scores={detect_health=0..175},has_property={property:yuji_face=0..1}] yuji_face2
event entity @s[scores={detect_health=0..75},has_property={property:yuji_face=0..2}] yuji_face3

execute as @s[type=ds:yuji_itadori,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,family=!todo,type=!ds:yuji_itadori,r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 3 12

execute as @s[type=ds:yuji_itadori,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,family=!todo,type=!ds:yuji_itadori,r=41,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] if entity @e[tag=!Frames,family=!todo,type=!ds:yuji_itadori,rm=41,r=90,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 0 1

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!ds:yuji_itadori,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!ds:yuji_itadori,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 5
execute as @s[tag=hit,scores={chance=1..2}] run function m1

execute as @s[scores={atk=1..2}] at @s positioned ^^^2 run scoreboard players set @e[family=todo,r=5] Frames 5
execute as @s[scores={atk=1..2}] at @s positioned ^^^2 run tag @e[family=todo,r=5,tag=!Frames,family=!todo,scores={Frames=1..}] add Frames

scoreboard players set @s[type=ds:yuji_itadori,scores={chance=3,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 35


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=4,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 35


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=5,Stun=0,move=0}] move 19
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 35


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=6,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 35


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=7,Stun=0,move=0,ability2=0}] move 23
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,ability2=0}] ability2 500


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=8,Stun=0,move=0}] move 51
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 38

scoreboard players set @s[type=ds:yuji_itadori,scores={chance=9,Stun=0,move=0,ability1=0}] move 26
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,ability1=0}] Disabled 18
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,ability1=0}] ability1 900

scoreboard players remove @s[scores={thezone=1..,ability1=5..}] ability1 5


scoreboard players set @s[type=ds:yuji_itadori,scores={chance=10,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:yuji_itadori,scores={chance=11,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 25


#-----ranged-----

execute as @s[scores={chance=3,move=1..}] at @s run function fighting/yuji/manji_kick
execute as @s[scores={chance=4,move=1..}] at @s run function hr/hr9
execute as @s[scores={chance=5,move=1..}] at @s run function hr/hr1
execute as @s[scores={chance=6,move=1..}] at @s run function fighting/yuji/triple_kick
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/yuji/dive_kick
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/yuji/fierce_barrage
execute as @s[scores={chance=9,move=1..}] at @s run function fighting/yuji/divergent_strike
execute as @s[scores={chance=10,move=1..}] at @s run function hr/hr7
execute as @s[scores={chance=11,move=1..}] at @s run function hr/deadly_strike

scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


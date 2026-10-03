
execute unless entity @s[scores={Energy=0..}] at @s[tag=bagclone] run particle ds:clone ~~1~
execute unless entity @s[scores={Energy=0..}] run scoreboard objectives add clones dummy
execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=10..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 40


scoreboard players set @s[scores={Energy=0},tag=!bagclone] clones 5
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] punch 0
scoreboard players set @s[scores={Energy=0}] damageadd 2
scoreboard players set @s[scores={Energy=0}] strength 20
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players add @s[scores={Energy=0}] combat 800
scoreboard players set @s[scores={Energy=0}] EnergyCap 2000
tag @s[scores={Energy=0}] add rogue_sorcerer

execute unless entity @s[scores={combat=1..}] if entity @p[scores={punch=1..},r=4] run scoreboard players set @s combat 800

scoreboard players set @s[scores={Energy=0}] Energy 2000



execute as @s[scores={Stun=0..20,cutscene=0}] at @s if entity @e[scores={atk=1..2},family=special_grade,r=50] run function _hitdodge
execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:bag_head,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:bag_head,r=7.5,c=1] run scoreboard players random @s chance 3 15


tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:bag_head,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:bag_head,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 3 4
execute as @s[tag=hit,scores={chance=1..2}] run function m1



#other attacks


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/basic/strong_punch

execute as @s[tag=bagclone,scores={detect_health=0..30}] at @s run effect @s invisibility 1 1 true
execute as @s[tag=bagclone,scores={detect_health=0..30}] at @s run particle ds:clone
execute as @s[tag=bagclone,scores={detect_health=0..30}] at @s run kill @s

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
execute as @s[scores={chance=4,move=1..}] at @s run function fighting/basic/rush

execute as @s[scores={chance=5..7,clones=1..},tag=!bagclone] at @s run summon ds:bag_head ^2^^
execute as @s[scores={chance=5..7,clones=1..},tag=!bagclone] at @s positioned ^2^^ run tag @e[type=ds:bag_head,r=1,tag=!bagclone] add bagclone
execute as @s[scores={chance=5..7,clones=1..},tag=!bagclone] at @s run scoreboard players remove @s[scores={clones=1..}] clones 1
execute as @s[scores={chance=5..7},tag=!bagclone] at @s run scoreboard players set @s chance 0


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=9,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 17
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=11,move=1..}] at @s run function hr/hr9


scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=12,move=1..}] at @s run function fighting/basic/downslam

scoreboard players set @s[scores={chance=14,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=14,move=1..}] at @s run function fighting




scoreboard players set @s[scores={move=1..3,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0


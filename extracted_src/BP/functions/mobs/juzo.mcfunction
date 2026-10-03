execute unless entity @s[scores={Energy=0..}] unless entity @e[type=ds:cursed_veil,r=100] run summon ds:cursed_veil

execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=10..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 40

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
scoreboard players set @s[scores={Energy=0}] damageadd 3
scoreboard players set @s[scores={Energy=0}] strength 20
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players add @s[scores={Energy=0}] combat 800
scoreboard players set @s[scores={Energy=0}] EnergyCap 2000
tag @s[scores={Energy=0}] add rogue_sorcerer

execute unless entity @s[scores={combat=1..}] if entity @p[scores={punch=1..},r=4] run scoreboard players set @s combat 800


replaceitem entity @s[scores={Energy=0}] slot.weapon.mainhand 1 iron_axe 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

scoreboard players set @s[scores={Energy=0}] Energy 2000



execute as @s[scores={Stun=0..20,cutscene=0}] at @s if entity @e[scores={atk=1..2},family=special_grade,r=50] run function _hitdodge
execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:juzo,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:juzo,r=7.5,c=1] run scoreboard players random @s chance 3 15


tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:juzo,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:juzo,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 3 4
execute as @s[tag=hit,scores={chance=1..2}] run function m1



#other attacks


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/basic/strong_punch


scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
execute as @s[scores={chance=4,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 41
execute as @s[scores={chance=5,move=1..}] at @s run function fighting/black_blade/umbral_rush

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 26
execute as @s[scores={chance=6,move=1..}] at @s run function fighting/black_blade/overhead

scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 17
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=9,move=1..}] at @s run function hr/hr9


scoreboard players set @s[scores={chance=10,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=10,move=1..}] at @s run function fighting/katana/quickdraw

scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=11,move=1..}] at @s run function fighting/katana/prominence

scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=12,move=1..}] at @s run function fighting/basic/downslam

scoreboard players set @s[scores={chance=13,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=13,move=1..}] at @s run function hr/bone_splitter


scoreboard players set @s[scores={chance=14,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=14,move=1..}] at @s run function fighting/slaughter_demon/wide_cut




scoreboard players set @s[scores={move=1..3,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0


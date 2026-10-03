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
scoreboard players add @s[scores={Energy=0}] agility 42
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 5
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 20
tag @s[scores={Energy=0}] add yujis_friend
tag @s[scores={Energy=0},tag=!cursed_speech] add cursed_speech
scoreboard players set @s[scores={Energy=0}] EnergyCap 2500
scoreboard players set @s[scores={Energy=0}] Energy 2500


execute unless entity @a[tag=cursed_speech,c=1] run function speech/cursed_speech


execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:inumaki,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!ds:inumaki,r=4.9,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 3 4

execute as @s[type=ds:inumaki,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!ds:inumaki,rm=5,r=20,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1]  run scoreboard players random @s chance 6 12

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!ds:inumaki,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!ds:inumaki,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run tag @s add hit

execute at @s positioned ^^^15 if entity @e[family=shikigami,family=!mahoraga,type=!ds:agito,family=!projectile,family=!damage,r=15] run scoreboard players set @s[scores={chance=1..}] chance 99
execute at @s positioned ^^^15 if entity @e[family=shikigami_other,family=!mahoraga,type=!ds:agito,family=!projectile,family=!damage,r=15,type=!ds:bag_head] run scoreboard players set @s[scores={chance=1..}] chance 99
execute at @s positioned ^^^15 if entity @e[tag=bagclone,family=!mahoraga,type=!ds:agito,family=!projectile,family=!damage,r=15] run scoreboard players set @s[scores={chance=1..}] chance 99

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 5
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players set @s[type=ds:inumaki,scores={chance=3,Stun=0,move=0}] move 21
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/basic/strong_punch
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[type=ds:inumaki,scores={chance=4,Stun=0,move=0}] move 31
execute as @s[scores={chance=4,move=1..}] at @s run function fighting/basic/rush
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 15

effect @s[scores={move=21..}] slowness 1 10 true

#dontmove
scoreboard players set @s[type=ds:inumaki,scores={chance=5,Stun=0,move=0},tag=!nocts] move 31
execute as @s[scores={chance=5,move=1..}] at @s run function speech/ab1
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 50

#return
scoreboard players set @s[type=ds:inumaki,scores={chance=99,Stun=0,move=0},tag=!nocts] move 31
execute as @s[scores={chance=99,move=1..}] at @s run function speech/ab3
scoreboard players set @s[scores={chance=99,Stun=0,move=1..}] Disabled 50

#break
scoreboard players set @s[type=ds:inumaki,scores={chance=6,Stun=0,move=0},tag=!nocts] move 26
execute as @s[scores={chance=6,move=1..}] at @s run function speech/ab6
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 15

#blastaway
scoreboard players set @s[type=ds:inumaki,scores={chance=7,Stun=0,move=0},tag=!nocts] move 51
execute as @s[scores={chance=7,move=1..}] at @s run function speech/ab7
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 50

#getcrushed
scoreboard players set @s[type=ds:inumaki,scores={chance=8,Stun=0,move=0},tag=!nocts] move 31
execute as @s[scores={chance=8,move=1..}] at @s run function speech/ab8
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 50

#plummet
scoreboard players set @s[type=ds:inumaki,scores={chance=9,Stun=0,move=0},tag=!nocts] move 71
execute as @s[scores={chance=9,move=1..}] at @s run function speech/ab9
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 50

#runaway
scoreboard players set @s[type=ds:inumaki,scores={chance=10,Stun=0,move=0},tag=!nocts] move 31
execute as @s[scores={chance=10,move=1..}] at @s run function speech/ab2
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 50

execute as @s[scores={speech=101..,Disabled=40}] at @s run replaceitem entity @s slot.weapon.mainhand 1 ds:cough_syrup
execute as @s[scores={speech=101..,Disabled=40}] at @s run function cough_syrup
execute as @s[scores={speech=101..,Disabled=20..22}] at @s run replaceitem entity @s slot.weapon.mainhand 1 air

scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


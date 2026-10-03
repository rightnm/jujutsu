execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=90..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 90
scoreboard players add @s[scores={Energy=0}] flashstep 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 12
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 45
scoreboard players set @s[scores={Energy=0}] weapontype 1
tag @s[scores={Energy=0}] add yujis_friend
scoreboard players set @s[scores={Energy=0}] Energy 1000

execute as @s[scores={move=1..,weapontype=2}] at @s run scoreboard players add @e[rm=0.1,r=4,scores={Hit=1..}] antiheal 7


scoreboard players set @s[scores={nocts=3..}] nocts 2

execute if entity @e[family=sukuna,family=projectile,r=10] run scoreboard players set @s[scores={DashCD=0}] DashCD 9

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

scoreboard players remove @s[scores={Stun=10..}] Stun 10

tag @s[scores={weapontype=1,detect_health=1..140,cutscene=0,move=0,Stun=0,Move=0,Camera=0}] add switching
scoreboard players set @s[scores={weapontype=1,detect_health=1..140,cutscene=0,move=0,Stun=0,Move=0,Camera=0}] cutscene 41
execute as @s[tag=switching,scores={cutscene=1..}] at @s run function mobs/maki_phase

execute as @s[scores={weapontype=1,cutscene=0,move=0,Stun=0,Move=0,Camera=0}] at @s if entity @e[type=ds:mahito,c=1,r=30,scores={combat=1..}] run tag @s add switching
execute as @s[scores={weapontype=1,cutscene=0,move=0,Stun=0,Move=0,Camera=0}] at @s if entity @e[type=ds:mahito,c=1,r=30,scores={combat=1..}] run scoreboard players set @s[scores={weapontype=1,cutscene=0,move=0,Stun=0,Move=0,Camera=0}] cutscene 41



scoreboard players random @s[scores={move=0,cutscene=0,Frames=0,Move=0,Camera=0,Hit=1..}] DashCD 1 11
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15] run scoreboard players random @s DashCD 1 10
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames] run scoreboard players random @s DashCD 1 10
scoreboard players set @s[scores={DashCD=1..9,flashstep=0}] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4}] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..}] at @s run scriptevent ds:dashWest
scoreboard players set @s[scores={flashstep=0..3}] DashCD 0

scoreboard players set @s[scores={cutscene=1..}] Disabled 25
scoreboard players set @s[scores={cutscene=1..,move=1..}] move 0
scoreboard players set @s[scores={cutscene=1..,chance=1..}] chance 0

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=7.5,c=1] run scoreboard players random @s chance 3 3

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=7.5,c=1] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=41,c=1] run scoreboard players random @s chance 3 13

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=41,c=1] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,rm=41,r=90,c=1] run scoreboard players random @s chance 0 1

execute as @s[scores={cutscene=0,Disabled=0,combat=1..}] at @s unless entity @a[r=58,tag=!unselect,c=1]  if entity @a[r=90,rm=39,tag=!unselect,c=1] run scoreboard players set @s chance 21

tag @s[tag=hit] remove hit
execute as @s[scores={Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:maki_cullinggames,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s[tag=hit] remove hit

scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=1}] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=1}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=1}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=6,Stun=0,move=0,weapontype=1}] move 37
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=7,Stun=0,move=0,weapontype=1}] move 61
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 35

execute as @s[scores={move=0,cutscene=0},tag=!heavenlyrestriction] at @s if entity @e[tag=domainactive,r=33] run tag @s add heavenlyrestriction
execute as @s[scores={move=0,cutscene=0},tag=heavenlyrestriction] at @s unless entity @e[tag=domainactive,r=33] run tag @s remove heavenlyrestriction

scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=2}] move 26
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=2}] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=2}] move 36
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=6,Stun=0,move=0,weapontype=2}] move 63
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=7,Stun=0,move=0,weapontype=2}] move 60
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 17
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 9

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 23
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 17

scoreboard players set @s[scores={chance=21,Stun=0,move=0}] move 40
scoreboard players set @s[scores={chance=21,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=13,Stun=0,move=0,weapontype=1}] move 36
scoreboard players set @s[scores={chance=13,Stun=0,move=1..,weapontype=1}] Disabled 8
execute as @s[scores={chance=13,move=1..,weapontype=1}] at @s run function fighting/calamity_claws/shoulder_bash

scoreboard players set @s[scores={chance=13,Stun=0,move=0,weapontype=2}] move 31
scoreboard players set @s[scores={chance=13,Stun=0,move=1..,weapontype=2}] Disabled 8
execute as @s[scores={chance=13,move=1..,weapontype=2}] at @s run function fighting/hand_sword/handshake_spin

#-----ranged-----

scoreboard players set @s[scores={chance=99,Stun=0,move=0}] move 45
scoreboard players set @s[scores={chance=99,Stun=0,move=1..}] Disabled 25

execute as @s[scores={chance=3,move=1..,weapontype=1},tag=!nocts] at @s run function fighting/basic/strong_punch
execute as @s[scores={chance=4,move=1..,weapontype=1},tag=!nocts] at @s run function fighting/basic/rush
execute as @s[scores={chance=5,move=1..,weapontype=1},tag=!nocts] at @s run function hr/deadly_strikes
execute as @s[scores={chance=7,move=1..,weapontype=1},tag=!nocts] at @s run function hr/hr2

execute as @s[scores={chance=8,move=1..}] at @s run function hr/dive_kick
execute as @s[scores={chance=9,move=1..}] at @s run function hr/hr9
execute as @s[scores={chance=11,move=1..}] at @s run function hr/hr7
execute as @s[scores={chance=21,move=1..}] at @s run function hr/hr6
execute as @s[scores={chance=12,move=1..}] at @s run function hr/bone_splitter

execute as @s[scores={chance=3,move=1..,weapontype=2},tag=!nocts] at @s run function fighting/soul_sword/soul_slice
execute as @s[scores={chance=4,move=1..,weapontype=2},tag=!nocts] at @s run function fighting/soul_sword/soul_slice2
execute as @s[scores={chance=5,move=1..,weapontype=2},tag=!nocts] at @s run function fighting/soul_sword/throughout_heaven
execute as @s[scores={chance=6,move=1..,weapontype=2},tag=!nocts] at @s run function fighting/soul_sword/crossway_slashes
execute as @s[scores={chance=7,move=1..,weapontype=2},tag=!nocts] at @s run function fighting/soul_sword/judgement_cut

scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


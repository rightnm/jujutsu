execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add fever dummy
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add luck dummy
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add hakarimode dummy
execute unless entity @s[scores={guilty_score=35..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 35
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hakarimode 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] ability2 0
scoreboard players add @s[scores={Energy=0}] domainCD 0
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players set @s[scores={Energy=0}] damageadd 9
scoreboard players set @s[scores={Energy=0}] strength 35
tag  @s[scores={Energy=0}] add roughce
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] Energy 8000


scoreboard players set @s[scores={hakarimode=0,damageadd=!6}] damageadd 6
scoreboard players set @s[scores={hakarimode=0,strength=!30}] strength 30
scoreboard players set @s[scores={hakarimode=1..,damageadd=!10}] damageadd 10
scoreboard players set @s[scores={hakarimode=1..,strength=!40}] strength 40

scoreboard players set @s[scores={domainstart=1..}] fever 80

execute as @s[scores={detect_health=-9999..1}] at @s run function mobs/hakari_death

execute as @s[scores={hakarimode=1..}] run function lovetrain/hakarimode

execute as @s[scores={domainstart=1..}] at @s run tp @s ~~~
execute as @s[scores={domain=1..}] at @s run tp @s ~~~
execute as @s[scores={cutscene=1..}] at @s run tp @s @s

scoreboard players remove @s[scores={Evasive=1..}] Evasive 1
execute if entity @e[family=sukuna,family=projectile,r=10] run scoreboard players set @s Evasive 21
execute if entity @e[family=sukuna,family=projectile,r=10] run scriptevent ds:knockback 1

execute as @s[scores={Energy=750..,hakarimode=0,cutscene=0,Stun=0,Hit=0,move=0,domainstart=0,domain=0,domainCD=0}] at @s if entity @e[scores={domainstart=1..},type=!ds:hakari,r=40] run scoreboard players set @s domainstart 101
execute as @s[scores={Energy=750..,hakarimode=0,cutscene=0,Stun=0,Hit=0,move=0,combat=1..,domainstart=0,domain=0,domainCD=0,detect_health=0..100}] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=30,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=1..},tag=hakaridance] run execute as @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=5,type=!ds:hakari,type=!armor_stand] at @s run tp @s ^^2^-5 facing @s
execute as @s[scores={cutscene=1..},tag=hakaridance] run execute as @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=15,type=!ds:hakari,type=!armor_stand] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={domainstart=1..}] run function lovetrain/idledeathgamble
execute as @s[scores={domain=1..}] run function lovetrain/idledeathgamble2

execute as @s[scores={cutscene=1..},tag=hakaridance] run function lovetrain/hakari_dance

execute as @s[scores={Hit=1..2,cutscene=0,domainstart=0,domain=0,Stun=0..20}] at @s run function _hitdodge

scoreboard players set @s[scores={hakarimode=1..}] domainCD 600

execute as @s[type=ds:hakari,scores={Disabled=0,domainstart=0,domain=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7.5,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] run scoreboard players random @s chance 3 13

execute as @s[type=ds:hakari,scores={Disabled=0,domainstart=0,domain=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=7.5,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=21,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] run scoreboard players random @s chance 14 18

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,domainstart=0,domain=0,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=2.25,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,domainstart=0,domain=0,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=2.25,tag=!unselect,type=!ds:hakari,type=!armor_stand,tag=!Frames,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 3
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players set @s[type=ds:hakari,scores={chance=3,Stun=0,move=0}] move 37
scoreboard players set @s[scores={move=1..}] Disabled 55

scoreboard players set @s[type=ds:hakari,scores={chance=4,Stun=0,move=0}] move 17

scoreboard players set @s[type=ds:hakari,scores={chance=5,Stun=0,move=0}] move 19

scoreboard players set @s[type=ds:hakari,scores={chance=6,Stun=0,move=0},tag=!nocts] move 26

scoreboard players set @s[type=ds:hakari,scores={chance=7,Stun=0,move=0}] move 23

scoreboard players set @s[type=ds:hakari,scores={chance=8,Stun=0,move=0}] move 26

scoreboard players set @s[type=ds:hakari,scores={chance=9,Stun=0,move=0}] move 111
scoreboard players set @s[type=ds:hakari,scores={chance=12..13,Stun=0,move=0}] move 111

scoreboard players set @s[type=ds:hakari,scores={chance=10,Stun=0,move=0}] move 25

scoreboard players set @s[type=ds:hakari,scores={chance=11,Stun=0,move=0},tag=!nocts] move 81

scoreboard players set @s[type=ds:hakari,scores={chance=14,Stun=0,move=0},tag=!nocts] move 21

scoreboard players set @s[type=ds:hakari,scores={chance=15,Stun=0,move=0},tag=!nocts] move 21

scoreboard players set @s[type=ds:hakari,scores={chance=16,Stun=0,move=0},tag=!nocts] move 37


#-----ranged-----

execute unless entity @a[tag=lovetrain] run function lovetrain/lovetrain

execute as @s[scores={chance=3,move=1..}] at @s run function hr/bone_splitter
execute as @s[scores={chance=4,move=1..}] at @s run function hr/hr9
execute as @s[scores={chance=5,move=1..}] at @s run function hr/hr1
execute as @s[scores={chance=6,move=1..},tag=!nocts] at @s run function lovetrain/lucky_fist
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/yuji/dive_kick
execute as @s[scores={chance=8,move=1..}] at @s run function hr/deadly_strike
execute as @s[scores={chance=9,move=1..}] at @s run function lovetrain/fever_combo
execute as @s[scores={chance=10,move=1..}] at @s run function lovetrain/devastating_blow
execute as @s[scores={chance=11,move=1..},tag=!nocts] at @s run function lovetrain/brutal_barrage
execute as @s[scores={chance=12..13,move=1..}] at @s run function lovetrain/fever_combo


execute as @s[scores={chance=14,move=1..},tag=!nocts] at @s run function lovetrain/lovetrain2b
execute as @s[scores={chance=15,move=1..},tag=!nocts] at @s run function lovetrain/lovetrain1b
execute as @s[scores={chance=16,move=1..},tag=!nocts] at @s run function lovetrain/lovetrain4

scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add countdown1 dummy
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] EnergyCap 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] strength 20
execute unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 200
scoreboard players add @s[scores={Energy=0}] countdown1 0
scoreboard players set @s[scores={Energy=0}] Energy 9999


scoreboard players remove @s[scores={EnergyCap=1..}] EnergyCap 1
scoreboard players remove @s[scores={Stun=2..}] Stun 1

execute as @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,type=!armor_stand,family=!despawncito,family=!purecurse,c=1] run scoreboard players set @s combat 800

execute as @s[scores={move=0}] if entity @a[tag=griefable] run kill @e[type=item,r=10]

execute as @s[scores={Hit=1..2,Stun=0..20}] at @s run function _hitdodge

execute as @s[scores={move=0,Stun=0}] unless entity @e[scores={clash=1..2},r=5] run scoreboard players set @s punch 0

execute as @s[scores={move=0,Stun=0}] if entity @e[scores={clash=1..2},r=5] run scoreboard players random @s chance -13 -11
execute as @s[scores={move=0,Stun=0,chance=-11}] if entity @e[scores={clash=1..2},r=5] run scoreboard players set @s punch 1


execute as @s[scores={move=1..}] if entity @a[tag=griefable] run kill @e[type=item,r=30]

effect @s[scores={EnergyCap=0..1}] regeneration 2 2 true
effect @s[scores={EnergyCap=0}] instant_health 1 0 true
scoreboard players set @s[scores={EnergyCap=0}] EnergyCap 140

tag @s[scores={detect_health=0..149,Stun=0},tag=!serious,tag=!phase2cutscene] add phase2cutscene
scoreboard players set @s[scores={detect_health=0..149,cutscene=0,Stun=0},tag=!serious,tag=phase2cutscene] cutscene 133
execute as @s[scores={cutscene=1..},tag=phase2cutscene] run function bosses/finger_bearer/phase


scoreboard players set @s[scores={cutscene=1..}] Disabled 6
scoreboard players set @s[scores={cutscene=1..,move=1..}] move 0
scoreboard players set @s[scores={cutscene=1..,chance=1..}] chance 0

execute as @e[c=1,type=ds:projectile,type=!item,name=FingerArrow] at @s run function bosses/finger_bearer/arrow
execute as @e[c=1,type=ds:projectile,type=!item,name=EnergySpit] at @s run function bosses/finger_bearer/spit
execute as @e[c=1,type=ds:projectile,type=!item,name=EnergyBolt] at @s run function bosses/finger_bearer/bolt
execute as @e[c=1,type=ds:projectile,type=!item,name=FMugetsu] at @s run function bosses/finger_bearer/mugetsu2



execute as @s unless entity @e[type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=80] run effect @s slowness 1 1 true
execute as @s if entity @e[type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=80,rm=7] run effect @s speed 1 0 true
execute as @s if entity @e[type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7] run effect @s speed 0 20 true


execute as @s[type=ds:finger_bearer,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!serious,tag=!hit,tag=!phase2cutscene] at @s if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7.5] run scoreboard players random @s chance 0 10
execute as @s[type=ds:finger_bearer,scores={Disabled=0..5,move=0,cutscene=0,combat=1..},tag=serious,tag=!hit,tag=!phase2cutscene] at @s if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7.5] run scoreboard players random @s chance 0 11

execute as @s[type=ds:finger_bearer,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!serious,tag=!hit,tag=!phase2cutscene] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7.5] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,rm=7.5,r=41] run scoreboard players random @s endurance -7 -1

execute as @s[type=ds:finger_bearer,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!serious,tag=!hit,tag=!phase2cutscene] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7.5] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,rm=7.5,r=41] run scoreboard players random @s chance 12 13
execute as @s[type=ds:finger_bearer,scores={Disabled=0..5,move=0,cutscene=0,combat=1..},tag=serious,tag=!hit,tag=!phase2cutscene] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=7.5] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,rm=7.5,r=41] run scoreboard players random @s chance  12 16

execute as @s[type=ds:finger_bearer,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!serious,tag=!hit,tag=!phase2cutscene] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=41] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,rm=41,r=90] run scoreboard players random @s chance 0 1
execute as @s[type=ds:finger_bearer,scores={Disabled=0..5,move=0,cutscene=0},tag=serious,tag=!hit,tag=!phase2cutscene] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,r=41] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:finger_bearer,c=1,type=!arrow,rm=41,r=90] run scoreboard players random @s chance 0 1

execute as @s[type=ds:finger_bearer,scores={cutscene=0,chance=0,Disabled=0,combat=1..}] at @s unless entity @a[tag=!Frames,r=58,tag=!unselect,c=1] if entity @a[tag=!Frames,r=90,rm=58,tag=!unselect,c=1] run scoreboard players set @s move 0
execute as @s[type=ds:finger_bearer,scores={cutscene=0,chance=0,Disabled=0,combat=1..}] at @s unless entity @a[tag=!Frames,r=58,tag=!unselect,c=1] if entity @a[tag=!Frames,r=90,rm=58,tag=!unselect,c=1] run scoreboard players set @s chance 99

tag @s[scores={countdown1=0}] remove hit
execute as @s[scores={Stun=0,Disabled=7..,move=0,cutscene=0,chance=0,countdown1=0,combat=1..},tag=!phase2cutscene] if entity @e[type=!ds:finger_bearer,family=!projectile,family=!damage,family=!despawncito,type=!item,tag=!unselect,type=!armor_stand,type=!arrow,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={Stun=0,Disabled=7..,move=0,cutscene=0,countdown1=0,combat=1..},tag=!phase2cutscene] if entity @e[type=!ds:finger_bearer,family=!projectile,family=!damage,family=!despawncito,type=!item,tag=!unselect,type=!armor_stand,type=!arrow,r=2.25,c=1] run scoreboard players set @s countdown 7
execute as @s[scores={Stun=0,Disabled=7..,move=0,cutscene=0,combat=1..},tag=!phase2cutscene] if entity @e[type=!ds:finger_bearer,family=!projectile,family=!damage,family=!despawncito,type=!item,tag=!unselect,type=!armor_stand,type=!arrow,r=2.25,c=1] run tag @s add hit

scoreboard players remove @s[scores={countdown1=1..}] countdown1 1

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
scoreboard players set @s[tag=hit] atk 2

execute as @s[tag=hit,scores={chance=1..2}] run function m1

playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2


tag @s[tag=hit] remove hit

scoreboard players set @s[type=ds:finger_bearer,scores={chance=3,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=4,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=5,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 65

scoreboard players set @s[type=ds:finger_bearer,scores={chance=6,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=7,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=8,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=9,Stun=0,move=0}] move 56
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=10,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=10,move=1..}] Disabled 40

scoreboard players set @s[type=ds:finger_bearer,scores={chance=11,Stun=0,move=0}] move 55
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 50

#-----ranged-----

scoreboard players set @s[type=ds:finger_bearer,scores={chance=12,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[type=ds:finger_bearer,scores={chance=13,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 60

scoreboard players set @s[type=ds:finger_bearer,scores={chance=14,Stun=0,move=0}] move 56
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=15,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=15,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:finger_bearer,scores={chance=16,Stun=0,move=0}] move 46
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] Disabled 100

scoreboard players set @s[type=ds:finger_bearer,scores={chance=99,Stun=0,move=0}] move 45
scoreboard players set @s[scores={chance=99,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:finger_bearer,scores={endurance=-3,Stun=0,move=0}] move 65
scoreboard players set @s[scores={endurance=-3,Stun=0,move=1..}] Disabled 8

scoreboard players set @s[scores={move=1..2,endurance=!0}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=!0}] chance 0

execute as @s[scores={endurance=-3,move=1..}] at @s run function bosses/finger_bearer/taunt

execute as @s[scores={chance=3,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/palm_blast
execute as @s[scores={chance=4,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/shockwave
execute as @s[scores={chance=6,move=1..}] at @s run function bosses/finger_bearer/punch1
execute as @s[scores={chance=7,move=1..}] at @s run function bosses/finger_bearer/punch2
execute as @s[scores={chance=8,move=1..}] at @s run function bosses/finger_bearer/kick1
execute as @s[scores={chance=9,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/kick_shoot
execute as @s[scores={chance=10,move=1..}] at @s run function bosses/finger_bearer/ground_slam
execute as @s[scores={chance=11,move=1..}] at @s run function bosses/finger_bearer/barrage

execute as @s[scores={chance=12,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/energy_spit
execute as @s[scores={chance=13,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/finger_arrow
execute as @s[scores={chance=14,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/energy_bolt
execute as @s[scores={chance=15,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/mugetsu
execute as @s[scores={chance=16,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/energy_slash

execute as @s[scores={chance=99,move=1..}] at @s run function bosses/finger_bearer/tp_punch

execute as @s[scores={chance=98,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/temp
execute as @s[scores={chance=97,move=1..},tag=!nocts] at @s run function bosses/finger_bearer/temp
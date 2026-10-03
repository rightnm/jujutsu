execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] run scoreboard objectives add countdown1 dummy
execute as @s[scores={Energy=0}] run scoreboard objectives add phase dummy
execute unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 200
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] flashstep 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] countdown1 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] phase 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] Frames 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players set @s[scores={Energy=0}] damageadd 12
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 46
scoreboard players set @s[scores={Energy=0}] Energy 9999
scoreboard players set @s[scores={detect_health=350..,phase=0}] phase 1

execute if entity @e[family=sukuna,family=projectile,r=10] run scoreboard players set @s[scores={DashCD=0}] DashCD 9

scoreboard players set @s[scores={nocts=3..}] nocts 2

execute as @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,r=50,tag=!unselect,type=!armor_stand,family=!despawncito,type=!ds:toji_reawakened,c=1] run scoreboard players set @s combat 800

scoreboard players set @s[scores={countdown=2350..2400,chance=!10}] chance 10

scoreboard players remove @s[scores={countdown1=1..}] countdown1 1

execute as @s[scores={countdown1=0..2,phase=1}] at @s run execute as @a[r=80] at @s run playsound music.prowess @s ~~~ 0.2 1
execute as @s[scores={countdown1=0..2,phase=2}] at @s run execute as @a[r=80] at @s run playsound music.mahoraga @s ~~~ 0.2 1.025

scoreboard players set @s[scores={phase=1,countdown1=0}] countdown1 2621
scoreboard players set @s[scores={phase=2,countdown1=0}] countdown1 1161

tag @s[scores={detect_health=0..349,cutscene=0,Stun=0,phase=1},tag=!sharpen] add sharpen
scoreboard players set @s[scores={detect_health=0..349,cutscene=0,Stun=0,phase=1},tag=sharpen] cutscene 181
execute as @s[scores={cutscene=1..},tag=sharpen] at @s run function fighting/playfulcloud/sharpen
execute as @s[scores={cutscene=1..},tag=sharpen] at @s run stopsound @a[r=80] music.prowess
execute as @s[scores={cutscene=5..},tag=sharpen] at @s run scoreboard players set @s countdown1 10
replaceitem entity @s[scores={cutscene=1..69},tag=sharpen,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand,quantity=0}] slot.weapon.mainhand 1 ds:playful_cloud_sharpened
scoreboard players set @s[scores={cutscene=1..69,phase=1},tag=sharpen] phase 2
execute as @s[scores={cutscene=1..},tag=sharpen] run tp @s ~~~
tag @s[scores={cutscene=1..3},tag=sharpen] remove sharpen

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge


scoreboard players remove @s[scores={Stun=2..}] Stun 1

playanimation @s[scores={move=0,cutscene=0,Move=0,Camera=0}] animation.toji.idle

scoreboard players random @s[scores={move=0,cutscene=0,Frames=0,Move=0,Camera=0,Hit=1..}] DashCD 1 11
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15] run scoreboard players random @s DashCD 1 10
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames] run scoreboard players random @s DashCD 1 10
scoreboard players set @s[scores={DashCD=1..9,flashstep=0}] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4}] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..}] at @s run scriptevent ds:dashWest
scoreboard players set @s[scores={flashstep=0..3,DashCD=1..}] DashCD 0

scoreboard players set @s[scores={cutscene=1..}] Disabled 25
scoreboard players set @s[scores={cutscene=1..,move=1..}] move 0
scoreboard players set @s[scores={cutscene=1..,chance=1..}] chance 0

execute as @s at @s run execute as @e[type=ds:projectile,name=shockwaveblow,c=1] at @s run function bosses/toji_v2/shockwave
execute as @s at @s run execute as @e[type=ds:sharpened_cloud,name="a literal stick lol",c=1] at @s run function fighting/sharpenedcloud/target_practise2

execute as @s[type=ds:toji_reawakened,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:toji_reawakened,c=1,type=!arrow,r=7.5] run scoreboard players random @s chance 0 9


execute as @s[type=ds:toji_reawakened,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:toji_reawakened,c=1,type=!arrow,r=7.5] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:toji_reawakened,c=1,type=!arrow,rm=7.5,r=41] run scoreboard players random @s chance 9 20

execute as @s[type=ds:toji_reawakened,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:toji_reawakened,c=1,type=!arrow,r=41] if entity @e[tag=!Frames,type=!item,tag=!unselect,family=!despawncito,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!ds:toji_reawakened,c=1,type=!arrow,rm=41,r=90] run scoreboard players random @s chance 0 1

execute as @s[type=ds:toji_reawakened,scores={cutscene=0,Disabled=0,combat=1..}] at @s unless entity @a[tag=!Frames,r=45,tag=!unselect,c=1] if entity @a[tag=!Frames,r=80,rm=45,tag=!unselect,c=1] run scoreboard players set @s chance 99

execute as @s[scores={Stun=0,Disabled=2..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!ds:toji_reawakened,family=!projectile,family=!damage,family=!despawncito,type=!item,tag=!unselect,type=!armor_stand,type=!arrow,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={Stun=0,Disabled=2..,move=0,cutscene=0,combat=1..}] if entity @e[type=!ds:toji_reawakened,family=!projectile,family=!damage,family=!despawncito,type=!item,tag=!unselect,type=!armor_stand,type=!arrow,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.toji.hit
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s[tag=hit] remove hit

scoreboard players set @s[scores={move=1..,chance=3..9}] Disabled 14
scoreboard players set @s[scores={move=1..,chance=10..}] Disabled 40


scoreboard players set @s[type=ds:toji_reawakened,scores={chance=99,Stun=0,move=0}] move 41

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=3,Stun=0,move=0,phase=1}] move 26
scoreboard players set @s[type=ds:toji_reawakened,scores={chance=3,Stun=0,move=0,phase=2}] move 21


scoreboard players set @s[type=ds:toji_reawakened,scores={chance=4,Stun=0,move=0,phase=1}] move 46
scoreboard players set @s[type=ds:toji_reawakened,scores={chance=4,Stun=0,move=0,ability1=0,phase=2}] move 31

execute as @s[type=ds:toji_reawakened,scores={chance=5,Stun=0,move=0,phase=1}] at @s run tp @s ~~2~
scoreboard players set @s[type=ds:toji_reawakened,scores={chance=5,Stun=0,move=0,phase=1}] move 22

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=5,Stun=0,move=0,phase=2}] move 76

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=6,Stun=0,move=0}] move 37

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=7,Stun=0,move=0}] move 26

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=8,Stun=0,move=0}] move 23

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=9,Stun=0,move=0,phase=2}] move 17

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=10,Stun=0,move=0,phase=1}] move 141
scoreboard players set @s[type=ds:toji_reawakened,scores={chance=10,Stun=0,move=0,phase=2}] move 41

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=11,Stun=0,move=0,phase=2}] move 46
scoreboard players set @s[type=ds:toji_reawakened,scores={chance=11,Stun=0,move=0,phase=1}] move 31

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=12,Stun=0,move=0}] move 16

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=14,Stun=0,move=0}] move 31

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=15,Stun=0,move=0}] move 101

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=16,Stun=0,move=0,phase=2}] move 52

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=17,Stun=0,move=0,phase=2}] move 91

scoreboard players set @s[type=ds:toji_reawakened,scores={chance=18,Stun=0,move=0,phase=2}] move 62

execute as @s[scores={move=0,cutscene=0},tag=!heavenlyrestriction] at @s if entity @e[tag=domainactive,r=33] run tag @s add heavenlyrestriction
execute as @s[scores={move=0,cutscene=0},tag=heavenlyrestriction] at @s unless entity @e[tag=domainactive,r=33] run tag @s remove heavenlyrestriction


scoreboard players set @s[scores={chance=19,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=19,Stun=0,move=1..}] Disabled 17
scoreboard players set @s[scores={chance=20,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=20,Stun=0,move=1..}] Disabled 17
execute as @s[scores={chance=19,move=1..}] at @s run function fighting/calamity_claws/cruel_combo
execute as @s[scores={chance=20,move=1..}] at @s run function fighting/calamity_claws/shoulder_bash


#-----ranged-----

execute as @s[scores={chance=3,move=1..,phase=1}] at @s run function fighting/playfulcloud/playful_strike
execute as @s[scores={chance=4,move=1..,phase=1}] at @s run function fighting/playfulcloud/cranial_crush
execute as @s[scores={chance=5,move=1..,phase=1}] at @s run function fighting/playfulcloud/giant_killer

execute as @s[scores={chance=3,move=1..,phase=2}] at @s run function fighting/sharpenedcloud/puncture
execute as @s[scores={chance=4,move=1..,phase=2}] at @s run function fighting/sharpenedcloud/overwhelming_intensity
execute as @s[scores={chance=5,move=1..,phase=2}] at @s run function fighting/sharpenedcloud/repetitive_slashes

execute as @s[scores={chance=6,move=1..}] at @s run function hr/bone_splitter
execute as @s[scores={chance=7,move=1..,phase=2}] at @s run function hr/deadly_strike
execute as @s[scores={chance=8,move=1..}] at @s run function hr/dive_kick
execute as @s[scores={chance=9,move=1..,phase=2}] at @s run function hr/hr9


stopsound @a[r=60] music.onrush
execute as @s[scores={chance=10,move=1..,phase=1}] at @s run function fighting/playfulcloud/onrush
execute as @s[scores={chance=10,move=1..,phase=2}] at @s run function fighting/sharpenedcloud/vorpal_strike
execute as @s[scores={chance=11,move=1..,phase=1}] at @s run function fighting/playfulcloud/flash_blow
execute as @s[scores={chance=11,move=1..,phase=2}] at @s run function fighting/sharpenedcloud/target_practise
execute as @s[scores={chance=12,move=1..}] at @s run function bosses/toji_v2/shockwave_blow
execute as @s[scores={chance=14,move=1..}] at @s run function bosses/toji_v2/sprint_push
execute as @s[scores={chance=15,move=1..,phase=1}] at @s run function bosses/toji_v2/sprint_barrage
execute as @s[scores={chance=16,move=1..,phase=2}] at @s run function hr/hr11
execute as @s[scores={chance=17,move=1..,phase=2}] at @s run function hr/hr12

execute as @s[scores={chance=99,move=1..}] at @s run function hr/hr6


execute as @s[scores={chance=18,move=1..,phase=2}] at @s run function bosses/toji_v2/jetstream

scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


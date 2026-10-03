execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=5..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 5
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] domainCD 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
scoreboard players set @s[scores={Energy=0}] simpledomainown 1
scoreboard players add @s[scores={Energy=0}] simpledomainCD 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] ability2 0
scoreboard players add @s[scores={Energy=0}] ability3 0
scoreboard players add @s[scores={Energy=0}] ability4 0
scoreboard players add @s[scores={Energy=0}] ability5 0
scoreboard players add @s[scores={Energy=0}] ability6 0
scoreboard players add @s[scores={Energy=0}] ability7 0
scoreboard players add @s[scores={Energy=0}] ability8 0
scoreboard players add @s[scores={Energy=0}] ability9 0
scoreboard players add @s[scores={Energy=0}] ability10 0
scoreboard players add @s[scores={Energy=0}] ability11 0
scoreboard players add @s[scores={Energy=0}] ability12 0
scoreboard players add @s[scores={Energy=0}] nocts 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players set @s[scores={Energy=0}] damageadd 10
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 40
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players add @s[scores={Energy=0}] combat 20
scoreboard players set @s[scores={Energy=0}] infinity 200
scoreboard players add @s[scores={Energy=0}] rct 0
scoreboard players add @s[scores={Energy=0}] rctuses 0
tag @s[scores={Energy=0}] add yujis_friend
tag @s[scores={Energy=0}] add limitless
scoreboard players set @s[scores={Energy=0}] Energy 9999


execute as @s at @s if entity @e[family=villain,r=50] run scoreboard players set @s[scores={combat=0}] combat 800
execute as @s at @s if entity @e[family=q_clan,r=50] run scoreboard players set @s[scores={combat=0}] combat 800
execute as @s at @s if entity @e[family=purecurse,r=10] run scoreboard players set @s[scores={combat=0}] combat 100

execute as @s[scores={infinity=1..}] at @s unless entity @e[type=ds:gojo_knockback,r=20] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=10] unless entity @e[scores={domainamp=1..},r=10] run summon ds:gojo_knockback
execute as @s[scores={infinity=1..}] at @s run tp @e[type=ds:knife,r=7] ^^1^1.5 facing @s
execute as @s[scores={infinity=1..}] at @s run tp @e[type=ds:knives,r=7] ^^1^1.5 facing @s



scoreboard players remove @s[scores={levitate=1..}] levitate 1
execute unless block ~~-0.25~ air run scoreboard players set @s[scores={levitate=2..}] levitate 1
effect @s[scores={levitate=1..}] slow_falling 1 4 true
execute unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80] run effect @s slowness 1 2 true
execute unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=12] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80] run effect @s speed 1 0 true
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] run effect @s[scores={infinity=1..,move=0,Frames=1..},tag=Frames] slowness 1 3 true

execute as @s unless entity @a[tag=limitless] run function limitless/limitless

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

scoreboard players set @s[scores={infinity=1..3}] ability1 600
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=0..106,ability1=0}] infinity 105
execute if entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=0..106,ability1=0},tag=domainimmune] infinity 105
scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=107..,ability1=0}] infinity 201
scoreboard players set @s[scores={nocts=1..,infinity=4..}] infinity 3

execute as @s[scores={infinity=1..}] at @s run kill @e[type=ds:dismantle,r=4]
execute as @s[scores={infinity=1..}] at @s run kill @e[type=ds:dismantle_small,r=4]
effect @s[scores={infinity=1..,detect_health=200..}] instant_health 1 5 true

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] run scoreboard players random @s chance 3 11

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30] run scoreboard players random @s chance 10 17

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=90] run scoreboard players random @s chance 16 19

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=2.25] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 3
execute as @s[tag=hit,scores={chance=1..2}] run function m1


scoreboard players set @s[scores={combat=0,detect_health=0..220},type=ds:student_gojo2] rct 5
scoreboard players set @s[scores={detect_health=0..50,rct=0},type=ds:student_gojo2] rct 150

#hiddeninventory
execute as @s[scores={cutscene=1..},tag=hidden_inventory_cutscene] at @s run function mobs/hidden_inventory_cutscene
execute as @s[scores={cutscene=1..},tag=hidden_inventory_cutscene] at @s run execute as @e[type=!player,r=35,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,type=!armor_stand] at @s run tp @s ~~~


#-----melee-----
scoreboard players set @s[scores={chance=19}] chance 11

scoreboard players set @s[scores={detect_health=0..100,ability4=0,chance=1..},type=ds:student_gojo2] chance 17
execute if entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,family=!hero,c=1,r=17] run scoreboard players set @s[scores={chance=17,Stun=0,move=0,ability4=0},type=ds:student_gojo2] chance 18
execute unless entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,family=!hero,c=1,r=17] run scoreboard players set @s[scores={chance=18,Stun=0,move=0,ability4=0},type=ds:student_gojo2] chance 17

scoreboard players set @s[scores={chance=3,Stun=0,move=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=4,Stun=0,move=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 15

execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 42
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 42
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 42
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=6,Stun=0,move=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 20

scoreboard players set @s[scores={chance=7,Stun=0,move=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[scores={chance=8..9,Stun=0,move=0},type=ds:student_gojo2,tag=!nocts] move 41
scoreboard players set @s[scores={chance=8..9,Stun=0,move=1..},type=ds:student_gojo2] Disabled 55

#-----ranged-----


scoreboard players set @s[scores={chance=10..11,Stun=0,move=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=10..11,Stun=0,move=1..}] Disabled 45

scoreboard players set @s[scores={chance=12,Stun=0,move=0,ability2=0},tag=!nocts] move 143
execute as @s[scores={chance=12,move=1..}] at @s run tp @s ~~~
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 120
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] ability2 2000

scoreboard players set @s[scores={chance=13,Stun=0,move=0},tag=!nocts] move 16
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 45

scoreboard players set @s[scores={chance=14,Stun=0,move=0},tag=!nocts] move 16
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 56

execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run scoreboard players set @s[scores={chance=15,Stun=0,move=0}] move 36
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=15,Stun=0,move=0}] move 36
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={chance=15,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=15,Stun=0,move=1..}] Disabled 75

scoreboard players set @s[scores={chance=16,Stun=0,move=0,ability3=0},type=ds:student_gojo2,tag=!nocts] move 51
scoreboard players set @s[scores={chance=16,Stun=0,move=1..},type=ds:student_gojo2] Disabled 125
scoreboard players set @s[scores={chance=16,Stun=0,move=1..},type=ds:student_gojo2] ability3 2000

scoreboard players set @s[scores={chance=17,Stun=0,move=0,ability4=0},type=ds:student_gojo2,tag=!nocts] move 120
scoreboard players set @s[scores={chance=17,Stun=0,move=1..},type=ds:student_gojo2] Disabled 125
scoreboard players set @s[scores={chance=17,Stun=0,move=1..},type=ds:student_gojo2] ability4 6000

scoreboard players set @s[scores={chance=18,Stun=0,move=0,ability4=0},type=ds:student_gojo2,tag=!nocts] move 101
scoreboard players set @s[scores={chance=18,Stun=0,move=1..},type=ds:student_gojo2] Disabled 125
scoreboard players set @s[scores={chance=18,Stun=0,move=1..},type=ds:student_gojo2] ability4 6000
execute as @s[scores={chance=18,move=1..}] at @s run tp @s ~~~

scoreboard players set @s[scores={chance=25,Stun=0,move=0,ability5=0},type=ds:student_gojo2,tag=!nocts] move 481
scoreboard players set @s[scores={chance=25,Stun=0,move=1..},type=ds:student_gojo2] Disabled 125
scoreboard players set @s[scores={chance=25,Stun=0,move=1..},type=ds:student_gojo2] ability5 6000
execute as @s[scores={chance=25,move=1..}] at @s run tp @s ~~~


#moves
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/yuji/divergent_strike
execute as @s[scores={chance=4,move=1..}] at @s run function hr/deadly_strike
execute as @s[scores={chance=5,move=1..}] at @s run function fighting/basic/rush
execute as @s[scores={chance=6,move=1..}] at @s run function fighting/basic/strong_punch
execute as @s[scores={chance=7,move=1..}] at @s run function limitless/shockwave_punch
execute as @s[scores={chance=8..9,move=1..},type=ds:student_gojo2] at @s run function limitless/limitless3
#blues
execute as @s[scores={chance=10,move=1..}] at @s run function limitless/limitless2c
execute as @s[scores={chance=11,move=1..}] at @s run function limitless/limitless2

#max
execute as @s[scores={chance=12,move=1..}] at @s run function limitless/limitless2b
execute as @s[scores={chance=16,move=1..},type=ds:student_gojo2] at @s run function limitless/limitless3c
execute as @s[scores={chance=17,move=1..},type=ds:student_gojo2] at @s run function limitless/levitate_purple
execute as @s[scores={chance=18,move=1..},type=ds:student_gojo2] at @s run function limitless/limitless5
execute as @s[scores={chance=25,move=1..},type=ds:student_gojo2] at @s run function limitless/limitless5b

#spatial
execute as @s[scores={chance=13,move=1..}] at @s run function limitless/limitless4
execute as @s[scores={chance=14,move=1..}] at @s run function limitless/limitless4b
execute as @s[scores={chance=15,move=1..}] at @s run function limitless/limitless4c



scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 200
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] rct 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
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
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players set @s[scores={Energy=0}] damageadd 8
scoreboard players set @s[scores={Energy=0}] forms 12
scoreboard players set @s[scores={Energy=0}] strength 40
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players add @s[scores={Energy=0}] punch 0
scoreboard players set @s[scores={Energy=0}] EnergyCap 200
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
scoreboard players set @s[scores={Energy=0}] domainCD 1200
tag @s[scores={Energy=0}] add flames
scoreboard players set @s[scores={Energy=0}] Energy 5000

execute if entity @e[tag=domainactive,r=55,type=!ds:jogo] run scoreboard players set @s[scores={ability10=0..50},y=297,dy=320] ability10 100
effect @s[scores={EnergyCap=0..1}] regeneration 2 2 true
effect @s[scores={EnergyCap=0}] instant_health 1 0 true
scoreboard players set @s[scores={EnergyCap=0}] EnergyCap 110
scoreboard players remove @s[scores={EnergyCap=1..}] EnergyCap 1

scoreboard players set @s[scores={domainstart=1..,punch=!0}] punch 0
scoreboard players set @s[scores={domain=0,punch=!0}] punch 0
scoreboard players set @s[scores={domain=1..}] combat 800

scoreboard players set @s[scores={domainstart=1..}] domainCD 8000
scoreboard players set @s[scores={domain=1..}] domainCD 8000




#domainactivation
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0..1200,domainstart=0,domain=0}] at @s if entity @e[scores={domainstart=1..},family=!purecurse,r=40] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={strength=20..40,combat=1..},r=50,family=!sukuna,tag=!sukuna,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={infinity=1..,combat=1..},r=50,family=!sukuna,tag=!sukuna,tag=limitless,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @s domainstart 101

execute as @s[scores={domainstart=1..}] run tp @s ~~~~ 0
execute as @s[scores={domain=1..}] run tp @s ~~~~ 0
execute as @s[scores={domainstart=1..}] run function flames/flames7
execute as @s[scores={domain=1..}] run function flames/jogo_domain

execute as @s at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run particle ds:curses_energy1 ~~-0.5~
execute as @s at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run playsound mob.cursed_energy @a ~~1~ 9999 1.25 9999
execute as @s at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run scoreboard players set @s domainamp 75


execute as @s[tag=domainactive,scores={domainstart=0,domain=0}] at @s unless entity @e[scores={combat=1..},r=50,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @e[name=IronMountain,c=1,scores={Deleter=40..},r=50] Deleter 39
execute as @s[tag=domainactive,scores={domainstart=0,domain=0,detect_health=0..45,ability10=0..200}] at @s if entity @e[scores={combat=1..},r=50,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @e[name=IronMountain,c=1,scores={Deleter=40..},r=50] Deleter 39


execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:jogo,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s if entity @e[tag=!Frames,r=7.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 3 19

execute as @s[type=ds:jogo,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s unless entity @e[tag=!Frames,r=7.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] if entity @e[tag=!Frames,r=40,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 20 40

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 1 2
execute as @s[tag=hit,scores={chance=1..2}] run function m1

execute as @s unless entity @a[tag=flames] run function flames/flames


# ult

scoreboard players set @s[scores={chance=1..,Stun=0,move=0,ability10=0,detect_health=0..45,domainstart=0,domain=0}] chance 50

scoreboard players set @s[scores={chance=50,Stun=0,move=0,ability10=0,detect_health=0..45,domainstart=0,domain=0}] move 321
scoreboard players set @s[scores={chance=50,Stun=0,move=1..}] ability10 9999999
scoreboard players set @s[scores={chance=50,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=50,move=1..}] at @s run function flames/flames6c
execute as @s[scores={chance=50,move=1..}] at @s run tp @s ~~~ facing @e[family=!purecurse,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,scores={combat=1..},family=!undead,c=1,r=100]



#other attacks

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=5,move=1..}] at @s run function fighting/hr/deadly_strike

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=6,move=1..}] at @s run function fighting/hr/bone_splitter


scoreboard players set @s[scores={chance=7,Stun=0,move=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=7,move=1..}] at @s run function flames/firepalm

scoreboard players set @s[scores={chance=8,Stun=0,move=0},tag=!nocts] move 36
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=8,move=1..}] at @s run function flames/flamechoke

scoreboard players set @s[scores={chance=9,Stun=0,move=0},tag=!nocts] move 41
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=9,move=1..}] at @s run function flames/inferno_punch

scoreboard players set @s[scores={chance=10,Stun=0,move=0},tag=!nocts] move 56
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=10,move=1..}] at @s run function flames/inferno_strike

scoreboard players set @s[scores={chance=13,Stun=0,move=0},tag=!nocts] move 31
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=13,move=1..}] at @s run function flames/flames1b

scoreboard players set @s[scores={chance=14,Stun=0,move=0},tag=!nocts] move 61
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=14,move=1..}] at @s run function flames/flames1c

scoreboard players set @s[scores={chance=15,Stun=0,move=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=15,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=15,move=1..}] at @s run function flames/flames4



scoreboard players set @s[scores={chance=21..23,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=21..23,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=21..23,move=1..}] at @s run function hr/hr6

scoreboard players set @s[scores={chance=24,Stun=0,move=0,ability1=0},tag=!nocts] move 41
scoreboard players set @s[scores={chance=24,Stun=0,move=1..}] ability1 200
scoreboard players set @s[scores={chance=24,Stun=0,move=1..}] Disabled 125
execute as @s[scores={chance=24,move=1..}] at @s run function flames/flames1

scoreboard players set @s[scores={chance=25,Stun=0,move=0,ability2=0},tag=!nocts] move 152
scoreboard players set @s[scores={chance=25,Stun=0,move=1..}] ability2 6000
scoreboard players set @s[scores={chance=25,Stun=0,move=1..}] Disabled 125
execute as @s[scores={chance=25,move=1..}] at @s run function flames/flames1e

scoreboard players set @s[scores={chance=26,Stun=0,move=0},tag=!nocts] move 41
scoreboard players set @s[scores={chance=26,Stun=0,move=1..}] Disabled 85
execute as @s[scores={chance=26,move=1..}] at @s run function flames/flames2

scoreboard players set @s[scores={chance=27,Stun=0,move=0},tag=!nocts,tag=!nocts] move 14
scoreboard players set @s[scores={chance=27,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=27,move=1..}] at @s run function flames/flames2c

scoreboard players set @s[scores={chance=28,Stun=0,move=0,ability4=0},tag=!nocts] move 66
scoreboard players set @s[scores={chance=28,Stun=0,move=1..}] Disabled 75
scoreboard players set @s[scores={chance=28,Stun=0,move=1..}] ability4 300
execute as @s[scores={chance=28,move=1..}] at @s run function flames/flames3

scoreboard players set @s[scores={chance=29,Stun=0,move=0},tag=!nocts] move 46
scoreboard players set @s[scores={chance=29,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=29,move=1..}] at @s run function flames/flames3b

scoreboard players set @s[scores={chance=30,Stun=0,move=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=30,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=30,move=1..}] at @s run function flames/flames3c

scoreboard players set @s[scores={chance=31,Stun=0,move=0,ability3=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=31,Stun=0,move=1..}] Disabled 75
scoreboard players set @s[scores={chance=31,Stun=0,move=1..}] ability3 300
execute as @s[scores={chance=31,move=1..}] at @s run function flames/flames3d

scoreboard players set @s[scores={chance=32,Stun=0,move=0},tag=!nocts] move 36
scoreboard players set @s[scores={chance=32,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=32,move=1..}] at @s run function flames/flames5c

scoreboard players set @s[scores={chance=33,Stun=0,move=0,ability5=0,detect_health=0..200},tag=!nocts] move 51
scoreboard players set @s[scores={chance=33,Stun=0,move=1..}] ability5 6000
scoreboard players set @s[scores={chance=33,move=1..}] Disabled 25
execute as @s[scores={chance=33,move=1..}] at @s run function flames/flames5d

scoreboard players set @s[scores={chance=34,Stun=0,move=0,ability6=0,detect_health=0..85},tag=!nocts] move 81
scoreboard players set @s[scores={chance=34,Stun=0,move=1..}] ability6 6000
scoreboard players set @s[scores={chance=34,move=1..}] Disabled 25
execute as @s[scores={chance=34,move=1..}] at @s run function flames/flames6
execute as @s[scores={chance=34,move=1..}] at @s run tp @s ~~~ facing @e[family=!purecurse,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,scores={combat=1..},family=!undead,c=1,r=100]



scoreboard players set @s[scores={move=1..3,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0


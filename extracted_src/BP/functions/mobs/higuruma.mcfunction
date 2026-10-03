execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] run scoreboard objectives add weapontype dummy
execute unless entity @s[scores={guilty_score=10..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 10
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
scoreboard players add @s[scores={Energy=0}] domainCD 0
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players set @s[scores={Energy=0}] damageadd 6
scoreboard players set @s[scores={Energy=0}] strength 36
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players set @s[scores={Energy=0}] EnergyCap 200
execute unless entity @s[scores={weapontype=1..}] run scoreboard players set @s[scores={Energy=0}] weapontype 1
scoreboard players set @s[scores={Energy=0}] forms 6
scoreboard players set @s[scores={Energy=0}] domainCD 200
replaceitem entity @s[scores={Energy=0,weapontype=1}] slot.weapon.mainhand 1 ds:gavel1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s[scores={Energy=0}] Energy 2400

scoreboard players set @s[scores={domainstart=1..,punch=1..}] punch 0
scoreboard players set @s[scores={domain=0,punch=1..}] punch 0
scoreboard players set @s[scores={domain=1..}] combat 800

scoreboard players set @s[scores={domainstart=1..}] domainCD 8000
scoreboard players set @s[scores={domain=1..}] domainCD 8000


execute as @s[tag=!domainactive] at @s unless entity @s[scores={domainamp=1..}]  if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run particle ds:cursed_energy1 ~~-0.5~
execute as @s[tag=!domainactive] at @s unless entity @s[scores={domainamp=1..}]  if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run playsound mob.cursed_energy @a ~~1~ 9999 1.25 9999
execute as @s[tag=!domainactive] at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run scoreboard players set @s domainamp 75


scoreboard players set @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={weapontype=!4}] weapontype 4
scoreboard players set @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] EnergyCap 400

#domainactivation
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={domainstart=1..},type=!ds:higuruma,r=40] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={strength=20..},r=50,family=!hero,family=!yuji,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={strength=20..},c=1,r=50,family=yuji] run scoreboard players set @s domainstart 101
execute as @s[scores={domain=49}] at @s run damage @e[tag=on_trial,c=1] 1 entity_attack entity @s
execute as @s[scores={domain=49}] at @s run damage @s 1 entity_attack entity @e[tag=on_trial,c=1]

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,combat=1..,detect_health=0..200}] at @s run damage @s 1 entity_attack entity @a[scores={guilty_score=20..},r=50,tag=!unselect]
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,combat=1..,detect_health=0..200}] at @s if entity @a[scores={guilty_score=20..},r=50,tag=!unselect,c=1] run scoreboard players set @s domainstart 101

execute as @s[scores={domainstart=1..}] run tp @s ~~~
execute as @s[scores={domain=1..}] run tp @s ~~~
execute as @s[scores={domainstart=1..}] run function judgeman/deadlysentencing_start
execute as @s[scores={domain=1..}] run function judgeman/deadlysentencing



execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:higuruma,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s if entity @e[tag=!Frames,r=7.5,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] run scoreboard players random @s chance 3 19

execute as @s[type=ds:higuruma,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s unless entity @e[tag=!Frames,r=7.5,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] if entity @e[tag=!Frames,r=40,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] run scoreboard players random @s chance 20 30

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:higuruma,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 3
execute as @s[tag=hit,scores={chance=1..2}] run function m1

playanimation @s[hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={cutscene=0,domain=0,domainstart=0,move=0},tag=!hit] animation.gavel1.idle
playanimation @s[hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={cutscene=0,domain=0,domainstart=0,move=0},tag=!hit] animation.gavel2.idle
playanimation @s[hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={cutscene=0,domain=0,domainstart=0,move=0},tag=!hit] animation.gavel3.idle

scoreboard players remove @s[scores={EnergyCap=1..}] EnergyCap 1
execute as @s[tag=!domainactive] at @s run tag @s[scores={EnergyCap=0,move=0,Stun=0,Move=0,Camera=0}] add switch
execute as @s[tag=!domainactive] at @s run scoreboard players set @s[scores={EnergyCap=0,move=0,Stun=0,Move=0,Camera=0}] move 11
scoreboard players random @s[tag=!domainactive,tag=switch,scores={EnergyCap=0,move=1..}] EnergyCap 400 1200
execute as @s[tag=!domainactive,tag=switch,scores={move=1..}] at @s run function judgeman/gavel_switch	
execute as @s[tag=!domainactive,tag=switch,scores={move=1..}] at @s run tp @s ~~~


#rct 

scoreboard players set @s[scores={combat=0,detect_health=0..220}] rct 8
scoreboard players set @s[scores={detect_health=0..50,rct=0}] rct 75





#gavels

scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=1}] move 21
execute as @s[scores={chance=3,weapontype=1,move=1..}] at @s run function judgeman/gavel1_ab1

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=1}] move 26
execute as @s[scores={chance=4,weapontype=1,move=1..}] at @s run function judgeman/gavel1_ab2

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=1}] move 41
execute as @s[scores={chance=5,weapontype=1,move=1..}] at @s run function judgeman/gavel1_ab3

scoreboard players set @s[scores={chance=6,Stun=0,move=0,ability1=0,weapontype=1}] move 106
execute as @s[scores={chance=6,weapontype=1,move=1..}] at @s run function judgeman/gavel1_ab4


scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=2}] move 21
execute as @s[scores={chance=3,weapontype=2,move=1..}] at @s run function judgeman/gavel2_ab1

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=2}] move 21
execute as @s[scores={chance=4,weapontype=2,move=1..}] at @s run function judgeman/gavel2_ab2

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=2}] move 51
execute as @s[scores={chance=5,weapontype=2,move=1..}] at @s run function judgeman/gavel2_ab3

scoreboard players set @s[scores={chance=6,Stun=0,move=0,ability1=0,weapontype=2}] move 102
execute as @s[scores={chance=6,weapontype=2,move=1..}] at @s run function judgeman/gavel2_ab4


scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=3}] move 36
execute as @s[scores={chance=3,weapontype=3,move=1..}] at @s run function judgeman/gavel3_ab1

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=3}] move 45
execute as @s[scores={chance=4,weapontype=3,move=1..}] at @s run function judgeman/gavel3_ab2

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=3}] move 36
execute as @s[scores={chance=5,weapontype=3,move=1..}] at @s run function judgeman/gavel3_ab3

scoreboard players set @s[scores={chance=6,Stun=0,move=0,ability1=0,weapontype=3}] move 81
execute as @s[scores={chance=6,weapontype=3,move=1..}] at @s run function judgeman/gavel3_ab4


scoreboard players set @s[scores={chance=3,Stun=0,move=0,weapontype=4}] move 19
execute as @s[scores={chance=3,weapontype=4,move=1..}] at @s run function fighting/executionsword/piercing_strike

scoreboard players set @s[scores={chance=4,Stun=0,move=0,weapontype=4}] move 16
execute as @s[scores={chance=4,weapontype=4,move=1..}] at @s run function fighting/executionsword/falling_light

scoreboard players set @s[scores={chance=5,Stun=0,move=0,weapontype=4}] move 31
execute as @s[scores={chance=5,weapontype=4,move=1..}] at @s run function fighting/executionsword/flashing_light

scoreboard players set @s[scores={chance=6,Stun=0,move=0,ability1=0,weapontype=4}] move 36
execute as @s[scores={chance=6,weapontype=4,move=1..}] at @s run function fighting/executionsword/swift_flash


scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] ability1 400
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 30
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 27
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 27
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 27

#other attacks

scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=9,move=1..}] at @s run function fighting/yuji/divergent_strike


scoreboard players set @s[scores={chance=21..23,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=21..23,Stun=0,move=1..}] Disabled 67
execute as @s[scores={chance=21..23,move=1..}] at @s run function hr/hr6


scoreboard players set @s[scores={move=1..4,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0


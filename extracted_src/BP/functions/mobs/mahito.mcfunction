execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 200
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
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
scoreboard players add @s[scores={Energy=0}] antiheal 0
scoreboard players add @s[scores={Energy=0}] countdown1 0
scoreboard players add @s[scores={Energy=0}] nocts 0
scoreboard players add @s[scores={Energy=0}] instantbody_durability 0
scoreboard players add @s[scores={Energy=0}] detect_health_50p 0
#scoreboard players add @s[scores={Energy=0}] prev_health_damage70p 0
scoreboard players add @s[scores={Energy=0}] prev_health 0
scoreboard players add @s[scores={Energy=0}] damage_taken 0
scoreboard players add @s[scores={Energy=0}] damage 0
scoreboard players add @s[scores={Energy=0}] damagehalf 0
scoreboard players add @s[scores={Energy=0}] damageadd 0
scoreboard players set @s[scores={Energy=0}] forms 12
scoreboard players add @s[scores={Energy=0}] strength 0
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players add @s[scores={Energy=0}] blackflash_amount 0
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] EnergyCap 500
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
scoreboard players add @s[scores={Energy=0}] weapontype 0
scoreboard players add @s[scores={Energy=0}] uniqueid 0
execute as @s[scores={Energy=0,uniqueid=0}] at @s run function uniqueid
scoreboard players set @s[scores={Energy=0}] grade 5
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add human_soul_counter dummy
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add phase dummy
scoreboard players add @s[scores={Energy=0}] phase 0
scoreboard players add @s[scores={Energy=0}] domainamp 0
scoreboard players set @s[scores={Energy=0}] human_soul_counter 80
scoreboard players set @s[scores={Energy=0}] domainCD 4800
tag @s[scores={Energy=0},tag=!idle_transfig] add idle_transfig
tag @s[scores={Energy=0}] add havingcts
scoreboard players set @s[scores={Energy=0}] Energy 5000


effect @s[scores={detect_health=0}] invisibility 15 1 true


execute as @s[scores={atk=1..2},tag=!nocts] at @s unless score auto_idle_kill Mode = one Mode positioned ^^1^2 run execute as @e[family=!special_grade,family=!grade1,r=2,family=human,tag=!purecurse,tag=!Frames] at @s run function idle_transfig/transfigure_touched1
execute as @s[scores={atk=1..2},tag=domainactive,tag=!nocts] at @s unless score auto_idle_kill Mode =  one Mode run execute as @e[family=!special_grade,family=!grade1,r=50,family=human,tag=!purecurse,tag=!Frames,tag=!heavenlyrestriction,family=!heavenlyrestriction] at @s run function idle_transfig/transfigure_touched1

execute as @s[scores={atk=1..2},tag=!nocts] at @s if score auto_idle_kill Mode = one Mode positioned ^^1^2 run execute as @e[family=!yuji,tag=!has_sukuna,tag=!sukuna,r=2,family=human,tag=!purecurse,tag=!Frames,scores={move=0,detect_health=0..100}] at @s run function idle_transfig/transfigure_touched2

execute as @s[scores={chance=1..},tag=domainactive,tag=!nocts] at @s if score auto_idle_kill Mode = one Mode run execute as @e[family=!yuji,tag=!has_sukuna,tag=!sukuna,r=50,family=human,tag=!purecurse,tag=!Frames,tag=!domainimmune,tag=!heavenlyrestriction,family=!heavenlyrestriction] at @s run function idle_transfig/transfigure_touched2

execute as @s[scores={human_soul_counter=0..5},tag=!nocts] at @s if entity @e[family=!special_grade,family=!grade1,r=20,family=human,tag=!purecurse] run function idle_transfig/gather_souls_mob
execute as @s[scores={human_soul_counter=0..5},tag=!nocts] at @s run execute as @e[family=transfigured_human,type=!ds:soul_isomer,r=5] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_human_for_mahito

scoreboard players set @s[scores={thezone=1..},tag=!nocts] antiheal 0
scoreboard players add @s[scores={blackflashlearn=1..,detect_health=0..150},tag=!nocts,tag=!mahito_stage2] agility 1
execute as @s[scores={agility=80..,phase=0,cutscene=0},tag=!nocts,tag=!mahito_stage2] at @s run tag @s[tag=!mahito_stage2_cutscene] add mahito_stage2_cutscene
execute as @s[scores={agility=80..,phase=0,cutscene=0},tag=!nocts,tag=!mahito_stage2] at @s run scoreboard players set @s cutscene 81


scoreboard players add @s[scores={blackflashlearn=1..,detect_health=0..150},tag=!nocts,tag=mahito_stage2,tag=!instant_body,tag=!form12] agility 1
execute as @s[scores={agility=800..,phase=0,cutscene=0},tag=!nocts,tag=mahito_stage2,tag=!instant_body] at @s run tag @s[tag=!form12] add form12
execute as @s[scores={agility=800..,phase=0,cutscene=0},tag=!nocts,tag=mahito_stage2,tag=!instant_body] at @s run scoreboard players set @s cutscene 251
scoreboard players set @s[scores={cutscene=250..},tag=form12] agility 0


execute as @s[tag=mahito_stage2_cutscene,scores={cutscene=1..}] at @s run function idle_transfig/mahito_stage2

event entity @s[tag=instant_body,has_property={property:heart=1..}] heart_off
event entity @s[tag=instant_body,has_property={property:body_transfigure=1..}] mahito_off
event entity @s[tag=instant_body,has_property={property:mahito_weapons=1..}] mahito_metal_off

execute as @s[tag=form12,scores={cutscene=1..}] at @s run function idle_transfig/instant_body_cutscene

scoreboard players remove @s[tag=mahito_stage2,scores={Disabled=10..}] Disabled 1
tag @s[has_property={property:body_transformation=3},tag=!instant_body] add instant_body




event entity @s[scores={move=1..,cutscene=0},has_property={property:body_transfigure=!1}] mahito_on
execute as @s[scores={move=0,cutscene=0,domain=0,domainstart=0},has_property={property:body_transfigure=1..,property:heart=!8,property:heart=!9}] unless entity @s[scores={weapontype=1..}] run event entity @s mahito_off

effect @e[family=yuji,r=20,scores={detect_health=0..80}] instant_health 1 0 true
effect @e[type=ds:todo,r=20,scores={detect_health=0..20}] instant_health 1 0 true

effect @s[scores={detect_health=0..100,antiheal=0},tag=!nocts] instant_health 1 1 true
effect @s[scores={EnergyCap=0..1},tag=!nocts] regeneration 10 1 true
effect @s[scores={EnergyCap=0},tag=!nocts] instant_health 1 0 true

#Switch Wep Type
execute as @s[scores={EnergyCap=0,move=0,Stun=0,domain=0,cutscene=0,domainstart=0,combat=1..},tag=!nocts,tag=!instant_body] at @s run function idle_transfig/mob_fighting_switch
scoreboard players set @s[tag=instant_body,scores={weapontype=!0}] weapontype 0
scoreboard players set @s[scores={EnergyCap=0,combat=1..}] EnergyCap 510
scoreboard players remove @s[scores={EnergyCap=1..,combat=1..}] EnergyCap 1



scoreboard players set @s[scores={domainstart=1..,punch=!0}] punch 0
scoreboard players set @s[scores={domain=0,punch=!0}] punch 0
scoreboard players set @s[scores={domain=1..}] combat 800

scoreboard players set @s[scores={domainstart=1..}] domainCD 8000
scoreboard players set @s[scores={domain=1..}] domainCD 8000


scoreboard players random @s[scores={move=0,cutscene=0,Frames=0,Move=0,Camera=0,Hit=1..},tag=instant_body] DashCD 1 11
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15,tag=instant_body] run scoreboard players random @s DashCD 1 10
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames,tag=instant_body] run scoreboard players random @s DashCD 1 10
scoreboard players set @s[scores={DashCD=1..9,flashstep=0},tag=instant_body] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4},tag=instant_body] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..},tag=instant_body] at @s run scriptevent ds:dashWest
scoreboard players set @s[scores={flashstep=0..3},tag=instant_body] DashCD 0



#domainactivation if clash
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0..2400,domainstart=0,domain=0},tag=!nocts,tag=!instant_body] at @s if entity @e[scores={domainstart=1..},family=!purecurse,r=40] run scoreboard players set @s domainstart 101

#Domain if entity of 20+ strength is nearby
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0},tag=!nocts,tag=!instant_body] at @s if entity @e[scores={strength=20..,combat=1..},r=50,family=!sukuna,tag=!sukuna,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @s domainstart 101

# Cancel Domain if Sukuna/Yuji is nearby after being warned once, moves to 0.2 sec domain if other strong mob is near
execute as @s[scores={domainstart=1..},tag=warned_by_sukuna] at @s unless entity @e[family=human,scores={strength=30..},r=50,family=!yuji,tag=!has_sukuna,family=!sukuna,tag=!sukuna] run scoreboard players set @s domainstart 0


execute as @s[scores={domainstart=1..}] run tp @s ~~~~ 0
execute as @s[scores={domain=1..}] run tp @s ~~~~ 0
execute as @s[scores={domainstart=1..},tag=!warned_by_sukuna] at @s run function idle_transfig/mahito_domain_start
execute as @s[scores={domain=1..},tag=!warned_by_sukuna] at @s run function idle_transfig/mahito_domain

#0.2 domain if yuji/sukuna is nearby but only if there's another mob nearby that is 30.. strength
execute as @s[scores={domainstart=1..},tag=warned_by_sukuna,tag=!instant_body] at @s run function idle_transfig/mahito_domain_start2


execute as @s[tag=!nocts] at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run particle ds:curses_energy1 ~~-0.5~
execute as @s[tag=!nocts] at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run playsound mob.cursed_energy @a ~~1~ 9999 1.25 9999
execute as @s[tag=!nocts] at @s unless entity @s[scores={domainamp=1..}] if entity @e[scores={move=0,cutscene=0,infinity=5..},r=12,tag=limitless] run scoreboard players set @s domainamp 75


execute as @s[tag=domainactive,scores={domainstart=0,domain=0}] at @s unless entity @e[scores={combat=1..},r=50,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @e[type=ds:perfection_domain,c=1,scores={Deleter=40..},r=50] Deleter 39
execute as @s[tag=domainactive,scores={domainstart=0,domain=0,detect_health=0..45,ability10=0..200}] at @s if entity @e[scores={combat=1..},r=50,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players set @e[type=ds:perfection_domain,c=1,scores={Deleter=40..},r=50] Deleter 39


execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:mahito,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s if entity @e[tag=!Frames,r=10,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 3 20

execute as @s[type=ds:mahito,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s unless entity @e[tag=!Frames,r=7.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] if entity @e[tag=!Frames,r=30,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 85 111

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,domainstart=0,domain=0}] if entity @e[r=2.25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 1 2
execute as @s[tag=hit,scores={chance=1..2}] run function m1





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


# True Form Combat
scoreboard players set @s[scores={chance=7,Stun=0,move=0},tag=!nocts,tag=instant_body] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..},tag=instant_body] Disabled 25
execute as @s[scores={chance=7,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab1

scoreboard players set @s[scores={chance=8,Stun=0,move=0},tag=!nocts,tag=instant_body] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..},tag=instant_body] Disabled 25
execute as @s[scores={chance=8,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab2

scoreboard players set @s[scores={chance=9,Stun=0,move=0},tag=!nocts,tag=instant_body] move 31
scoreboard players set @s[scores={chance=9,Stun=0,move=1..},tag=instant_body] Disabled 25
execute as @s[scores={chance=9,move=1..},tag=instant_body] at @s run function fighting/hand_sword/handshake_spin

scoreboard players set @s[scores={chance=10,Stun=0,move=0},tag=!nocts,tag=instant_body] move 51
scoreboard players set @s[scores={chance=10,Stun=0,move=1..},tag=instant_body] Disabled 25
execute as @s[scores={chance=10,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab3

scoreboard players set @s[scores={chance=11,Stun=0,move=0,ability7=0},tag=!nocts,tag=instant_body] move 61
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},tag=instant_body] Disabled 25
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},tag=instant_body] ability7 500
execute as @s[scores={chance=11,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab4

scoreboard players set @s[scores={chance=12,Stun=0,move=0,ability8=0},tag=!nocts,tag=instant_body] move 26
scoreboard players set @s[scores={chance=12,Stun=0,move=1..},tag=instant_body] Disabled 25
scoreboard players set @s[scores={chance=12,Stun=0,move=1..},tag=instant_body] ability8 800
execute as @s[scores={chance=12,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab5


scoreboard players set @s[scores={chance=13,Stun=0,move=0,ability9=0},tag=!nocts,tag=instant_body] move 176
scoreboard players set @s[scores={chance=13,Stun=0,move=1..},tag=instant_body] Disabled 35
scoreboard players set @s[scores={chance=13,Stun=0,move=1..},tag=instant_body] ability9 1200
execute as @s[scores={chance=13,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab6


# Ranged True Form

scoreboard players set @s[scores={chance=89..100,Stun=0,move=0},tag=!nocts,tag=instant_body,tag=instant_body] move 21
scoreboard players set @s[scores={chance=89..100,Stun=0,move=1..},tag=instant_body] Disabled 40
execute as @s[scores={chance=89..100,move=1..},tag=instant_body] at @s run function idle_transfig/instant_body/ab1

scoreboard players set @s[scores={chance=101..105,Stun=0,move=0},tag=!nocts,tag=instant_body,tag=instant_body] move 41
scoreboard players set @s[scores={chance=101..105,Stun=0,move=1..},tag=instant_body] Disabled 40
execute as @s[scores={chance=101..105,move=1..},tag=instant_body] at @s run function hr/hr6

# Base Combat
scoreboard players set @s[scores={chance=7,Stun=0,move=0,weapontype=0},tag=!nocts,tag=!instant_body] move 24
scoreboard players set @s[scores={chance=7,Stun=0,move=1..,weapontype=0},tag=!instant_body] Disabled 25
execute as @s[scores={chance=7,move=1..,weapontype=0},tag=!instant_body] at @s run function idle_transfig/base_ab1

scoreboard players set @s[scores={chance=8,Stun=0,move=0,weapontype=0},tag=!nocts,tag=!instant_body] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..,weapontype=0},tag=!instant_body] Disabled 25
execute as @s[scores={chance=8,move=1..,weapontype=0},tag=!instant_body] at @s run function idle_transfig/base_ab2

scoreboard players set @s[scores={chance=9,Stun=0,move=0,weapontype=0},tag=!nocts,tag=!instant_body] move 16
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,weapontype=0},tag=!instant_body] Disabled 25
execute as @s[scores={chance=9,move=1..,weapontype=0},tag=!instant_body] at @s run function idle_transfig/base_ab3

scoreboard players set @s[scores={chance=10,Stun=0,move=0,weapontype=0},tag=!nocts,tag=!instant_body] move 21
scoreboard players set @s[scores={chance=10,Stun=0,move=1..,weapontype=0},tag=!instant_body] Disabled 25
execute as @s[scores={chance=10,move=1..,weapontype=0},tag=!instant_body] at @s run function idle_transfig/base_ab4



# Blade Combat
scoreboard players set @s[scores={chance=7,Stun=0,move=0,weapontype=1},tag=!nocts,tag=!instant_body] move 24
scoreboard players set @s[scores={chance=7,Stun=0,move=1..,weapontype=1},tag=!instant_body] Disabled 25
execute as @s[scores={chance=7,move=1..,weapontype=1},tag=!instant_body] at @s run function idle_transfig/blade_ab1

scoreboard players set @s[scores={chance=8,Stun=0,move=0,weapontype=1},tag=!nocts,tag=!instant_body] move 24
scoreboard players set @s[scores={chance=8,Stun=0,move=1..,weapontype=1},tag=!instant_body] Disabled 25
execute as @s[scores={chance=8,move=1..,weapontype=1},tag=!instant_body] at @s run function idle_transfig/blade_ab2

scoreboard players set @s[scores={chance=9,Stun=0,move=0,weapontype=1},tag=!nocts,tag=!instant_body] move 41
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,weapontype=1},tag=!instant_body] Disabled 25
execute as @s[scores={chance=9,move=1..,weapontype=1},tag=!instant_body] at @s run function idle_transfig/blade_ab3

scoreboard players set @s[scores={chance=10,Stun=0,move=0,weapontype=1},tag=!nocts,tag=!instant_body] move 41
scoreboard players set @s[scores={chance=10,Stun=0,move=1..,weapontype=1},tag=!instant_body] Disabled 25
execute as @s[scores={chance=10,move=1..,weapontype=1},tag=!instant_body] at @s run function idle_transfig/blade_ab4



# Heavy Combat
scoreboard players set @s[scores={chance=7,Stun=0,move=0,weapontype=2..},tag=!nocts,tag=!instant_body] move 31
scoreboard players set @s[scores={chance=7,Stun=0,move=1..,weapontype=2..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=7,move=1..,weapontype=2..},tag=!instant_body] at @s run function idle_transfig/heavy_ab1

scoreboard players set @s[scores={chance=8,Stun=0,move=0,weapontype=2..},tag=!nocts,tag=!instant_body] move 51
scoreboard players set @s[scores={chance=8,Stun=0,move=1..,weapontype=2..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=8,move=1..,weapontype=2..},tag=!instant_body] at @s run function idle_transfig/heavy_ab2

scoreboard players set @s[scores={chance=9,Stun=0,move=0,weapontype=2..},tag=!nocts,tag=!instant_body] move 38
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,weapontype=2..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=9,move=1..,weapontype=2..},tag=!instant_body] at @s run function idle_transfig/heavy_ab3

scoreboard players set @s[scores={chance=10,Stun=0,move=0,weapontype=2..},tag=!nocts,tag=!instant_body] move 61
scoreboard players set @s[scores={chance=10,Stun=0,move=1..,weapontype=2..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=10,move=1..,weapontype=2..},tag=!instant_body] at @s run function idle_transfig/heavy_ab4


scoreboard players set @s[scores={chance=11,Stun=0,move=0,ability1=0},tag=!nocts,tag=!instant_body] move 61
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},tag=!instant_body] Disabled 75
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},tag=!instant_body] ability1 200
execute as @s[scores={chance=11,move=1..},tag=!instant_body] at @s run function idle_transfig/soul_ab3

scoreboard players set @s[scores={chance=12,Stun=0,move=0},tag=!nocts,tag=!instant_body] move 31
scoreboard players set @s[scores={chance=12,Stun=0,move=1..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=12,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab1

scoreboard players set @s[scores={chance=13,Stun=0,move=0},tag=!nocts,tag=!instant_body] move 41
scoreboard players set @s[scores={chance=13,Stun=0,move=1..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=13,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab2

scoreboard players set @s[scores={chance=14,Stun=0,move=0,ability2=0},tag=!nocts,tag=!instant_body] move 71
scoreboard players set @s[scores={chance=14,Stun=0,move=1..},tag=!instant_body] Disabled 25
scoreboard players set @s[scores={chance=14,Stun=0,move=1..},tag=!instant_body] ability2 200
execute as @s[scores={chance=14,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab4

execute as @s[scores={chance=15},tag=!nocts] at @s unless entity @e[family=human,scores={strength=30..},rm=15,tag=!instant_body] run scoreboard players random @s chance 3 14
scoreboard players set @s[scores={chance=15,Stun=0,move=0,ability3=0,detect_health=0..200},tag=!nocts,tag=!instant_body] move 101
scoreboard players set @s[scores={chance=15,Stun=0,move=1..},tag=!instant_body] Disabled 25
scoreboard players set @s[scores={chance=15,Stun=0,move=1..},tag=!instant_body] ability3 800
execute as @s[scores={chance=15,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab5


# Black Flash
scoreboard players set @s[scores={chance=16,Stun=0,move=0,ability4=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] Disabled 25
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] ability4 600
execute as @s[scores={chance=16,move=1..}] at @s run function idle_transfig/base_ab4


# Basic Human Soul Moves
scoreboard players set @s[scores={chance=17,Stun=0,move=0,human_soul_counter=3..},tag=!nocts,tag=!instant_body] move 31
scoreboard players set @s[scores={chance=17,Stun=0,move=1..},tag=!instant_body] Disabled 25
execute as @s[scores={chance=17,move=1..},tag=!instant_body] at @s run function idle_transfig/human_ab1
scoreboard players remove @s[scores={chance=17,move=5,human_soul_counter=2..},tag=!instant_body] human_soul_counter 2

scoreboard players set @s[scores={chance=18,Stun=0,move=0,human_soul_counter=3..},tag=!nocts,tag=!instant_body] move 41
scoreboard players set @s[scores={chance=18,Stun=0,move=1..},tag=!instant_body] Disabled 5
execute as @s[scores={chance=18,move=1..},tag=!instant_body] at @s run function idle_transfig/human_ab3
scoreboard players remove @s[scores={chance=18,move=5,human_soul_counter=3..},tag=!instant_body] human_soul_counter 3




scoreboard players set @s[scores={chance=19..20,Stun=0,move=0,human_soul_counter=3..},tag=!nocts,tag=mahito_stage2] move 21
scoreboard players set @s[scores={chance=19..20,Stun=0,move=1..},tag=!instant_body] Disabled 5
execute as @s[scores={chance=19..20,move=1..},tag=mahito_stage2,tag=!instant_body] at @s run function idle_transfig/human_ab5
scoreboard players remove @s[scores={chance=19..20,move=5,human_soul_counter=3..},tag=!instant_body] human_soul_counter 2


# Ranged Moves



execute as @s[scores={chance=90..92,human_soul_counter=1..},tag=!nocts,tag=!instant_body] at @s run function idle_transfig/transfigure_human_unstable1
execute as @s[scores={chance=93..95,human_soul_counter=1..},tag=!nocts,tag=!instant_body] at @s run function idle_transfig/transfigure_human_unstable2
execute as @s[scores={chance=96..97,human_soul_counter=3..},tag=!nocts,tag=!instant_body] at @s run function idle_transfig/transfigure_human_unstable3

execute as @s[scores={chance=87..89,human_soul_counter=1..},tag=!nocts,tag=!instant_body] at @s if entity @a[r=40] run function idle_transfig/transfigure_human_stable2
execute as @s[scores={chance=85..86,human_soul_counter=1..},tag=!nocts,tag=!instant_body] at @s run summon ds:transfigured_human ^^^-1
scoreboard players set @s[scores={chance=85..97}] Disabled 5
scoreboard players set @s[scores={chance=85..97}] chance 0


scoreboard players set @s[scores={chance=98,Stun=0,move=0,ability2=0},tag=!nocts,tag=!instant_body] move 71
scoreboard players set @s[scores={chance=98,Stun=0,move=1..},tag=!instant_body] Disabled 15
scoreboard players set @s[scores={chance=98,Stun=0,move=1..},tag=!instant_body] ability2 200
execute as @s[scores={chance=98,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab4


scoreboard players set @s[scores={chance=99..101,Stun=0,move=0,weapontype=0},tag=!nocts,tag=!instant_body] move 24
scoreboard players set @s[scores={chance=99..101,Stun=0,move=1..,weapontype=0},tag=!instant_body] Disabled 15
execute as @s[scores={chance=99..101,move=1..,weapontype=0},tag=!instant_body] at @s run function idle_transfig/base_ab1


scoreboard players set @s[scores={chance=102,Stun=0,move=0,ability6=1..},tag=!nocts,tag=!instant_body] chance 110
scoreboard players set @s[scores={chance=102,Stun=0,move=0,ability6=0},tag=!nocts,tag=!instant_body] move 86
scoreboard players set @s[scores={chance=102,Stun=0,move=0},tag=!instant_body] ability6 800
scoreboard players set @s[scores={chance=102,Stun=0,move=1..},tag=!instant_body] Disabled 15
execute as @s[scores={chance=102,move=1..},tag=!instant_body] at @s run function idle_transfig/body_ab3


scoreboard players set @s[scores={chance=103..105,Stun=0,move=0,human_soul_counter=3..},tag=!nocts,tag=!instant_body] move 31
scoreboard players set @s[scores={chance=103..105,Stun=0,move=1..},tag=!instant_body] Disabled 15
execute as @s[scores={chance=103..105,move=1..},tag=!instant_body] at @s run function idle_transfig/human_ab2
scoreboard players remove @s[scores={chance=103..105,move=5,human_soul_counter=3..},tag=!instant_body] human_soul_counter 3


scoreboard players set @s[scores={chance=111,Stun=0,move=0,human_soul_counter=7..,ability5=1..},tag=!instant_body] chance 110

scoreboard players set @s[scores={chance=106..110,Stun=0,move=0,human_soul_counter=3..},tag=!nocts,tag=!instant_body] move 41
scoreboard players set @s[scores={chance=106..110,Stun=0,move=1..},tag=!instant_body] Disabled 15
execute as @s[scores={chance=106..110,move=1..},tag=!instant_body] at @s run function idle_transfig/human_ab3
scoreboard players remove @s[scores={chance=106..110,move=5,human_soul_counter=3..},tag=!instant_body] human_soul_counter 3



scoreboard players set @s[scores={chance=111,Stun=0,move=0,human_soul_counter=7..,ability5=0},tag=!nocts,tag=!instant_body] move 61
scoreboard players set @s[scores={chance=111,Stun=0,move=1..},tag=!instant_body] Disabled 15
scoreboard players set @s[scores={chance=111,Stun=0,move=1..},tag=!instant_body] ability5 750
execute as @s[scores={chance=111,move=1..},tag=!instant_body] at @s run function idle_transfig/human_ab4
scoreboard players remove @s[scores={chance=111,move=5,human_soul_counter=7..},tag=!instant_body] human_soul_counter 7



scoreboard players set @s[scores={move=1..3,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0


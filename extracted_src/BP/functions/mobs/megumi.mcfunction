execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=10..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 10
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] rct 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] Hit 0
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
scoreboard players add @s[scores={Energy=0}] ability11 0
scoreboard players add @s[scores={Energy=0}] ability12 0
scoreboard players add @s[scores={Energy=0}] domainCD 0 
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
scoreboard players add @s[scores={Energy=0}] punch 0
scoreboard players set @s[scores={Energy=0}] damageadd 4
scoreboard players set @s[scores={Energy=0}] strength 22
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players set @s[scores={Energy=0}] EnergyCap 200
tag @s[scores={Energy=0}] add yujis_friend
scoreboard players set @s[scores={Energy=0}] forms 12
execute as @s[scores={Energy=0}] at @s positioned ~~-300~ run function megumispawn
tag @s[scores={Energy=0}] add shikigami
replaceitem entity @s[scores={detect_health=81..,Energy=0},hasitem={item=ds:black_blade,location=slot.weapon.mainhand,quantity=0}] slot.weapon.mainhand 1 ds:black_blade 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s[scores={Energy=0}] Energy 3500

scoreboard players set @s[scores={detect_health=81..},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] domainCD 100

replaceitem entity @s[scores={detect_health=0..80},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] slot.weapon.mainhand 1 air

scoreboard players set @s[scores={domain=0,domainstart=0}] punch 1
scoreboard players set @s[scores={domainstart=1..,punch=1..}] punch 0
scoreboard players set @s[scores={domain=0,punch=1..}] punch 0
scoreboard players set @s[scores={domain=1..}] combat 800

scoreboard players set @s[scores={domainstart=1..}] domainCD 8000
scoreboard players set @s[scores={domain=1..}] domainCD 8000

#domainactivation
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={domainstart=1..},type=!ds:megumi,r=40,c=1,family=!hero] run scoreboard players set @s domainstart 101

execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,detect_health=0..80}] at @s unless entity @e[type=ds:haruta,r=50] if entity @e[scores={strength=20..},r=50,family=!hero,tag=!unselect,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,type=!armor_stand,c=1] run scoreboard players set @s domainstart 101


execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,combat=1..,detect_health=0..70}] at @s run damage @s 1 entity_attack entity @a[scores={combat=1..},c=1,r=50,tag=!unselect]
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,combat=1..,detect_health=0..70}] at @s if entity @a[scores={combat=1..},c=1,r=50,tag=!unselect] run scoreboard players set @s domainstart 101

execute as @s[scores={domainstart=1..}] run tp @s ~~~
execute as @s[scores={domain=1..}] run tp @s ~~~
execute as @s[scores={domainstart=1..}] run function shikigami/shikigami12
execute as @s[scores={domain=1..}] run function shikigami/megumi_domain

event entity @s[scores={combat=1..,detect_health=0..80},has_property={property:megumi_phase=!1}] megumi_phase


execute as @s unless entity @a[tag=shikigami] run function shikigami/shikigami

execute as @s[scores={Stun=0..20,cutscene=0}] at @s if entity @e[scores={atk=1..2},family=special_grade,r=50] run function _hitdodge
execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:megumi,scores={Disabled=0,move=0,cutscene=0,combat=1..,domainstart=0,domain=0},tag=!hit] at @s if entity @e[tag=!Frames,family=!shikigami,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:megumi,r=7.5,c=1] run scoreboard players random @s chance 3 19



tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,domainstart=0,domain=0}] if entity @e[family=!shikigami,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:megumi,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,domainstart=0,domain=0}] if entity @e[family=!shikigami,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:megumi,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 4 5
execute as @s[tag=hit,scores={chance=1..2}] run function m1


execute as @s[scores={detect_health=1..105,chance=1..,move=0,cutscene=0,Stun=0}] at @s if entity @e[scores={detect_health=200..},family=!hero,family=!shikigami,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:megumi,r=50,c=1] run scoreboard players random @s chance 36 38
scoreboard players random @s[scores={chance=30..37,move=0,cutscene=0,Stun=0}] chance 1 17

tag @s[scores={dying=1..},tag=!dying] add dying
playanimation @s[scores={dying=1..}] animation.knockback
scoreboard players set @s[scores={dying=1..,chance=1..}] chance 0
scoreboard players set @s[scores={dying=1..,Disabled=1..}] Disabled 0

scoreboard players set @s[scores={chance=6..,move=1..}] Disabled 100
execute as @s[scores={chance=6..,move=0}] at @s if entity @e[family=shikigami,r=50,c=1] run scoreboard players random @s chance 1 5

execute as @s[scores={chance=6..,move=0,detect_health=0..80}] at @s unless entity @e[family=divinedog,r=50,c=1] run function shikigami/shikigami/totality_born



execute as @s[scores={detect_health=0..20,move=0,chance=1..}] at @s if entity @e[type=ds:haruta,r=50] run scoreboard players set @s ability10 0
execute as @s[scores={detect_health=0..20,move=0,chance=1..}] at @s if entity @e[type=ds:haruta,r=50] run scoreboard players set @s chance 18
scoreboard players set @s[scores={dying=1..,chance=1..}] chance 0
kill @s[scores={dying=1..4}]

#other attacks
execute as @s[scores={domain=1..}] at @s if entity @e[type=ds:finger_bearer,r=50,c=1] run effect @s instant_health 1 5 true

scoreboard players set @s[scores={chance=3,Stun=0,move=0},hasitem={item=ds:black_blade,location=slot.weapon.mainhand,quantity=0}] move 21
execute as @s[scores={chance=3,move=1..},hasitem={item=ds:black_blade,location=slot.weapon.mainhand,quantity=0}] at @s run function fighting/basic/strong_punch
scoreboard players set @s[scores={chance=3,Stun=0,move=0},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] move 26
execute as @s[scores={chance=3,move=1..},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] at @s run function fighting/black_blade/overhead

scoreboard players set @s[scores={chance=4,Stun=0,move=0},hasitem={item=ds:black_blade,location=slot.weapon.mainhand,quantity=0}] move 31
execute as @s[scores={chance=4,move=1..},hasitem={item=ds:black_blade,location=slot.weapon.mainhand,quantity=0}] at @s run function fighting/basic/rush
scoreboard players set @s[scores={chance=4,Stun=0,move=0},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] move 41
execute as @s[scores={chance=4,move=1..},hasitem={item=ds:black_blade,location=slot.weapon.mainhand}] at @s run function fighting/black_blade/umbral_rush

scoreboard players set @s[scores={chance=5,Stun=0,move=0},tag=!nocts] move 26
execute as @s[scores={chance=5,move=1..}] at @s run function fighting/yuji/divergent_strike

#shikigami
scoreboard players set @s[scores={chance=6,Stun=0,move=0,ability1=0},tag=!nocts] move 40
execute as @s[scores={chance=6,move=1..}] at @s run function shikigami/shikigami1
scoreboard players set @s[scores={chance=6,move=1..}] ability1 400
execute as @s[scores={chance=6,move=3..4}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={chance=6,move=4}] at @s run spreadplayers ~ ~ 17 30 @s
execute as @s[scores={ability1=1..4}] at @s run scoreboard players set @e[type=ds:rabbitescape,r=50] Deleter 9


scoreboard players set @s[scores={chance=7,Stun=0,move=0,ability2=0},tag=!nocts] move 40
execute as @s[scores={chance=7,move=1..}] at @s run function shikigami/shikigami2
scoreboard players set @s[scores={chance=7,move=1..}] ability2 400
execute as @s[scores={ability2=1..4}] at @s run scoreboard players set @e[type=ds:toad,r=50] Deleter 9


scoreboard players set @s[scores={chance=8,Stun=0,move=0,ability3=0},tag=!nocts] move 40
execute as @s[scores={chance=8,move=1..}] at @s run function shikigami/shikigami3
scoreboard players set @s[scores={chance=8,move=1..}] ability3 900
execute as @s[scores={ability3=1..4}] at @s run scoreboard players set @e[family=divinedog,r=50,type=!ds:totality] Deleter 9

execute as @s[scores={ability3=1..}] at @s if entity @e[type=ds:totality,r=50] run scoreboard players set @s ability3 999999999

scoreboard players set @s[scores={chance=9..11,Stun=0,move=0,ability4=0},tag=!nocts] move 21
execute as @s[scores={chance=9,move=1..}] at @s run function shikigami/shikigami4b
execute as @s[scores={chance=10..11,move=1..}] at @s run function shikigami/shikigami4
execute as @s[scores={chance=11,move=19..}] at @s run tp @s ^^1^1 
scoreboard players set @s[scores={chance=9..11,move=1..}] ability4 200
scoreboard players set @s[scores={chance=9..11,move=1..5}] detect_jump 0

scoreboard players set @s[scores={chance=12..13,Stun=0,move=0,ability5=0},tag=!nocts] move 40
execute as @s[scores={chance=12,move=1..}] at @s run function shikigami/shikigami5
execute as @s[scores={chance=13,move=1..}] at @s run function shikigami/shikigami5b
scoreboard players set @s[scores={chance=12..13,move=1..}] ability5 400
execute as @s[scores={ability5=1..4}] at @s run scoreboard players set @e[type=ds:serpent,r=50] Deleter 9

scoreboard players set @s[scores={chance=14..15,Stun=0,move=0,ability6=0},tag=!nocts] move 40
execute as @s[scores={chance=14,move=1..}] at @s run function shikigami/shikigami7
execute as @s[scores={chance=15,move=1..}] at @s run function shikigami/shikigami7b
scoreboard players set @s[scores={chance=14..15,move=1..}] ability6 700
execute as @s[scores={ability6=1..4}] at @s run scoreboard players set @e[type=ds:maxelephant,r=50] Deleter 9

execute as @s[scores={chance=38,move=0,Stun=0,cutscene=0,Disabled=0,ability10=0,domainactive=1..},tag=shadowgardendomain] at @s unless entity @e[type=ds:finger_bearer,r=50,c=1] unless entity @e[family=yuji,r=50,c=1] run scoreboard players set @e[type=ds:projectile,r=50,name=ChimeraGarden1,c=1,scores={Deleter=22..}] Deleter 21
execute as @s[scores={chance=38,move=0,Stun=0,cutscene=0,Disabled=0,ability10=0}] at @s unless entity @e[type=ds:finger_bearer,r=50,c=1] unless entity @e[family=yuji,r=50,c=1] run scoreboard players set @s move 706
execute as @s[scores={chance=38,move=1..}] at @s run function shikigami/shikigami10_fight
execute as @s[scores={chance=38,move=1..}] at @s run tp @s ~~~
scoreboard players set @s[scores={chance=38,move=701..}] ability10 9999999



execute as @s[scores={chance=18,move=0,Stun=0,cutscene=0,Disabled=0,ability10=0,detect_health=0..20,domainactive=1..},tag=shadowgardendomain,tag=!nocts] at @s unless entity @e[type=ds:finger_bearer,r=50,c=1] unless entity @e[family=yuji,r=50,c=1] run scoreboard players set @e[type=ds:projectile,r=50,name=ChimeraGarden1,c=1,scores={Deleter=22..}] Deleter 21


execute as @s[scores={chance=18,move=0,Stun=0,cutscene=0,Disabled=0,ability10=0,detect_health=0..20},tag=!nocts] at @s run kill @e[family=shikigami,r=33]
execute as @s[scores={chance=18,move=0,Stun=0,cutscene=0,Disabled=0,ability10=0,detect_health=0..20},tag=!nocts] at @s unless entity @e[type=ds:finger_bearer,r=50,c=1] unless entity @e[family=yuji,r=50,c=1] run scoreboard players set @s move 706
execute as @s[scores={chance=18,move=1..},tag=!nocts] at @s run function shikigami/shikigami10_fight
execute as @s[scores={chance=18,move=1..},tag=!nocts] at @s run tp @s ~~~
scoreboard players set @s[scores={chance=18,move=701..},tag=!nocts] ability10 9999999









scoreboard players set @s[scores={move=1..3,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0


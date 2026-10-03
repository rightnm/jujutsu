execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] at @s run scoreboard objectives add combotimer dummy
execute unless entity @s[scores={guilty_score=10..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 10
scoreboard players add @s[scores={Energy=0}] combotimer 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
execute unless entity @s[scores={domainCD=0..}] run scoreboard players set @s[scores={Energy=0}] domainCD 1200
scoreboard players add @s[scores={Energy=0}] domain 0
scoreboard players add @s[scores={Energy=0}] domainstart 0
scoreboard players add @s[scores={Energy=0}] domainactive 0
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
scoreboard players add @s[scores={Energy=0}] wep1 0
scoreboard players add @s[scores={Energy=0}] wep2 0
scoreboard players add @s[scores={Energy=0}] wep3 0
scoreboard players add @s[scores={Energy=0}] wep4 0
scoreboard players add @s[scores={Energy=0}] wep5 0
scoreboard players add @s[scores={Energy=0}] nocts 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players add @s[scores={Energy=0}] damageadd 0
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players add @s[scores={Energy=0}] strength 0
scoreboard players add @s[scores={Energy=0}] bluefist 0
scoreboard players add @s[scores={Energy=0}] levitate 0
execute unless entity @s[scores={blackflashlearn=1..}] run scoreboard players set @s[scores={Energy=0}] blackflashlearn 1
scoreboard players set @s[scores={Energy=0}] infinity 200
scoreboard players add @s[scores={Energy=0}] rct 0
scoreboard players add @s[scores={Energy=0}] rctuses 0
scoreboard players add @s[scores={Energy=0}] thezone 0
scoreboard players add @s[scores={Energy=0}] Frames 0
execute unless entity @s[scores={simpledomainown=1..}] run scoreboard players set @s[scores={Energy=0}] simpledomainown 1
scoreboard players add @s[scores={Energy=0}] simpledomainCD 0
tag @s[scores={Energy=0}] add limitless
scoreboard players set @s[scores={Energy=0}] Energy 9999


scoreboard players set @s[scores={thezone=199,rctuses=1..599}] rctuses 0
scoreboard players remove @s[scores={thezone=199,rctuses=600..}] rctuses 600
scoreboard players set @s[scores={nocts=0,strength=!55}] strength 55
scoreboard players set @s[scores={nocts=1..,strength=!44}] strength 44
scoreboard players set @s[scores={bluefist=0,damageadd=!12}] damageadd 12
scoreboard players set @s[scores={bluefist=1..,damageadd=!24}] damageadd 24
scoreboard players set @s[scores={domainstart=1..}] domainCD 8000
scoreboard players set @s[scores={domain=1..}] domainCD 8000
scoreboard players remove @s[scores={detect_health=0..399,Disabled=1..,move=0,cutscene=0}] Disabled 1
scoreboard players remove @s[scores={combotimer=1..}] combotimer 1
scoreboard players remove @s[scores={levitate=1..}] levitate 1
execute unless block ~~-0.25~ air run scoreboard players set @s[scores={levitate=2..}] levitate 1
effect @s[scores={levitate=1..}] slow_falling 1 4 true
execute unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80] run effect @s slowness 1 2 true
execute unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=12] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80] run effect @s speed 1 0 true
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] run effect @s[scores={infinity=1..,move=0,Frames=1..},tag=Frames] slowness 1 3 true


execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={domainstart=1..},family=!hero,r=40] run scoreboard players set @s domainstart 102
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s unless entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1,r=80,family=!dummy] if entity @e[scores={domainstart=1..},r=40,family=!gojo] run scoreboard players set @s domainstart 102
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={strength=20..,combat=1..},r=40,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1] run scoreboard players set @s domainstart 102
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s unless entity @e[r=80,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1,family=!dummy] if entity @e[scores={strength=20..,combat=1..},r=40,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,c=1,family=!gojo] run scoreboard players set @s domainstart 102
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s if entity @e[scores={infinity=1..,combat=1..},r=40,tag=limitless,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1] run scoreboard players set @s domainstart 102
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0}] at @s unless entity @e[r=80,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1,family=!dummy] if entity @e[scores={infinity=1..,combat=1..},r=40,tag=limitless,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1] run scoreboard players set @s domainstart 102

execute as @s[tag=domainactive,scores={domainstart=0,domain=0}] at @s if score mobeventstoggle Mode = two endurance unless entity @e[scores={combat=1..},r=50,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1] run scoreboard players set @e[name=UnlimitedVoid,c=1,scores={Deleter=32..},r=50] Deleter 31
execute as @s[tag=domainactive,scores={domainstart=0,domain=0}] at @s unless score mobeventstoggle Mode = two endurance unless entity @e[scores={combat=1..},r=50,type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1] run scoreboard players set @e[name=UnlimitedVoid,c=1,scores={Deleter=32..},r=50] Deleter 31


tag @s[scores={domainstart=102,detect_health=0..399},tag=!quickdomain] add quickdomain
execute as @s[scores={domainstart=1..}] run tp @s ~~~
execute as @s[scores={domain=1..}] run tp @s ~~~
execute as @s[scores={domainstart=1..},tag=!quickdomain] run function limitless/limitless6
execute as @s[scores={domain=1..},tag=!quickdomain] run function limitless/gojo_domain
execute as @s[scores={domainstart=1..},tag=quickdomain] run function limitless/limitless6a
execute as @s[scores={domain=1..},tag=quickdomain] run function limitless/gojo_domain_quick
execute as @s unless entity @a[tag=limitless] run function limitless/limitless

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge
scoreboard players random @s[scores={move=0,cutscene=0,Move=0,Camera=0,Hit=1..},tag=!Frames] DashCD 1 11
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0,Move=0},tag=!Frames] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15] run scoreboard players random @s DashCD 1 10
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0,Move=0},tag=!Frames] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames] run scoreboard players random @s DashCD 1 10
scoreboard players set @s[scores={DashCD=1..11,flashstep=0,Move=0,nocts=0}] flashstep 6
scoreboard players set @s[scores={DashCD=2..7,flashstep=0,Move=0,nocts=1..}] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4}] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..}] at @s run scriptevent ds:dashWest
effect @s[scores={flashstep=6,nocts=0}] invisibility 1 0 true
execute as @s[scores={flashstep=6,nocts=0}] at @s run particle ds:evade ~~~
execute as @s[scores={flashstep=6,nocts=0}] at @s run particle ds:dirt2 ~~~
execute as @s[scores={flashstep=6,nocts=0}] at @s run particle ds:evade1 ~~~
execute as @s[scores={flashstep=6,nocts=0}] at @s run particle ds:evade2 ~~~
execute as @s[scores={flashstep=6,nocts=0}] at @s run particle ds:evade3 ~~~
execute as @s[scores={flashstep=1,nocts=0}] at @s run particle ds:evade ~~~
execute as @s[scores={flashstep=1,nocts=0}] at @s run particle ds:dirt2 ~~~
execute as @s[scores={flashstep=1,nocts=0}] at @s run particle ds:evade1 ~~~
execute as @s[scores={flashstep=1,nocts=0}] at @s run particle ds:evade2 ~~~
execute as @s[scores={flashstep=1,nocts=0}] at @s run particle ds:evade3 ~~~
effect @s[scores={flashstep=1,nocts=0}] invisibility 0 1 true
scoreboard players set @s[scores={flashstep=0..3,DashCD=1..}] DashCD 0

scoreboard players set @s[scores={infinity=1..3}] ability1 600
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=0..106,ability1=0}] infinity 105
execute if entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=0..106,ability1=0},tag=domainimmune] infinity 105
scoreboard players set @s[scores={Stun=0,Hit=0,nocts=0,infinity=107..,ability1=0}] infinity 201
scoreboard players set @s[scores={nocts=1..,infinity=4..}] infinity 3

execute as @s[scores={infinity=1..}] at @s run kill @e[type=ds:dismantle,r=4]
execute as @s[scores={infinity=1..}] at @s run kill @e[type=ds:dismantle_small,r=4]
effect @s[scores={infinity=1..,detect_health=450..}] instant_health 1 5 true

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] run scoreboard players random @s chance 3 12

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=7.5] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30] run scoreboard players random @s chance 10 17

execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[scores={combat=1..},tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80] run scoreboard players random @s chance 10 17

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,combotimer=0}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,chance=1..2,combotimer=0}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=2.25] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 3
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players remove @s[scores={combat=0,rctuses=1..}] rctuses 1
scoreboard players set @s[scores={combat=0,detect_health=0..499}] rct 5
scoreboard players set @s[scores={detect_health=0..400,rct=0}] rct 150


execute if entity @e[type=ds:simple_domain,r=20] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=20] run effect @s[tag=!Frames,tag=domainimmune] slowness 1 2 true
execute if entity @e[type=ds:simple_domain,r=20] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=20] run effect @s[tag=domainimmune,tag=Frames] slowness 1 3 true
execute if entity @e[type=ds:simple_domain,r=20] unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=20] run effect @s[tag=domainimmune] slowness 1 5 true
execute if entity @e[type=ds:simple_domain,r=10,rm=7] at @e[type=ds:simple_domain,r=10,rm=7,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run effect @s[tag=domainimmune] slowness 1 5 true
execute if entity @e[type=ds:simple_domain,r=20,rm=16] run effect @s[tag=domainimmune] slowness 1 5 true

execute as @s[scores={cutscene=0,Stun=0,Hit=0,simpledomainCD=0,move=0},tag=!domainimmune,tag=!simpledomain,tag=!domainactive] at @s if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[tag=simpledomain,scores={move=1..},r=10,type=!ds:kusakabe,hasitem={item=ds:shadow_style_katana}] unless entity @e[tag=simpledomain,scores={move=1..},r=20,type=ds:kusakabe] unless entity @e[tag=simpledomain,scores={move=1..},r=20,hasitem={item=ds:shadow_style_katana}] run tag @s add simpledomain
scoreboard players set @s[scores={cutscene=0,Stun=0,Hit=0,simpledomainCD=0,move=0},tag=!domainimmune,tag=simpledomain,tag=!domainactive] move 61
execute as @s[tag=simpledomain,scores={move=1..}] at @s run tp @s ~~~
scoreboard players set @s[tag=simpledomain,scores={move=1..}] Disabled 15
scoreboard players set @s[tag=simpledomain,scores={move=1..}] simpledomainCD 300


tag @s[scores={combotimer=75..,move=0},tag=meleecombo] remove meleecombo
tag @s[scores={combotimer=75..,move=0},tag=middlecombo] remove middlecombo
tag @s[scores={combotimer=75..,move=0},tag=rangedcombo] remove rangedcombo
scoreboard players set @s[scores={combotimer=75..,move=0}] combotimer 0
tag @s[scores={Stun=1..,combotimer=1..},tag=meleecombo] remove meleecombo
tag @s[scores={Stun=1..,combotimer=1..},tag=middlecombo] remove middlecombo
tag @s[scores={Stun=1..,combotimer=1..},tag=rangedcombo] remove rangedcombo
scoreboard players set @s[scores={Stun=1..,combotimer=1..}] combotimer 0


#-----melee_combos-----
execute if entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1,r=200] unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=hero,c=1,r=280] run scoreboard players set @s[scores={detect_health=0..100,ability12=0,chance=!27,move=0},tag=!limitlesspurple] chance 27
execute unless entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!hero,c=1,r=280] if entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1,r=200] run scoreboard players set @s[scores={detect_health=0..100,ability12=0,chance=!27,move=0},tag=!limitlesspurple] chance 27
tag @s[scores={detect_health=0..100,ability12=0,chance=27,move=0},tag=!limitlesspurple] add limitlesspurple

execute if entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=17] run scoreboard players set @s[scores={chance=34,Stun=0,move=0,ability4=0}] chance 30
execute unless entity @e[scores={combat=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=17] run scoreboard players set @s[scores={chance=30,Stun=0,move=0,ability4=0}] chance 34

execute as @s[scores={chance=12,Stun=0,move=0,infinity=1..,wep5=0},tag=!meleecombo] at @s if entity @e[scores={domainamp=1..},r=7.5,family=!gojo] run scoreboard players random @s chance 3 11
execute as @s[scores={chance=12,Stun=0,move=0,infinity=1..,wep5=0},tag=!meleecombo] at @s if entity @e[hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},r=7.5,family=!gojo] run scoreboard players random @s chance 3 11
scoreboard players random @s[scores={chance=12,Stun=0,move=0,infinity=0},tag=!meleecombo] chance 3 11

scoreboard players set @s[scores={chance=12,Stun=0,move=0,wep1=0,combotimer=1..},tag=meleecombo] chance 6
scoreboard players set @s[scores={chance=4..5,Stun=0,move=0,wep1=0,combotimer=1..},tag=meleecombo] chance 6
scoreboard players random @s[scores={chance=4..5,Stun=0,move=0,wep1=1..,combotimer=1..},tag=meleecombo] chance 7 9
scoreboard players random @s[scores={chance=12,Stun=0,move=0,wep1=1..,combotimer=1..},tag=meleecombo] chance 7 9
tag @s[scores={Stun=0,move=0,combotimer=1..},tag=meleecombo] remove meleecombo


#-----melee_attacks-----
scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 15

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 10

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 10

scoreboard players set @s[scores={chance=6,Stun=0,move=0,wep1=0}] move 121
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 25
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] wep1 900

scoreboard players set @s[scores={chance=7,Stun=0,move=0,wep2=0}] move 91
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 60
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] wep2 1200

scoreboard players set @s[scores={chance=8,Stun=0,move=0,wep3=0}] move 111
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] wep3 666

scoreboard players set @s[scores={chance=9,Stun=0,move=0,wep3=0}] move 61
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 20
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] wep3 300
scoreboard players add @s[scores={chance=9,Stun=0,move=61}] combotimer 101
tag @s[scores={chance=9,Stun=0,move=61},tag=!middlecombo] add middlecombo

scoreboard players set @s[scores={chance=10,Stun=0,move=0,infinity=1..}] move 81
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 30
scoreboard players set @s[scores={chance=10,Stun=0,move=27..28}] infinity 105

scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 40

scoreboard players set @s[scores={chance=12,Stun=0,move=0,wep5=0}] chance 18


#-----ranged_combos-----
scoreboard players set @s[scores={chance=17,Stun=0,move=0,combotimer=1..},tag=middlecombo] chance 16
scoreboard players set @s[scores={chance=18,Stun=0,move=0,combotimer=1..},tag=middlecombo] chance 20
scoreboard players set @s[scores={chance=19,Stun=0,move=0,combotimer=1..},tag=middlecombo] chance 20
scoreboard players set @s[scores={chance=22,Stun=0,move=0,combotimer=1..},tag=middlecombo] chance 21
tag @s[scores={Stun=0,move=0,combotimer=1..},tag=middlecombo] remove middlecombo


#-----ranged_attacks-----
execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run scoreboard players set @s[scores={chance=16,Stun=0,move=0,wep4=0}] move 31
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=16,Stun=0,move=0,wep4=0}] move 31
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={chance=16,Stun=0,move=0,wep4=0}] move 31
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] Disabled 20
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] wep4 250

execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] positioned ^^^16 if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,r=4] run scoreboard players set @s[scores={chance=17,Stun=0,move=0}] move 61
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] positioned ^^^16 if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,r=4] run scoreboard players set @s[scores={chance=17,Stun=0,move=0}] move 61
execute unless entity @e[tag=domainactive,r=55,family=!gojo] positioned ^^^16 if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,r=4] run scoreboard players set @s[scores={chance=17,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=17,Stun=0,move=1..}] Disabled 10
scoreboard players add @s[scores={chance=17,Stun=0,move=61}] combotimer 91
tag @s[scores={chance=17,Stun=0,move=61},tag=!middlecombo] add middlecombo

scoreboard players set @s[scores={chance=18,Stun=0,move=0,wep5=0}] move 21
scoreboard players set @s[scores={chance=18,Stun=0,move=1..}] Disabled 6
scoreboard players set @s[scores={chance=18,Stun=0,move=1..}] wep5 750

execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run scoreboard players set @s[scores={chance=19,Stun=0,move=0,ability6=0}] move 91
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=19,Stun=0,move=0,ability6=0}] move 91
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={chance=19,Stun=0,move=0,ability6=0}] move 91
scoreboard players set @s[scores={chance=19,Stun=0,move=1..}] Disabled 10
scoreboard players set @s[scores={chance=19,Stun=0,move=1..}] ability6 600
execute unless block ~~-1~ air run tp @s[scores={chance=19,Stun=0,move=56..}] ~~~ facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30]
execute if block ~~-1~ air run tp @s[scores={chance=19,Stun=0,move=56..57}] ~~~ facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=30]


scoreboard players set @s[scores={chance=20..21,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=20,Stun=0,move=1..}] Disabled 6
scoreboard players set @s[scores={chance=21,Stun=0,move=1..}] Disabled 10
scoreboard players add @s[scores={chance=20,Stun=0,move=26}] combotimer 66
tag @s[scores={chance=20,Stun=0,move=26},tag=!meleecombo] add meleecombo

scoreboard players set @s[scores={chance=22,Stun=0,move=0,ability2=0}] move 143
execute as @s[scores={chance=22,move=1..}] at @s run tp @s ~~~
scoreboard players set @s[scores={chance=22,Stun=0,move=1..}] Disabled 120
scoreboard players set @s[scores={chance=22,Stun=0,move=1..}] ability2 999


scoreboard players set @s[scores={chance=23,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=23,Stun=0,move=1..}] Disabled 6
tp @s[scores={chance=23,Stun=0,move=5..6}] ~~~ facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=25]

scoreboard players set @s[scores={chance=24,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=24,Stun=0,move=1..}] Disabled 24

execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] run scoreboard players set @s[scores={chance=25,Stun=0,move=0}] move 36
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=25,Stun=0,move=0}] move 36
execute unless entity @e[tag=domainactive,r=55,family=!gojo] run scoreboard players set @s[scores={chance=25,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=25,Stun=0,move=1..}] Disabled 16
scoreboard players add @s[scores={chance=25,Stun=0,move=36}] combotimer 66
tag @s[scores={chance=25,Stun=0,move=36},tag=!middlecombo] add middlecombo
tp @s[scores={chance=25,Stun=0,move=25..}] ~~~ facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=50]


scoreboard players set @s[scores={chance=26,Stun=0,move=0,ability3=0}] move 51
scoreboard players set @s[scores={chance=26,Stun=0,move=1..}] Disabled 125
scoreboard players set @s[scores={chance=26,Stun=0,move=1..}] ability3 800
tp @s[scores={chance=26,Stun=0,move=1..16}] ~~~ facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=80]


execute if entity @e[tag=domainactive,r=55,family=!gojo] if entity @e[type=ds:simple_domain,r=20,rm=10] at @e[type=ds:simple_domain,r=20,rm=10,c=1] unless entity @e[type=ds:kusakabe,r=20] unless entity @e[hasitem={item=ds:shadow_style_katana},r=20] unless entity @s[scores={ability7=1..,ability8=1..}] run scoreboard players set @s[scores={chance=27,Stun=0,move=0}] move 15
execute if entity @e[tag=domainactive,r=55,family=!gojo] unless entity @e[type=ds:simple_domain,r=20] unless entity @s[scores={ability7=1..,ability8=1..}] run scoreboard players set @s[scores={chance=27,Stun=0,move=0}] move 15
execute unless entity @e[tag=domainactive,r=55,family=!gojo] unless entity @s[scores={ability7=1..,ability8=1..}] run scoreboard players set @s[scores={chance=27,Stun=0,move=0}] move 15
scoreboard players set @s[scores={chance=27,Stun=0,move=0},tag=limitlesspurple] move 15
scoreboard players set @s[scores={chance=27,Stun=0,move=1..}] Disabled 6


scoreboard players set @s[scores={chance=28,Stun=0,move=0,ability7=0}] move 66
scoreboard players set @s[scores={chance=28,Stun=0,move=1..}] Disabled 20
scoreboard players set @s[scores={chance=28,Stun=0,move=66}] ability7 566
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=10] run tag @s[scores={chance=28,Stun=0,move=4..56},tag=!itemUse:ds:limitless2] add itemUse:ds:limitless2
execute unless entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=40] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=60] unless entity @s[scores={move=11..15}] unless entity @s[scores={move=27..37}] run tag @s[scores={chance=28,Stun=0,move=4..46},tag=!itemUse:ds:limitless2] add itemUse:ds:limitless2
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=60] run tag @s[scores={chance=28,Stun=0,move=4..10},tag=!itemUse:ds:limitless2] add itemUse:ds:limitless2
tp @s[scores={chance=28,Stun=0,move=1..992}] ~~~ facing @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=60]
scoreboard players set @s[scores={chance=28,Stun=0,move=38..56},tag=itemUse:ds:limitless2] ability7 888
scoreboard players set @s[scores={chance=28,Stun=0,move=16..36},tag=itemUse:ds:limitless2] ability7 999
scoreboard players set @s[scores={chance=28,Stun=0,move=4..14},tag=itemUse:ds:limitless2] ability7 1200
execute as @s[scores={ability7=1100..1200}] at @s run scoreboard players set @e[r=80,c=1,name="Blue Core",type=ds:projectile,scores={Deleter=21..198},tag=!nukeactive] Deleter 20


scoreboard players set @s[scores={chance=29,Stun=0,move=0,ability8=0}] move 66
scoreboard players set @s[scores={chance=29,Stun=0,move=1..}] Disabled 20
scoreboard players set @s[scores={chance=29,Stun=0,move=66}] ability8 566
tp @s[scores={chance=29,Stun=0,move=1..900}] ~~~ facing @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=60]
execute if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=10] run tag @s[scores={chance=29,Stun=0,move=4..56},tag=!itemUse:ds:limitless3] add itemUse:ds:limitless3
scoreboard players set @s[scores={chance=29,Stun=0,move=38..56},tag=itemUse:ds:limitless3] ability8 750
scoreboard players set @s[scores={chance=29,Stun=0,move=16..36},tag=itemUse:ds:limitless3] ability8 888
scoreboard players set @s[scores={chance=29,Stun=0,move=4..14},tag=itemUse:ds:limitless3] ability8 1800


scoreboard players set @s[scores={chance=30,Stun=0,move=0,ability4=0}] move 101
scoreboard players set @s[scores={chance=30,Stun=0,move=1..}] Disabled 75
scoreboard players set @s[scores={chance=30,Stun=0,move=1..}] ability4 1500
execute as @s[scores={chance=30,move=1..}] at @s run tp @s ~~~

scoreboard players set @s[scores={chance=31,Stun=0,move=0,ability5=0}] move 481
scoreboard players set @s[scores={chance=31,Stun=0,move=1..}] Disabled 120
scoreboard players set @s[scores={chance=31,Stun=0,move=1..}] ability5 6000
execute as @s[scores={chance=31,move=1..}] at @s run tp @s ~~~

scoreboard players set @s[scores={chance=34,Stun=0,move=0,ability4=0}] move 120
scoreboard players set @s[scores={chance=34,Stun=0,move=1..}] Disabled 75
scoreboard players set @s[scores={chance=34,Stun=0,move=1..}] ability4 1500


#moves
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/yuji/divergent_strike
execute as @s[scores={chance=4,move=1..}] at @s run function limitless/shockwave_punch
execute as @s[scores={chance=5,move=1..}] at @s run function hr/deadly_strike
execute as @s[scores={chance=6,move=1..}] at @s run function limitless/fury_barrage
execute as @s[scores={chance=7,move=1..}] at @s run function limitless/pointblank
execute as @s[scores={chance=8,move=1..}] at @s run function hr/hr3
execute as @s[scores={chance=9,move=1..}] at @s run function hr/hr7
execute as @s[scores={chance=10,move=1..}] at @s run function limitless/limitless1b
execute as @s[scores={chance=11,move=1..}] at @s run function limitless/limitless3
execute as @s[scores={chance=16,move=1..}] at @s run function limitless/infinity_backhand
execute as @s[scores={chance=17,move=1..}] at @s run function hr/hr2
#blue
execute as @s[scores={chance=18,move=1..}] at @s run function limitless/bluefists
#----
execute as @s[scores={chance=19,move=1..}] at @s run function hr/hr8

#blues
execute as @s[scores={chance=20,move=1..}] at @s run function limitless/limitless2c
execute as @s[scores={chance=21,move=1..}] at @s run function limitless/limitless2

#max
execute as @s[scores={chance=22,move=1..}] at @s run function limitless/limitless2b
execute as @s[scores={chance=26,move=1..}] at @s run function limitless/limitless3c
execute as @s[scores={chance=27,move=1..}] at @s run function limitless/limitless1c
execute as @s[scores={chance=28,move=1..}] at @s run function limitless/limitless2e
execute as @s[scores={chance=29,move=1..}] at @s run function limitless/limitless3e
execute as @s[scores={chance=30,move=1..}] at @s run function limitless/limitless5
execute as @s[scores={chance=31,move=1..}] at @s run function limitless/limitless5b
execute as @s[scores={chance=32,move=1..}] at @s run function limitless/limitless5c
execute as @s[scores={chance=33,move=1..}] at @s run function limitless/limitless5d
execute as @s[scores={chance=34,move=1..}] at @s run function limitless/levitate_purple

#spatial
execute as @s[scores={chance=23,move=1..}] at @s run function limitless/limitless4
execute as @s[scores={chance=24,move=1..}] at @s run function limitless/limitless4b
execute as @s[scores={chance=25,move=1..}] at @s run function limitless/limitless4c

#ce manipulation
execute as @s[tag=simpledomain,scores={move=1..}] at @s run function ce/simpledomain



scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0
tag @s[scores={combotimer=1..2},tag=meleecombo] remove meleecombo
tag @s[scores={combotimer=1..2},tag=middlecombo] remove middlecombo
tag @s[scores={combotimer=1..2},tag=rangedcombo] remove rangedcombo
tag @s[tag=itemUse:ds:limitless2] remove itemUse:ds:limitless2
tag @s[tag=itemUse:ds:limitless3] remove itemUse:ds:limitless3
replaceitem entity @s[scores={bluefist=0..2},hasitem={item=ds:bluefist,location=slot.weapon.offhand}] slot.weapon.offhand 1 air
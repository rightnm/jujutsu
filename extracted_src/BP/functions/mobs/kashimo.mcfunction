execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] run scoreboard objectives add weapontype dummy
execute as @s[scores={Energy=0}] run scoreboard objectives add amberbeast dummy
execute as @s[scores={Energy=0}] run scoreboard players set six endurance 6
scoreboard players add @s[scores={Energy=0}] amberbeast 0
execute unless entity @s[scores={guilty_score=55..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 55
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Dash 0
scoreboard players add @s[scores={Energy=0}] DashCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] flashstep 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players set @s[scores={Energy=0}] ability2 600
scoreboard players add @s[scores={Energy=0}] ability3 0
scoreboard players add @s[scores={Energy=0}] ability4 0
scoreboard players add @s[scores={Energy=0}] ability5 0
scoreboard players add @s[scores={Energy=0}] ability6 0
scoreboard players add @s[scores={Energy=0}] ability7 0
scoreboard players add @s[scores={Energy=0}] Hit 0
scoreboard players set @s[scores={Energy=0,amberbeast=0}] damageadd 8
scoreboard players set @s[scores={Energy=0,amberbeast=0}] strength 25
scoreboard players set @s[scores={Energy=0,amberbeast=0}] weapontype 1
replaceitem entity @s[scores={Energy=0,weapontype=1,amberbeast=0}] slot.weapon.mainhand 1 ds:nyoi_staff
scoreboard players set @s[scores={Energy=0,amberbeast=0}] Energy 8000

scoreboard players set @s[scores={move=0}] punch 1

scoreboard players set @s[scores={detect_health=351..,amberbeast=0,weapontype=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] weapontype 1
execute as @s[scores={detect_health=-999..350,weapontype=1},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run particle ds:dirt0
execute as @s[scores={detect_health=-999..350,weapontype=1},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s unless score mobeventstoggle Mode = three Mode run structure load nyoistaff  ~~~
scoreboard players set @s[scores={detect_health=-999..350,weapontype=1}] weapontype 0
replaceitem entity @s[scores={weapontype=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] slot.weapon.mainhand 1 air

scoreboard players remove @s[scores={Stun=2..,amberbeast=1..}] Stun 1
scoreboard players remove @s[scores={Disable=2..,amberbeast=1..}] Disable 1
scoreboard players set @s[scores={amberbeast=1..,move=1..5,strength=!40},tag=beastawakening] strength 40
scoreboard players set @s[scores={amberbeast=1..,move=1..5,damageadd=!16},tag=beastawakening] damageadd 16

execute as @s[scores={move=1..}] at @s run damage @e[scores={shocked=1..},r=6,rm=0.15,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] 10

replaceitem entity @s[scores={amberbeast=0},hasitem={item=ds:amberbeast2,location=slot.armor.chest}] slot.armor.chest 1 air
replaceitem entity @s[scores={amberbeast=0},hasitem={item=ds:amberbeast2a,location=slot.armor.chest}] slot.armor.chest 1 air
replaceitem entity @s[scores={amberbeast=0},hasitem={item=ds:amberbeastfull,location=slot.armor.chest}] slot.armor.chest 1 air
replaceitem entity @s[scores={amberbeast=0},hasitem={item=ds:amberbeastfulla,location=slot.armor.chest}] slot.armor.chest 1 air

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s unless entity @a[tag=lightning] if entity @e[type=ds:projectile,r=100] run function kashimo/lightning

execute as @s[scores={amberbeast=0..2},tag=mythicalbeastamber] at @s run particle ds:finger_shockwave1 ~~1~
execute as @s[scores={amberbeast=0..2},tag=mythicalbeastamber] at @s run kill @s

execute as @s[scores={Hit=1..}] at @s run scoreboard players add @e[r=3.5,type=!ds:kashimo,tag=!lightning,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] shocked 2

scoreboard players random @s[scores={move=0,cutscene=0,Frames=0,Move=0,Camera=0,Hit=1..,ltncloak=1..}] DashCD 1 11
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0,ltncloak=1..}] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15] run scoreboard players random @s DashCD 1 10
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0,ltncloak=1..}] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames] run scoreboard players random @s DashCD 1 10
scoreboard players set @s[scores={DashCD=1..3,flashstep=0,ltncloak=1..}] flashstep 6
scoreboard players set @s[scores={DashCD=2..11,flashstep=0,amberbeast=1..}] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4}] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..}] at @s run scriptevent ds:dashWest
execute as @s[scores={flashstep=1..}] at @s run particle ds:lightning_cloak_dash2
execute as @s[scores={flashstep=1..}] at @s run particle ds:lightning_cloak_dash3
scoreboard players set @s[scores={flashstep=0..3,DashCD=1..}] DashCD 0


scoreboard players set @s[scores={detect_health=1..200,move=0,Stun=0,amberbeast=1..,Disabled=0,ability6=0},tag=!mythicalbeastamber] countdown3 4
scoreboard players set @s[scores={detect_health=110..170,move=0,Stun=0,amberbeast=1..,Disabled=0,ability6=0,move=3..}] move 2
scoreboard players set @s[scores={detect_health=110..170,move=0,Stun=0,amberbeast=1..,Disabled=0,ability6=0}] chance 26
scoreboard players set @s[scores={detect_health=30..100,move=0,Stun=0,amberbeast=1..,Disabled=0,ability7=0,move=3..}] move 2
scoreboard players set @s[scores={detect_health=30..100,move=0,Stun=0,amberbeast=1..,Disabled=0,ability7=0}] chance 27

execute if entity @e[tag=sukuna,r=30,scores={combat=1..},tag=!unselect,c=1] run tag @s[scores={Stun=0,amberbeast=0},tag=!beastawakening] add beastawakening
execute if entity @e[tag=sukuna,r=30,scores={combat=1..},tag=!unselect,c=1] run scoreboard players set @s[scores={move=0,Stun=0,amberbeast=0}] move 131

execute unless entity @e[type=ds:hakari,r=50,scores={combat=1..}] run tag @s[scores={detect_health=0..45,Stun=0,amberbeast=0},tag=!beastawakening] add beastawakening
execute unless entity @e[type=ds:hakari,r=50,scores={combat=1..}] run scoreboard players set @s[scores={detect_health=0..45,move=0,Stun=0,amberbeast=0},tag=beastawakening] move 131
execute as @s[scores={move=1..},tag=beastawakening] run function kashimo/beast_awaken
execute as @s[scores={move=1..},tag=beastawakening] run tp @s ~~~
tag @s[scores={move=1..3},tag=beastawakening] remove beastawakening
execute as @s[scores={amberbeast=1..}] run function kashimo/amberbeast
effect @s[scores={move=1..30},tag=beastawakening] instant_health 1 2 true

execute as @s[scores={atk=1..2}] at @s positioned ^^1.25^1.6 run playsound mob.electricity @a ~~~ 0.1 2.5
execute as @s[scores={atk=1..2}] at @s anchored eyes positioned ^^^0.5 run particle ds:lightningbolt1 
execute as @s[scores={atk=1..2}] at @s anchored eyes positioned ^^^0.5 run particle ds:lightningbolt2 
execute as @s[scores={atk=1..2}] at @s anchored eyes positioned ^^^0.5 run particle ds:lightningbolt3
execute as @s[scores={atk=1..2}] at @s anchored eyes positioned ^^^0.5 run particle ds:lightningbolt4  

execute as @s[scores={atk=1..},tag=lightning] at @s positioned ^^^4 run scoreboard players add @e[scores={Hit=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,r=3.95] shocked 5
execute as @s[scores={atk=1},tag=lightning] at @s positioned ^^^4 run scoreboard players add @e[scores={Hit=1..},type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,r=3.95] damage 1

execute as @s[type=ds:kashimo,scores={Disabled=0,move=0,cutscene=0,amberbeast=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=7.5,c=1] run scoreboard players random @s chance 3 10
execute as @s[type=ds:kashimo,scores={Disabled=0,move=0,cutscene=0,amberbeast=1..,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=7.5,c=1] run scoreboard players random @s chance 3 12

execute as @s[type=ds:kashimo,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=7.5,c=1] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=70,c=1] run scoreboard players random @s chance 19 27

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=4..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=4..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:kashimo,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 1 2
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players set @s[type=ds:kashimo,scores={chance=3,Stun=0,move=0,weapontype=1},tag=!nocts] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..,weapontype=1}] Disabled 25
scoreboard players set @s[type=ds:kashimo,scores={chance=3,Stun=0,move=0,weapontype=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..,weapontype=0}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=4,Stun=0,move=0,weapontype=1},tag=!nocts] move 16
scoreboard players set @s[scores={chance=4,Stun=0,move=1..,weapontype=1}] Disabled 25
scoreboard players set @s[type=ds:kashimo,scores={chance=4,Stun=0,move=0,weapontype=0,ability1=0},tag=!nocts] move 81
scoreboard players set @s[scores={chance=4,Stun=0,move=1..,weapontype=0}] Disabled 25
scoreboard players set @s[scores={chance=4,Stun=0,move=1..,weapontype=0}] ability1 200

scoreboard players set @s[type=ds:kashimo,scores={chance=5,Stun=0,move=0,weapontype=1},tag=!nocts] move 51
scoreboard players set @s[scores={chance=5,Stun=0,move=1..,weapontype=1}] Disabled 25
scoreboard players set @s[type=ds:kashimo,scores={chance=5,Stun=0,move=0,weapontype=0},tag=!nocts] move 21
scoreboard players set @s[scores={chance=5,Stun=0,move=1..,weapontype=0}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=6,Stun=0,move=0,weapontype=1},tag=!nocts] move 51
scoreboard players set @s[scores={chance=6,Stun=0,move=1..,weapontype=1}] Disabled 25
scoreboard players set @s[type=ds:kashimo,scores={chance=6,Stun=0,move=0,weapontype=0},tag=!nocts] move 26
scoreboard players set @s[scores={chance=6,Stun=0,move=1..,weapontype=0}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=7,Stun=0,move=0,weapontype=0},tag=!nocts] move 36
scoreboard players set @s[scores={chance=7,Stun=0,move=1..,weapontype=0}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=8,Stun=0,move=0,weapontype=0},tag=!nocts] move 81
scoreboard players set @s[scores={chance=8,Stun=0,move=1..,weapontype=0}] Disabled 25

tag @s[type=ds:kashimo,scores={Stun=0,move=0,ability2=0},tag=!nocts] add form2
scoreboard players set @s[type=ds:kashimo,scores={Stun=0,move=0,ability2=0},tag=!nocts] move 71
scoreboard players set @s[scores={Stun=0,move=1..},tag=form2] Disabled 25
scoreboard players set @s[scores={Stun=0,move=1..},tag=form2] ability2 1200

scoreboard players set @s[type=ds:kashimo,scores={chance=12,Stun=0,move=0,ability3=0},tag=!nocts] move 81
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 25
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] ability3 400

scoreboard players set @s[type=ds:kashimo,scores={chance=11,Stun=0,move=0,amberbeast=1..},tag=!nocts] move 21
scoreboard players set @s[scores={chance=11,Stun=0,move=1..,amberbeast=1..}] Disabled 25


scoreboard players set @s[type=ds:kashimo,scores={chance=19,Stun=0,move=0},tag=!nocts] move 41
scoreboard players set @s[scores={chance=19,Stun=0,move=1..}] Disabled 55

scoreboard players set @s[type=ds:kashimo,scores={chance=22,Stun=0,move=0,ability4=0},tag=!nocts] move 91
scoreboard players set @s[scores={chance=22,Stun=0,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=22,Stun=0,move=1..}] ability4 500

scoreboard players set @s[type=ds:kashimo,scores={chance=23,Stun=0,move=0,amberbeast=1..},tag=!nocts] move 41
scoreboard players set @s[scores={chance=23,Stun=0,move=1..,amberbeast=1..}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=24,Stun=0,move=0,ability5=0},tag=!nocts] move 106
scoreboard players set @s[scores={chance=24,Stun=0,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=24,Stun=0,move=1..}] ability5 400

scoreboard players set @s[type=ds:kashimo,scores={chance=25,Stun=0,move=0,amberbeast=1..},tag=!nocts] move 21
scoreboard players set @s[scores={chance=25,Stun=0,move=1..,amberbeast=1..}] Disabled 25

scoreboard players set @s[type=ds:kashimo,scores={chance=26,Stun=0,move=0,ability6=0},tag=mythicalbeastamber,tag=!nocts] move 121
scoreboard players set @s[scores={chance=26,Stun=0,move=1..},tag=mythicalbeastamber] Disabled 40
scoreboard players set @s[scores={chance=26,Stun=0,move=1..},tag=mythicalbeastamber] ability6 700

scoreboard players set @s[type=ds:kashimo,scores={chance=27,Stun=0,move=0,ability7=0},tag=mythicalbeastamber,tag=!nocts] move 201
scoreboard players set @s[scores={chance=27,Stun=0,move=1..},tag=mythicalbeastamber] Disabled 40
scoreboard players set @s[scores={chance=27,Stun=0,move=1..},tag=mythicalbeastamber] ability7 1200

scoreboard players set @s[scores={chance=20}] chance 7
scoreboard players set @s[scores={chance=21}] chance 8

#--moves--
execute as @s[scores={move=1..},tag=form2] at @s run function kashimo/lightning2

execute as @s[scores={chance=3,move=1..,weapontype=1}] at @s run function fighting/nyoistaff/low_blow
execute as @s[scores={chance=3,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning1a
execute as @s[scores={chance=4,move=1..,weapontype=1}] at @s run function fighting/nyoistaff/pole_strike
execute as @s[scores={chance=4,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning1b
execute as @s[scores={chance=5,move=1..,weapontype=1}] at @s run function fighting/nyoistaff/destructive_blows
execute as @s[scores={chance=5,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning1r
execute as @s[scores={chance=6,move=1..,weapontype=1},tag=!nocts] at @s run function fighting/nyoistaff/shockwave_strike
execute as @s[scores={chance=6,move=1..,weapontype=0}] at @s run function hr/deadly_strike

execute as @s[scores={chance=7,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning2r
execute as @s[scores={chance=8,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning3r
execute as @s[scores={chance=9,move=1..,weapontype=0},tag=!nocts] at @s run function kashimo/lightning2r

execute as @s[scores={chance=10,move=1..},tag=!nocts] at @s run function kashimo/lightning2
execute as @s[scores={chance=11,move=1..,amberbeast=1..},tag=!nocts] at @s run function kashimo/lightning_am4
execute as @s[scores={chance=12,move=1..,amberbeast=1..}] at @s run function kashimo/lightning_am1

execute as @s[scores={chance=19,move=1..}] at @s run function kashimo/lightning1c
execute as @s[scores={chance=22,move=1..,amberbeast=1..},tag=!nocts] at @s run function kashimo/lightning4r
execute as @s[scores={chance=23,move=1..,amberbeast=1..},tag=!nocts] at @s run function kashimo/lightning_am1
execute as @s[scores={chance=24,move=1..,amberbeast=1..},tag=!nocts] at @s run function kashimo/lightning_am3
execute as @s[scores={chance=25,move=1..,amberbeast=1..},tag=!nocts] at @s run function kashimo/lightning_am4

execute as @s[scores={chance=26,move=1..,amberbeast=1..},tag=mythicalbeastamber,tag=!nocts] at @s run function kashimo/lightning_am5
execute as @s[scores={chance=27,move=1..,amberbeast=1..},tag=mythicalbeastamber,tag=!nocts] at @s run function kashimo/lightning_am6

execute as @s[scores={ltncloak=1..}] at @s run function kashimo/lightning_cloak


scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0


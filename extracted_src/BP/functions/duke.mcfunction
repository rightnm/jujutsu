
execute as @s if entity @p unless entity @a[scores={duke=1..}] run function nostopcheating

particle ds:riftaura

execute as @s[scores={detect_health=5..400}] unless entity @s[scores={legitdamage=0..}] run scoreboard objectives add legitdamage dummy

execute as @s[scores={detect_health=5..400}] unless entity @s[scores={legitdamage=0..}] run scoreboard players set @s legitdamage 1

execute as @s at @s unless entity @s[scores={endurance=0..}] run tag @s add duke_awaken
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s cutscene 481
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s Stun 0
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s punch 1
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s strength 40
execute as @s at @s unless entity @s[scores={endurance=0..}] run scoreboard players set @s endurance 175

scoreboard players set @a[scores={domainCD=0},r=100] domainCD 666
scoreboard players set @a[scores={infinity=4..,cutscene=0,move=0},r=100] infinity 3

execute as @s[scores={cutscene=1..},tag=duke_awaken] at @s run function duke_awaken


execute as @s[scores={endurance=1..4}] at @s run particle ds:wind_aura ~~1~
execute as @s[scores={endurance=1..4}] at @s run particle ds:wind_aura2 ~~1~
execute as @s[scores={endurance=1..4}] at @s run  playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={endurance=1..4}] at @s run scoreboard players remove @s endurance 1

execute as @s[scores={endurance=1..}] at @s run playsound mob.wind @a ~~~ 0.07 2
execute as @s[scores={endurance=1..}] at @s run effect @s slowness 1 3 true
execute as @s[scores={endurance=1..}] at @s run particle ds:wind_shield ~~1~
execute as @s[scores={endurance=1..}] at @s run particle ds:wind_shield2 ~~1~

execute as @s[scores={endurance=5..}] at @s run effect @s instant_health 1 10 true
execute as @s[scores={endurance=0..4}] at @s run effect @s instant_health 0 20 true

execute as @s[scores={endurance=1..}] at @s if entity @e[name=!blindingtempest,name=!windstomp,name=!cyclonebomb,name=!airspear,scores={atk=1..2},type=!ds:duke,r=3] run scoreboard players remove @s endurance 1
execute as @s[scores={endurance=1..}] at @s if entity @e[name=!blindingtempest,name=!windstomp,name=!cyclonebomb,name=!airspear,scores={atk=1..2},type=!ds:duke,r=3] run scoreboard players set @e[scores={atk=1..2},type=ds:duke,r=3] Stun 5
execute as @s[scores={endurance=1..}] at @s if entity @e[name=!blindingtempest,name=!windstomp,name=!cyclonebomb,name=!airspear,scores={atk=1..2},type=!ds:duke,r=3] run function dukeparry
execute as @s[scores={endurance=1..,Hit=1..}] at @s run function dukeparry
execute as @s[scores={endurance=1..,Hit=1..}] at @s run scoreboard players remove @s endurance 1
execute as @s[scores={endurance=1..,Hit=1..}] at @s run scoreboard players set @s Hit 0
execute as @s[scores={endurance=1..,Flourish=1..}] at @s run scoreboard players set @s Flourish 0
execute as @s[scores={endurance=1..,Stun=1..}] at @s run scoreboard players set @s Stun 0



execute as @s if entity @p[r=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 6

execute as @s if entity @p[r=20,rm=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 12

execute as @s if entity @p[rm=20,r=80] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 9 14

tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[type=!ds:duke,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[type=!ds:duke,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add duke_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 100
execute as @s[tag=duke_dying,scores={cutscene=1..}] at @s run function duke_dying
 
playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s remove hit

execute as @e[type=ds:projectile,name=windstomp,c=1] at @s run function windstomp
execute as @e[type=ds:projectile,name=blindingtempest,c=1] at @s run function blindingtempest
execute as @e[type=ds:projectile,name=airspear,c=1] at @s run function airspear
execute as @e[type=ds:projectile,name=cyclonebomb,c=1] at @s run function cyclonebomb

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=5}] at @s run function fighting/hr/deadly_strike

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=6}] at @s run function fighting/hr/bone_splitter



#counter
scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 50
execute as @s[scores={chance=8}] at @s run function duke_counter

#blindingtempest
scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=9}] at @s run function duke_ab2

#aerospear
scoreboard players set @s[scores={chance=10,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=10}] at @s run function duke_ab3

#strongleft
scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 75
execute as @s[scores={chance=11}] at @s run function duke_ab4

#duke stomp
scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=12}] at @s run function duke_ab1




#cyclonebomb
scoreboard players set @s[scores={chance=13..,endurance=1..}] chance 12
scoreboard players set @s[scores={chance=13,Stun=0,move=0}] move 101
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 200
execute as @s[scores={chance=13}] at @s run function duke_ab5

#tp
scoreboard players set @s[scores={chance=14,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=14,move=1..}] at @s run function hr/hr6

scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0
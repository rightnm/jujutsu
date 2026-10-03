

execute as @s if entity @p unless entity @a[scores={benedictus=1..}] run function nostopcheating

particle ds:riftaura

execute as @s[scores={detect_health=5..400}] unless entity @s[scores={legitdamage=0..}] run scoreboard objectives add legitdamage dummy

execute as @s[scores={detect_health=5..400}] unless entity @s[scores={legitdamage=0..}] run scoreboard players set @s legitdamage 1

execute as @s at @s unless entity @s[scores={Energy=0..}] run tag @s add benedictus_awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 461
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s punch 1
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s damageadd 6
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 55
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999


scoreboard players set @a[scores={domainCD=0},r=100] domainCD 666
scoreboard players set @a[scores={infinity=4..,cutscene=0,move=0},r=100] infinity 3

execute as @s[scores={cutscene=1..},tag=benedictus_awaken] at @s run function benedictus_awaken
scoreboard players remove @s[scores={Energy=9000..}] Energy 1

execute as @s[scores={detect_health=0..400},has_property={property:awakened=0}] at @s run function benedictusawaken
execute as @s[has_property={property:awakened=1..}] at @s run particle ds:rift_stars ~~1~
execute as @s[has_property={property:awakened=1..}] at @s run particle ds:rift_stars2 ~~1~


playanimation @s[scores={Stun=0,move=0,cutscene=0}] animation.astaroth_idle

execute as @s if entity @p[r=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 6

execute as @s if entity @p[r=20,rm=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 12

execute as @s if entity @p[rm=20,r=80] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 11 14

tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[type=!ds:benedictus,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[type=!ds:benedictus,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add benedictus_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 101
execute as @s[tag=benedictus_dying,scores={cutscene=1..}] at @s run function benedictus_dying

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s remove hit

execute as @e[type=ds:projectile,name=lightbeam] at @s run function lightbeam1
execute as @e[type=ds:projectile,name=lightpellet] at @s run function lightpellet
execute as @e[type=ds:projectile,name=novabomb] at @s run function novabomb


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



#barrage
scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=8}] at @s run function benedictus_ab2

#burst
scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 51
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=9}] at @s run function benedictus_ab4

#strongleft
scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=11}] at @s run function duke_ab4


#skybeams1
scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=12}] at @s run function benedictus_ab1

#orb
scoreboard players set @s[scores={chance=13,Stun=0,move=0,detect_health=0..750}] move 101
scoreboard players set @s[scores={chance=13,Stun=0,move=1..,detect_health=0..750}] Disabled 300
execute as @s[scores={chance=13,detect_health=0..750}] at @s run function benedictus_ab3


scoreboard players set @s[scores={chance=14,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=14,move=1..}] at @s run function hr/hr6

scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0
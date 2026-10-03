

execute as @s if entity @p unless entity @a[scores={kaiguy=1..}] run function nostopcheating

particle ds:riftaura

execute as @s[scores={detect_health=5..200}] unless entity @s[scores={legitdamage=0..}] run scoreboard objectives add legitdamage dummy

execute as @s[scores={detect_health=5..200}] unless entity @s[scores={legitdamage=0..}] run scoreboard players set @s legitdamage 1

execute as @s at @s unless entity @s[scores={Energy=0..}] run tag @s add kaiguy_awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Mode 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 311
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s punch 1
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 40
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999

scoreboard players set @a[scores={domainCD=0},r=100] domainCD 666
scoreboard players set @a[scores={nocts=0..5},r=100,tag=!heavenlyrestriction] nocts 50


execute as @s[scores={Mode=0..11,move=0,Stun=0}] at @s if entity @e[scores={atk=1},r=4,type=!ds:kaiguy] at @s anchored eyes positioned ^^-0.25^0.7 run function parry

execute as @s[scores={atk=1}] run execute as @a[scores={punch=1},r=6,tag=!Frames] at @s positioned ^^1.5^0.25 run function parry
execute as @s[scores={atk=1}] run execute as @a[scores={detect_left=1},r=6,tag=!Frames] at @s positioned ^^1.5^0.25 run function parry

execute as @s[scores={Mode=12..}] at @s run tp @s ~~~
tag @s[scores={Mode=0..24}] add Frames
tag @s[scores={Mode=12..}] remove Frames

scoreboard players set @s[scores={Mode=0..24,knockdown=4..}] knockdown 3
playanimation  @s[scores={Mode=12..}] animation.kaiguy_stunned
scoreboard players set @s[scores={Mode=12..,atk=1..}] atk 0
scoreboard players set @s[scores={Mode=12..}] Disabled 15
scoreboard players set @s[scores={Mode=12..}] punch 0
scoreboard players set @s[scores={Mode=12..}] move 0
scoreboard players set @s[scores={Mode=12..}] Stun 33
scoreboard players set @s[scores={Mode=12..}] Hit 1
scoreboard players add @s[scores={Mode=12..}] endurance 1
scoreboard players set @s[scores={endurance=100..}] Stun 0
scoreboard players set @s[scores={endurance=100..}] Mode 0
scoreboard players set @s[scores={endurance=100..}] endurance 0


execute as @s[scores={cutscene=1..},tag=kaiguy_awaken] at @s run function kaiguy_awaken


playanimation @s[scores={Stun=0,move=0,cutscene=0}] animation.kaiguy_idle

execute as @s if entity @p[r=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 7

execute as @s if entity @p[r=20,rm=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 13

execute as @s if entity @p[rm=20,r=80] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 11 14

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s Mode 0
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s Endurance 0
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add kaiguy_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 101
execute as @s[tag=kaiguy_dying,scores={cutscene=1..}] at @s run function kaiguy_dying



execute as @e[type=ds:projectile,name=azurefireball,c=1] at @s run function azurefireball
execute as @e[type=ds:projectile,name=azuremeteor] at @s run function azuremeteor

scoreboard players set @s[scores={chance=1..2,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=1..2,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=1..2}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=3}] at @s run function kaiguy_ab4

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=5}] at @s run function fighting/hr/deadly_strike

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=6}] at @s run function fighting/hr/bone_splitter


#firepunch
scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=7}] at @s run function kaiguy_ab1

#fireball
scoreboard players set @s[scores={chance=9..10,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=9..10,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=9..10}] at @s run function kaiguy_ab2

scoreboard players set @s[scores={chance=12,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 45
execute as @s[scores={chance=12}] at @s run function kaiguy_ab3


#strongleft
scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=11}] at @s run function duke_ab4

execute as @s[scores={agility=1..}] at @s run summon ds:projectile "azuremeteor" 
execute as @s[scores={agility=1..}] at @s run spreadplayers ~ ~ 1 20 @e[name=azuremeteor,c=1]
scoreboard players remove @s[scores={agility=1..}] agility 1

#orb
scoreboard players set @s[scores={chance=13,Stun=0,move=0,detect_health=0..150}] agility 12
scoreboard players set @s[scores={chance=13,Stun=0,move=0,detect_health=0..150}] chance 0


scoreboard players set @s[scores={chance=14,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=14,move=1..}] at @s run function hr/hr6

scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0
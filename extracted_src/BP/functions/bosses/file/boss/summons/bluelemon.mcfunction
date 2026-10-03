



playanimation @s[scores={detect_health=7..,cutscene=299..}] animation.primesoul_summons_bluelemon
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 20
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s ability1 200
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s ability2 100
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 200
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 50
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999

execute as @s at @s unless entity @s[scores={punch=1..}] run scoreboard players set @s punch 1

execute as @s if entity @e[family=!heroic,scores={detect_health=0..},c=1,r=6] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 11


execute as @s if entity @e[family=!heroic,scores={detect_health=0..},c=1,rm=6,r=50] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 15


execute as @s[scores={move=0,cutscene=0}] at @s unless entity @e[family=!heroic,scores={detect_health=0..},c=1,r=1.5] run tp @s ^^^0.225 facing @e[family=!heroic,scores={detect_health=0..},c=1,rm=1.45]
execute as @s[scores={move=0,cutscene=0}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=0,cutscene=0}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=0,cutscene=0}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=0,cutscene=0}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=0,cutscene=0}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=0,cutscene=0}] at @s unless block ~~~ tallgrass unless block ~~~ double_plant unless block ~~~ light_block unless block ~~~ carpet unless block ~~~ stone_slab unless block ~~~ stone_slab2 unless block ~~~ stone_slab3 unless block ~~~ stone_slab4 unless block ~~~ air run particle ds:flashstep1 ~~~
execute as @s[scores={move=0,cutscene=0}] at @s unless block ~~~ tallgrass unless block ~~~ double_plant unless block ~~~ light_block unless block ~~~ carpet unless block ~~~ stone_slab unless block ~~~ stone_slab2 unless block ~~~ stone_slab3 unless block ~~~ stone_slab4 unless block ~~~ air run tp @s ~~1~


tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run event entity @s ds:disappear
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add minion_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 300
execute as @s[tag=minion_dying,scores={cutscene=1..}] at @s run function bosses/file/boss/summons/minion_dying

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s remove hit

execute as @p[r=200] at @s if entity @e[type=ds:soulking,r=10,scores={chance=1..}] run scoreboard players set @e[type=ds:bluelemon,c=1] Stun 15
execute as @p[r=200] at @s if entity @e[type=ds:soulking,r=10,scores={chance=1..}] run scoreboard players set @e[type=ds:bluelemon,c=1] chance 0

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

scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=7}] at @s run function hr/hr7


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=8}] at @s run function bosses/file/boss/summons/bluelemon_ab2


scoreboard players set @s[scores={chance=10,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 15
execute as @s[scores={chance=10}] at @s run function bosses/file/boss/summons/bluelemon_ab3


scoreboard players set @s[scores={chance=12,Stun=0,move=0,ability1=0}] move 56
scoreboard players set @s[scores={chance=12,Stun=0,move=1..,ability1=0}] Disabled 15
scoreboard players set @s[scores={chance=12,Stun=0,move=1..,ability1=0}] ability1 600
execute as @s[scores={chance=12}] at @s run function bosses/file/boss/summons/bluelemon_ab4



scoreboard players set @s[scores={chance=13,Stun=0,move=0,ability2=0}] move 51
scoreboard players set @s[scores={chance=13,Stun=0,move=1..,ability2=0}] Disabled 15
scoreboard players set @s[scores={chance=13,Stun=0,move=1..,ability2=0}] ability2 400
execute as @s[scores={chance=13}] at @s run function bosses/file/boss/summons/bluelemon_ab5


scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0

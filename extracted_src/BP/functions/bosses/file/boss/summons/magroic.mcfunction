




execute as @s at @s unless entity @s[scores={Energy=0..}] run playanimation @s animation.boss_minion_awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 20
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s punch 1
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 30
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999


playanimation @s[scores={Stun=0,move=0,cutscene=0}] animation.astaroth_idle

execute as @s if entity @p[r=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 10

execute as @s if entity @p[r=20,rm=8] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 12

execute as @s if entity @p[rm=20,r=80] run scoreboard players set @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8

tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add minion_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 300
execute as @s[tag=minion_dying,scores={cutscene=1..}] at @s run function bosses/file/boss/summons/minion_dying

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s remove hit


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=3}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 4
execute as @s[scores={chance=4}] at @s run function bosses/file/boss/summons/magroic_ab3


scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 45
execute as @s[scores={chance=5}] at @s run function fighting/hr/deadly_strike

scoreboard players set @s[scores={chance=6,Stun=0,move=0}] move 37
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 45
execute as @s[scores={chance=6}] at @s run function fighting/hr/bone_splitter


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=8}] at @s run function bosses/file/boss/summons/magroic_ab1

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 55
execute as @s[scores={chance=9}] at @s run function bosses/file/boss/summons/magroic_ab2


scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0

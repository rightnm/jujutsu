execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=0..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 0
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
scoreboard players set @s[scores={Energy=0}] simpledomainown 1
scoreboard players add @s[scores={Energy=0}] simpledomainCD 0
scoreboard players set @s[scores={Energy=0}] damageadd 3
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 18
tag @s[scores={Energy=0}] add yujis_friend
scoreboard players add @s[scores={Energy=0}] blackflashlearn 0
scoreboard players set @s[scores={Energy=0}] Energy 2000

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[type=ds:miwa,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:miwa,r=7.5,c=1] run scoreboard players random @s chance 3 19

execute as @s[type=ds:miwa,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:miwa,r=7.5,c=1] if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:miwa,r=40,c=1] run scoreboard players random @s chance 20 30

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:miwa,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:miwa,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 3 5
execute as @s[tag=hit,scores={chance=1..2}] run function m1

execute as @s[scores={simpledomainCD=0,move=0,simpledomainCD=0},tag=!domainimmune,tag=!simpledomain,tag=!nocts] at @s unless entity @e[type=ds:simple_domain,r=20] if entity @e[tag=domainactive,r=55] run tag @s add simpledomain
execute as @s[scores={simpledomainCD=0,move=0,simpledomainCD=0},tag=!domainimmune,tag=simpledomain,tag=!nocts] at @s unless entity @e[type=ds:simple_domain,r=20] if entity @e[tag=domainactive,r=55] run scoreboard players set @s move 61

execute as @s[tag=simpledomain,scores={move=1..}] at @s run function ce/simpledomain
execute as @s[tag=simpledomain,scores={move=1..}] at @s run tp @s ~~~

execute as @s at @s if entity @e[tag=domainactive,r=50] if entity @e[type=ds:simple_domain,r=20] unless block ~~-1~ air run tp @s ~~~
execute as @s at @s if entity @e[type=ds:simple_domain,r=20] run effect @s slowness 1 5 true

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=3,move=1..}] at @s run function fighting/shadow_style_katana/batto

tag @s[scores={chance=4,Stun=0,move=0,simpledomainCD=0},tag=!domainimmune,tag=!simpledomain] add simpledomain
scoreboard players set @s[scores={chance=4,Stun=0,move=0,simpledomainCD=0},tag=!domainimmune,tag=simpledomain] move 61
scoreboard players set @s[tag=simpledomain,scores={move=1..}] Disabled 27
scoreboard players set @s[tag=simpledomain,scores={move=1..}] simpledomainCD 800

scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=9,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=9,move=1..}] at @s run function fighting/katana/quickdraw

scoreboard players set @s[scores={chance=10,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=10,move=1..}] at @s run function fighting/katana/quickdraw

scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=11,move=1..}] at @s run function fighting/katana/prominence

execute unless entity @e[type=ds:simple_domain,r=20] run scoreboard players random @s[scores={chance=12..19}] chance 3 11
execute if entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=12..19,Stun=0,move=0},tag=domainimmune] move 21
execute if entity @e[type=ds:simple_domain,r=20] run scoreboard players set @s[scores={chance=12..19,Stun=0,move=1..},tag=domainimmune] Disabled 27
execute as @s[scores={chance=12..19,move=1..}] at @s run function fighting/shadow_style_katana/intersection


scoreboard players set @s[scores={chance=21..28,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=21..28,Stun=0,move=1..}] Disabled 27
execute as @s[scores={chance=21..28,move=1..}] at @s run function fighting/shadow_style_katana/flashstrike


tag @s[scores={move=0..4},tag=simpledomain] remove simpledomain
scoreboard players set @s[scores={move=1..4,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0


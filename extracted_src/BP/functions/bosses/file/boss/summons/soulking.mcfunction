



playanimation @s[scores={detect_health=7..,cutscene=299..}] animation.primesoul_summons_soulking
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s detect_health 750
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 20
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s ability1 200
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s ability2 100
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 200
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 40
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999
effect @s slowness 1 1 true

tp @s ~~~ facing @p[r=100]

tag @a[rm=200] remove voidmarked

execute as @s at @s unless entity @s[scores={punch=1..}] run scoreboard players set @s punch 1

execute as @s if entity @e[family=!heroic,scores={detect_health=0..},c=1,r=6] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 11

execute as @a[tag=voidmarked] at @s run particle ds:voidmarked

execute as @s if entity @e[family=!heroic,scores={detect_health=0..},c=1,rm=6,r=50] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 8 15

execute if entity @p[tag=arenaboss] unless block ~~~ air run tp @s ~~1~

tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[family=!heroic,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run scoreboard players set @s chance 0
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run playanimation @s animation.soulking.pulling
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run playanimation @e[tag=voidmarked] animation.stunned
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run execute as @e[tag=voidmarked,c=1] at @s run playsound mob.distort3 @a ~~~ 0.2 1.25
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run execute as @e[tag=voidmarked,c=1] at @s run playsound mob.wither.hurt @a ~~~ 0.2 2.25
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run execute as @e[tag=voidmarked,c=1] at @s run tp @s ^^^1.75 facing @e[type=ds:soulking,c=1,rm=2]
execute as @s[scores={move=0,cutscene=0,Stun=0}] if entity @e[tag=voidmarked] run tag @e[r=2.5] remove voidmarked



execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run event entity @s ds:disappear
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add minion_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 300
execute as @s[tag=minion_dying,scores={cutscene=1..}] at @s run function bosses/file/boss/summons/minion_dying

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
execute as @s[tag=hit,scores={chance=1..2}] run function m1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
tag @s remove hit



execute as @p[r=200] at @s if entity @e[type=ds:bluelemon,r=10,scores={chance=1..}] run scoreboard players set @e[type=ds:soulking,c=1] Stun 15
execute as @p[r=200] at @s if entity @e[type=ds:bluelemon,r=10,scores={chance=1..}] run scoreboard players set @e[type=ds:soulking,c=1] chance 0

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3}] at @s run function fighting/katana/quickdraw
execute as @s[scores={chance=3,move=0..11}] at @s run particle ds:void_slash1c ~~~

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=4}] at @s run function fighting/katana/rapid_cuts
execute as @s[scores={chance=4,move=7..25}] at @s run particle ds:void_slash1c ^^^4


scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=7}] at @s run function fighting/shadow_style_katana/batto
execute as @s[scores={chance=7,move=11..}] at @s run particle ds:void_slash1c ~~~


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=8}] at @s run function bosses/file/boss/summons/soulking_ab1



scoreboard players set @s[scores={chance=11,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=11}] at @s run function bosses/file/boss/summons/soulking_ab2


execute as @e[name=voidslash,c=1] at @s run function bosses/file/boss/summons/voidslash
scoreboard players set @s[scores={chance=12,Stun=0,move=0,ability1=0}] move 41
scoreboard players set @s[scores={chance=12,Stun=0,move=1..,ability1=0}] Disabled 15
scoreboard players set @s[scores={chance=12,Stun=0,move=1..,ability1=0}] ability1 600
execute as @s[scores={chance=12}] at @s run function bosses/file/boss/summons/soulking_ab3
execute as @s[tag=voidcrush_atk] at @s run function bosses/file/boss/summons/soulking_ab3b


scoreboard players set @s[scores={chance=9,Stun=0,move=0,ability2=0}] move 26
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,ability2=0}] Disabled 15
scoreboard players set @s[scores={chance=9,Stun=0,move=1..,ability2=0}] ability2 400
execute as @s[scores={chance=9}] at @s run function bosses/file/boss/summons/soulking_ab4


scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0

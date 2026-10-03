scoreboard players set @s atk 2

execute as @s positioned ^^^1.75 run execute as @a[scores={BasicM1=0,detect_left=1..,move=0,cutscene=0,Stun=0},r=2.25] at @s positioned ^^^0.5 run function m1_clash
execute as @s positioned ^^^1.75 run scoreboard players random @e[type=!player,scores={punch=1..,move=0,cutscene=0,Stun=0},r=2.25] clashtype 1 2
execute as @s positioned ^^^1.75 run execute as @e[type=!player,scores={punch=1..,move=0,cutscene=0,Stun=0,clashtype=1..},r=2.25] at @s positioned ^^^0.5 run function m1_clash

execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 unless entity @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] run damage @e[tag=!Frames,tag=!clashed2,r=1.69] 1 override entity @s
execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 if entity @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] run damage @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] 1 entity_attack entity @s
execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 run scoreboard players add @e[tag=!Frames,tag=!clashed2,r=1.69] Evade 2
execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 run scoreboard players set @e[tag=!Frames,tag=!clashed2,r=1.69] Hit 1
execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.4 99999
execute as @s[scores={chance=1},tag=hit] at @s positioned ^^^1.7 run camerashake add @a[r=10] 0.025 0.25
execute as @s[scores={chance=1},tag=hit] at @s anchored eyes positioned ^^1.2^1 run particle minecraft:critical_hit_emitter

execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 unless entity @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] run damage @e[tag=!Frames,tag=!clashed2,r=1.69] 1 override entity @s
execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 if entity @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] run damage @e[tag=!Frames,tag=!clashed2,r=1.69,scores={detect_health=0..5}] 1 entity_attack entity @s
execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 run scoreboard players add @e[tag=!Frames,tag=!clashed2,r=1.69] Evade 2
execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 run scoreboard players set @e[tag=!Frames,tag=!clashed2,r=1.69] Hit 1
execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.4 99999
execute as @s[scores={chance=2},tag=hit] at @s positioned ^^^1.7 run camerashake add @a[r=10] 0.025 0.25
execute as @s[scores={chance=2},tag=hit] at @s anchored eyes positioned ^^1.2^1 run particle minecraft:critical_hit_emitter


execute as @s[family=gojo,scores={infinity=1..}] at @s positioned ^^^1 run execute as @e[r=2,family=!gojo,scores={detect_health=0..}] at @s unless entity @s[scores={domainamp=1..}] unless entity @s[scores={domainactive=1..}] run tp @s ^^1^-5

scoreboard players set @s[scores={chance=1..}] chance 0
tag @e[tag=clashed2] remove clashed2
tag @s remove hit
effect @a[r=50] darkness 2 1 true


particle ds:riftaura

execute as @s at @s unless entity @s[scores={Energy=0..}] run particle ds:void_burst1 ~~1~
execute as @s at @s unless entity @s[scores={Energy=0..}] run particle ds:void_burst2 ~~1~
execute as @s at @s unless entity @s[scores={Energy=0..}] run particle ds:void_burst3 ~~1~
execute as @s at @s unless entity @s[scores={Energy=0..}] run particle ds:void_burst4 ~~1~
execute as @s at @s unless entity @s[scores={Energy=0..}] run particle ds:void_burst5 ~~1~
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s chance 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s punch 1
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s strength 50
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s damageadd 15
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 9999



tag @s remove hit
execute as @s[scores={move=0,cutscene=0,chance=0}] if entity @e[type=!ds:void_servant,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run scoreboard players random @s chance 1 2
execute as @s[scores={move=0,cutscene=0}] if entity @e[type=!ds:void_servant,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=2.25] run tag @s add hit

execute as @s[scores={detect_health=0..5}] at @s run scoreboard objectives add component dummy
execute as @s[scores={detect_health=0..5}] at @s run scoreboard players set @a[r=100] component 1
execute as @s[scores={detect_health=0..5}] at @s run summon ds:component ~~1.5~
execute as @s[scores={detect_health=0..5}] at @s run event entity @s ds:disappear

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
execute as @s[tag=hit] at @s positioned ^^1^2 run particle ds:voidhit1
execute as @s[tag=hit] at @s positioned ^^1^2 run particle ds:voidhit2
execute as @s[tag=hit] at @s positioned ^^^2 run playsound mob.wither.hurt @a ~~~ 0.1 1.5
execute as @s[tag=hit] at @s positioned ^^^4 run execute as @e[r=4,type=!ds:void_servant] at @s run tp @s ^^^0.33 facing @e[type=ds:void_servant,c=1,rm=2]
execute as @s[tag=hit,scores={chance=1..2}] run function m1

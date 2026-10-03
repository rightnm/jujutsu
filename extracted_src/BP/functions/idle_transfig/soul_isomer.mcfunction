execute as @e[type=ds:soul_isomer,c=16] unless entity @s[scores={Deleter=0..}] run scoreboard players add @s Energy 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] chance 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] hitCD 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] Stun 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] move 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] Disabled 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] strength 28
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] damageadd 10
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] cutscene 0
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] Deleter 800
scoreboard players add @e[type=ds:soul_isomer,c=16,scores={Energy=0}] Energy 99

tag @e[type=ds:soul_isomer,c=16,tag=hit] remove hit
execute as @e[type=ds:soul_isomer,c=16,scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,type=!ds:soul_isomer,c=1,tag=!idle_transfig] run scoreboard players random @s chance 1 2

execute as @e[type=ds:soul_isomer,c=16,scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=8,tag=!unselect,type=!armor_stand,type=!ds:soul_isomer,c=1,tag=!idle_transfig] run scoreboard players random @s chance 3 5

execute as @e[type=ds:soul_isomer,c=16,scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=0,Disabled=0}] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=8,tag=!unselect,type=!armor_stand,type=!ds:soul_isomer,c=1,rm=5,tag=!idle_transfig] run scoreboard players set @s chance 5

execute as @e[type=ds:soul_isomer,c=16,scores={hitCD=0,Stun=0,move=0,cutscene=0,chance=1..2}] at @s if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=3,tag=!unselect,type=!armor_stand,type=!ds:soul_isomer,c=1,tag=!idle_transfig] run tag @s add hit

playanimation @e[type=ds:soul_isomer,c=16,scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @e[type=ds:soul_isomer,c=16,scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @e[type=ds:soul_isomer,c=16,tag=hit] hitCD 2 3
execute as @e[type=ds:soul_isomer,c=16,tag=hit] at @s positioned ^^^2 run scoreboard players operation @e[r=1.95,tag=!Frames] damage += @s damageadd
execute as @e[type=ds:soul_isomer,c=16,tag=hit,scores={chance=1..2}] at @s run function m1





scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=3,Stun=0,move=0,Disabled=0}] move 41
scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=3,Stun=0,move=1..}] Disabled 31
execute as @e[type=ds:soul_isomer,c=16,scores={chance=3,move=1..}] at @s run function idle_transfig/soul_isomer_atk1

scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=4,Stun=0,move=0,Disabled=0}] move 26
scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=4,Stun=0,move=1..}] Disabled 40
execute as @e[type=ds:soul_isomer,c=16,scores={chance=4,move=1..}] at @s run function hr/deadly_strike

scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=5,Stun=0,move=0,Disabled=0}] move 46
scoreboard players set @e[type=ds:soul_isomer,c=16,scores={chance=5,Stun=0,move=1..}] Disabled 31
execute as @e[type=ds:soul_isomer,c=16,scores={chance=5,move=1..}] at @s run function idle_transfig/soul_isomer_atk2





scoreboard players set @s[scores={move=0..4,chance=1..}] chance 0



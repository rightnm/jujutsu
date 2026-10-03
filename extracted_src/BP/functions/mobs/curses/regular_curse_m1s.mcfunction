scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0

scoreboard players set @s[scores={Energy=0}] Energy 250

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,move=0,chance=0,Disabled=0}] if entity @e[family=!purecurse,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=3] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,move=0,Disabled=0}] if entity @e[family=!purecurse,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,r=3] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit,type=ds:hair_curse] animation.hair_curse.attack1
playanimation @s[scores={chance=2},tag=hit,type=ds:hair_curse] animation.hair_curse.attack2
scoreboard players random @s[tag=hit,type=ds:hair_curse] hitCD 4 6
execute as @s[tag=hit,scores={chance=1..2}] run function m1

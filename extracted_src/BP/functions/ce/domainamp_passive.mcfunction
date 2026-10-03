tag @s[scores={domainamp=2..},tag=!fistenergy] add fistenergy

tag @s[scores={domainamp=3..},tag=!domainamplification] add domainamplification
tag @s[scores={domainamp=1..2},tag=domainamplification] remove domainamplification


scoreboard players set @s nocts 5

scoreboard players add @s domainampCD 1

scoreboard players set @s domainimmune 5

effect @s resistance 1 1 true
execute if entity @e[scores={move=1..},r=15] run effect @s resistance 1 3 true
execute as @s if entity @e[tag=domainactive,r=50] run effect @s resistance 1 3 true

scoreboard players set @s[scores={onfire=1..}] onfire 0

tag @e[r=5,scores={cutscene=0,Frames=1..,move=0},tag=!abilitying,tag=Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] remove Frames
scoreboard players set @e[r=5,scores={cutscene=0,Frames=4..,move=0},tag=!abilitying,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Frames 3

scoreboard players set @e[rm=0.25,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] nocts 5

execute as @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=5,move=0,ab=0}] at @s run playsound beacon.deactivate @a ~~~ 1 3
clear @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=5,move=0,ab=0}] ds:domainamplification
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=5,move=0,ab=0}] Stun 5
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=5,move=0,ab=0}] nocts 0
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=5,move=0,ab=0}] domainamp 0

playsound beacon.ambient @a ~~~ 0.005 2


execute as @s[scores={domainamp=-9999..1}] at @s run playsound beacon.activate @a ~~~ 1 2
tag @s[scores={domainamp=-9999..1},tag=fistenergy] remove fistenergy

clear @s[scores={domainamp=-9999..2},hasitem={item=ds:domainamplification}] ds:domainamplification

scoreboard players remove @s[scores={domainamp=1..}] domainamp 1

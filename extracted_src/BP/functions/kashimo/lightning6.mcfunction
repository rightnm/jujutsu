
playanimation @s[scores={domainstart=100}] animation.kashimo_domain1
execute as @s[scores={domainstart=90}] at @s run playsound mob.kashimodomain2 @a ~~~ 100000 0.975 100000
execute as @s[scores={domainstart=100}] at @s run camerashake add @a[r=48] 2 0.25
execute as @s[scores={domainstart=100}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={domainstart=1..80}] at @s run particle ds:domainarea ~~~

tag @s[type=!item,scores={domainstart=1..2},tag=form6] remove form6

scoreboard players add @s[scores={domainstart=100..}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1
scoreboard players set @s[scores={domainstart=1..100}] ProjImmune 50

execute as @s[scores={domainstart=1..}] at @s run execute as @e[r=48,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] at @s run tp @s ~~~
scoreboard players set @s[scores={domainstart=1..}] Camera 4

tag @s[scores={domainstart=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domainstart 49
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run camerashake add @s 1.5 0.1 positional
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.blaze.shoot @a[r=50]  ~~~ 0.44 0.2 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.22 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.62 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash ~~~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash1 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash2 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playanimation @s animation.kashimo_domain_standby

execute as @s[scores={domainstart=1..49,Energy=2..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 1
execute as @s[scores={domainstart=1..49,Energy=12..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 6

execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s Stun 30
execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run function domainloser


execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domain 341 
execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @e[r=48,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,scores={domainstart=2..}] domainstart 1
execute as @s[scores={domainstart=46},tag=form6] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run tag @s remove form6

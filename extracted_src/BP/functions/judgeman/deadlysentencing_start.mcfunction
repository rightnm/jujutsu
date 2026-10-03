
playanimation @s[scores={domainstart=100..}] animation.judgeman.domain
execute as @s[scores={domainstart=90}] at @s run playsound mob.deadlysentencing @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run camerashake add @a[r=24] 2 0.25
execute as @s[scores={domainstart=100}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run particle ds:quick_domain_area0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:quick_domainarea0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:quick_domainarea1 ~~~
execute as @s[scores={domainstart=1..80}] at @s run particle ds:quick_domainarea ~~~


tag @s[scores={domainstart=1..2},tag=form4] remove form4

scoreboard players add @s[scores={domainstart=100..}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1
scoreboard players set @s[scores={domainstart=1..100}] ProjImmune 50

execute as @s[scores={domainstart=1..}] at @s run scoreboard players set @a[r=24] DashCD 15
execute as @s[scores={domainstart=1..}] at @s run execute as @e[r=48,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ~~~
scoreboard players set @s[scores={domainstart=1..}] Camera 4

tag @s[scores={domainstart=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players set @s domainstart 70
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run camerashake add @s 1.5 0.1 positional
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run playsound mob.blaze.shoot @a[r=50]  ~~~ 0.44 0.2 100000
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.22 100000
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.62 100000
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run particle ds:domainclash ~~~
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run particle ds:domainclash1 ~~1~
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run particle ds:domainclash2 ~~1~
execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run playanimation @s animation.judgeman.domain_hold

execute as @s[scores={domainstart=1..89,Energy=2..}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players remove @s Energy 1
execute as @s[scores={domainstart=1..89,Energy=12..}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players remove @s Energy 6

execute as @s[scores={domainstart=1..90,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players set @s Stun 30
execute as @s[scores={domainstart=1..90,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run function domainloser
execute as @s[scores={domainstart=65}] at @s unless entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players set @s domain 181 
execute as @s[scores={domainstart=65}] at @s unless entity @e[type=!item,tag=domainlayout,r=24,rm=0.5] run scoreboard players set @e[r=24,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,scores={domainstart=2..}] domainstart 1

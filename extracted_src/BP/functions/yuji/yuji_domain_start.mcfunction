
playanimation @s[scores={domainstart=100}] animation.yuji_domain
execute as @s[scores={domainstart=85}] at @s run playsound mob.yuji_domain @a ~~~ 100000 1.05 100000
execute as @s[scores={domainstart=100}] at @s run camerashake add @a[r=48] 2 0.25
execute as @s[scores={domainstart=100}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={domainstart=1..80}] at @s run particle ds:domainarea ~~~

tag @s[scores={domainstart=1..2},tag=form12] remove form12

scoreboard players add @s[scores={domainstart=100..}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1
scoreboard players set @s[scores={domainstart=1..100}] ProjImmune 50

execute as @s[scores={domainstart=1..}] at @s run execute as @e[r=48,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~
scoreboard players set @s[scores={domainstart=1..}] Camera 4

tag @s[scores={domainstart=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={domainstart=48..50}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s domainstart 47

execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s domainstart 49
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run camerashake add @s 1.5 0.1 positional
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run playsound mob.blaze.shoot @a[r=50]  ~~~ 0.44 0.2 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.22 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.62 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run particle ds:domainclash ~~~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run particle ds:domainclash1 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run particle ds:domainclash2 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run playanimation @s animation.yuji_domain_hold

execute as @s[scores={domainstart=1..49,Energy=2..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players remove @s Energy 1
execute as @s[scores={domainstart=1..49,Energy=12..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players remove @s Energy 6

execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s Stun 30
execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run function domainloser


execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s domain 201
execute as @s[scores={domainstart=46},tag=form12] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run tag @s remove form12
execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.15] run scoreboard players set @e[r=48,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] domainstart 1

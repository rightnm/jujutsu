
playanimation @s[scores={domainstart=100}] animation.mahito.domain_start

execute as @s[scores={domainstart=95}] at @s run playsound mob.mahito_domain1 @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=90}] at @s run camerashake add @a[r=48] 2 0.25
execute as @s[scores={domainstart=90}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=90}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={domainstart=90}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={domainstart=90}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={domainstart=1..80}] at @s run particle ds:domainarea ~~~

event entity @s[scores={domainstart=99..}] mahito_mouthsigns_on

tag @s[scores={domainstart=1..2},tag=domain_start] remove domain_start

scoreboard players add @s[scores={domainstart=100..}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1
scoreboard players set @s[scores={domainstart=1..100}] ProjImmune 50


# New Tp Place Still, stop moving and Stun (only if not clashing)
execute as @s[scores={domainstart=1..200}] at @s[tag=!domainclashing] run execute as @e[r=48,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~
effect @s speed 1 4 true




scoreboard players set @s[scores={domainstart=1..}] Camera 4

tag @s[scores={domainstart=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domainstart 70

# starting new clashing stuff from here
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run tag @s add domainclashing
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard objectives add domain_clasher dummy
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s domain_clasher 0
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard players set @e[tag=domainclashing] domainstart 1001

# to lock out other bozos
execute as @s[scores={domainstart=999..}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run scoreboard players set @s domainstart 3
execute as @s[scores={domainstart=999..}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run tag @s remove domainclashing
execute as @s[scores={domainstart=999..}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run function domainloser

# apply unique score based on who started first
execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=1..}] run scoreboard players set @s domain_clasher 1

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=1}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=2..}] run scoreboard players set @s domain_clasher 2

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=2}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=3..}] run scoreboard players set @s domain_clasher 3

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=3}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=4..}] run scoreboard players set @s domain_clasher 4




execute as @s[scores={domainstart=961..}] at @s run playsound mob.wither.shoot @a[r=100] ^^-15^5 9999 0.25 99999
execute as @s[scores={domainstart=961..}] at @s run particle ds:domainclash ~~~
execute as @s[scores={domainstart=961..}] at @s run particle ds:domainclash1 ~~~
execute as @s[scores={domainstart=961..}] at @s run particle ds:domainclash2 ~~~
execute as @s[scores={domainstart=961..}] at @s run particle ds:domainclash3 ~~~

execute as @s[scores={domainstart=900..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.15] run playanimation @s animation.mahito.domain_idle
execute as @s[scores={domainstart=955..961}] at @s unless entity @e[tag=domainclashing,rm=1,r=50,scores={domain_clasher=1..}] run scoreboard objectives add num dummy
execute as @s[scores={domainstart=955..961}] at @s unless entity @e[tag=domainclashing,rm=1,r=50,scores={domain_clasher=1..}] run scoreboard players add @s num 1
execute as @s[scores={domainstart=955..961}] at @s unless entity @e[tag=domainclashing,rm=1,r=50,scores={domain_clasher=1..}] if entity @s[scores={num=100..}] run execute as @e[scores={domainstart=1..1002},r=50] at @s run function cancel_attack
execute as @s[scores={domainstart=955..961}] at @s unless entity @e[tag=domainclashing,rm=1,r=50,scores={domain_clasher=1..}] run scoreboard players set @s domainstart 962

execute as @s[scores={domainstart=961}] at @s run scoreboard objectives add domain_clasher_id dummy
execute as @s[scores={domainstart=960}] at @s run scoreboard players random @s domain_clasher_id 1 999999
execute as @s[scores={domainstart=960}] at @s run tag @s add deploy_perfection
execute as @s[scores={domainstart=960}] at @s run scriptevent ds:spawn_middle "domainclashing" "ds:clash_starting" "domainclashing"
execute as @s[scores={domainstart=960}] at @s run scoreboard players set @e[r=50] Stun 33

# repeat until deliberate removal of score
scoreboard players set @s[scores={domainstart=900..940}] domainstart 950


execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domain 421
execute as @s[scores={domainstart=46},tag=domain_start] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run tag @s add mahito_domain
execute as @s[scores={domainstart=46},tag=domain_start] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run tag @s remove domain_start



execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @e[r=48,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] domainstart 1
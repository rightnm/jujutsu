execute as @s[scores={domainstart=100}] at @s run tp @s ~~~~ 0
playanimation @s[scores={domainstart=100..101}] animation.mahito.2s_domain_start
execute as @s[scores={domainstart=95}] at @s run playsound mob.mahito_02_domain1 @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=100}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={domainstart=100}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={domainstart=1..80}] at @s run particle ds:domainarea ~~~



execute as @s[scores={domainstart=100}] at @s anchored eyes run camera @s fade time 0.2 0.2 0.75 color 0 0 0

execute as @s[scores={domainstart=100}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^ ^1 facing ~~-0.25~
execute as @s[scores={domainstart=98..99}] at @s anchored eyes run camera @s set minecraft:free ease 1.75 in_sine pos ^ ^-0.75 ^4 facing ~~1~

tag @s[scores={domainstart=1..35},tag=domain_start2,tag=idle_transfig,tag=domainlayout] remove domainlayout
tag @s[scores={domainstart=1..2},tag=domain_start2,tag=idle_transfig] remove domain_start2

scoreboard players set @s[scores={domainstart=51..65}] domainstart 49

scoreboard players add @s[scores={domainstart=100..101}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1
scoreboard players set @s[scores={domainstart=1..100}] ProjImmune 10

execute as @s[scores={domainstart=9..100}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={domainstart=9..100}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={domainstart=9..100}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={domainstart=9..100}] at @s if block ~~-1~ air run tp @s ~~-1~

# New Tp Place Still, stop moving and Stun (only if not clashing)
execute as @s[scores={domainstart=1..200}] at @s[tag=!domainclashing] run execute as @e[r=48,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~
effect @s speed 1 4 true



scoreboard players set @s[scores={domainstart=1..,Camera=0..10}] Camera 44
scoreboard players set @s[scores={domainstart=1..,Move=0..10}] Move 44

tag @s[scores={domainstart=1..},tag=!domainlayout] add domainlayout

execute as @s[scores={domainstart=1..90}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domainstart 70


# starting new clashing stuff from here
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run tag @s add domainclashing
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard objectives add domain_clasher dummy
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard players set @s domain_clasher 0
execute as @s[scores={domainstart=4..70}] at @s unless entity @e[type=ds:domain_clash_main,r=50] unless entity @e[type=ds:clash_starting,r=50] if entity @e[tag=domainlayout,r=48,rm=0.15] run scoreboard players set @e[tag=domainclashing] domainstart 1001

# to lock out other bozos
execute as @s[scores={domainstart=999..1002}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run scoreboard players set @s domainstart 3
execute as @s[scores={domainstart=999..1002}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run tag @s remove domainclashing
execute as @s[scores={domainstart=999..1002}] at @s if entity @e[r=33,tag=domainclashing,scores={domain_clasher=4}] unless entity @s[scores={domain_clasher=1..4}] run function domainloser

# apply unique score based on who started first
execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=1..}] run scoreboard players set @s domain_clasher 1

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=1}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=2..}] run scoreboard players set @s domain_clasher 2

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=2}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=3..}] run scoreboard players set @s domain_clasher 3

execute as @s[tag=domainclashing,scores={domainstart=1000..1001,domain_clasher=0}] if entity @e[tag=domainclashing,r=48,scores={domain_clasher=3}] unless entity @e[tag=domainclashing,r=48,scores={domain_clasher=4..}] run scoreboard players set @s domain_clasher 4




execute as @s[scores={domainstart=961..1002}] at @s run playsound mob.wither.shoot @a[r=100] ^^-15^5 9999 0.25 99999
execute as @s[scores={domainstart=961..1002}] at @s run particle ds:domainclash ~~~
execute as @s[scores={domainstart=961..1002}] at @s run particle ds:domainclash1 ~~~
execute as @s[scores={domainstart=961..1002}] at @s run particle ds:domainclash2 ~~~
execute as @s[scores={domainstart=961..1002}] at @s run particle ds:domainclash3 ~~~

execute as @s[scores={domainstart=900..1002}] at @s if entity @e[tag=domainlayout,r=48,rm=0.15] run playanimation @s animation.mahito.domain_idle

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



# Actually start normal cutscene
scoreboard players set @s[scores={domainstart=35..40}] domainstart 10001



playanimation @s[scores={domainstart=10000..10001}] animation.mahito.2s_domain
execute as @s[scores={domainstart=10000..10001}] at @s run tp @s ~~~~ 0
execute as @s[scores={domainstart=10000}] at @s run execute as @a[r=100] at @s run playsound music.mahito_02_domain2 @s ~~~  99999 1 99999


execute as @s[scores={domainstart=10000..10001}] at @s anchored eyes run camera @a[r=75] set minecraft:free pos ^ ^-0.75 ^4 facing ~~1~
execute as @s[scores={domainstart=9997..9998}] at @s anchored eyes run camera @a[r=75] set minecraft:free ease 4.5 in_out_circ pos ^ ^ ^10 facing ~~5~


execute as @s[scores={domainstart=9995}] at @s run summon ds:perfection_domain2 ~~5~ facing ^^^20

tag @s[tag=!domainactive,scores={domainstart=9911..}] add domainactive
tag @s[tag=domainactive,scores={domainstart=9000..9910}] remove domainactive


execute as @s[scores={domainstart=9995}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={domainstart=9993}] at @s run summon gg:impact_frame_black ~~~
execute as @s[scores={domainstart=9991}] at @s run particle ds:invert ^^1^1
execute as @s[scores={domainstart=9989}] at @s run summon gg:impact_frame ~~~

execute as @s[scores={domainstart=9989}] at @s run particle ds:perfection_domain12
execute as @s[scores={domainstart=9969}] at @s run particle ds:perfection_domain12
execute as @s[scores={domainstart=9949}] at @s run particle ds:perfection_domain12
execute as @s[scores={domainstart=9929}] at @s run particle ds:perfection_domain12
execute as @s[scores={domainstart=9909}] at @s run particle ds:perfection_domain12

execute as @s[scores={domainstart=9800..}] at @s run scoreboard players set @e[scores={domainCD=0..20},r=80,rm=1] domainCD 100


execute as @s[scores={domainstart=9990}] at @s run particle ds:perfection_domain_2sec2 ~~~

execute as @s[scores={domainstart=9880}] at @s run camera @a[r=100] fade time 0.25 0.5 0.1 color 255 255 255

execute as @s[scores={domainstart=9885}] at @s run execute as @a[r=100] at @s run playsound music.domainbreak @s ~~~  99999 1.25 99999

execute as @s[scores={domainstart=9890}] at @s positioned ^^^30 if entity @e[type=ds:perfection_domain2,r=60] run execute as @e[type=!ds:yuji_itadori,family=!sukuna,tag=!has_sukuna,tag=!Frames,tag=!soul_adapted,r=60,tag=!purecurse,family=!curse,tag=!idle_transfig,family=!transfigured_human,tag=!heavenlyrestriction,family=!heavenlyrestriction] at @s unless entity @s[scores={dying=1..}] unless entity @s[scores={domainimmune=1..}] run function idle_transfig/transfigure_touched2b

execute as @s[scores={domainstart=9868..9870}] at @s run particle ds:domain_smash1 ~~1~
execute as @s[scores={domainstart=9868..9870}] at @s run particle ds:domain_smash2 ~~1~
execute as @s[scores={domainstart=9868..9870}] at @s run particle ds:domain_smash3 ~~1~
execute as @s[scores={domainstart=9870}] at @s run event entity @e[type=ds:perfection_domain2,c=1] ds:disappear
execute as @s[scores={domainstart=9870}] at @s run function cancel_domain_cutscene
execute as @s[scores={domainstart=9800..9875}] at @s run camera @a[r=100] clear
scoreboard players set @s[scores={domainstart=9800..9870}] domainstart 0


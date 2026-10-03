
execute as @e[type=!player,r=50,rm=1] at @s run tp @s ~~~ facing @e[scores={sukunacutscene=1..},c=1]
effect @a[r=8] weakness 1 10 true

scoreboard players set @s[scores={sukunacutscene=201..}] Stun 200
scoreboard players set @s[scores={sukunacutscene=201..}] Disabled 200
scoreboard players set @a[r=52] Move 116
scoreboard players set @a[r=52] infinity 116
scoreboard players set @a[r=52] Frames 116
scoreboard players set @a[r=52] Camera 116
scoreboard players set @e[r=52,rm=2] Stun 50
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

effect @s[type=!player] slowness 1 99 true
execute as @s[type=!player] at @s run tp @s ~~~

playanimation @s[scores={sukunacutscene=700..701}] animation.heian_sukuna_awakening
execute as @s[scores={sukunacutscene=700..701}] at @s run tp @s @s
event entity @s[scores={sukunacutscene=697..701},has_property={property:kamutoke=1..}] kamutoke_on_right
event entity @s[scores={sukunacutscene=9915..9920},has_property={property:kamutoke=1..}] kamutoke_on
event entity @s[scores={sukunacutscene=697..701},has_property={property:hiten=1..}] hiten_off
event entity @s[scores={sukunacutscene=9915..9920},has_property={property:hiten=1..}] hiten

execute as @s[scores={sukunacutscene=696..701}] at @s run scriptevent ds:knockback 0.25

execute as @s[scores={sukunacutscene=699..701}] at @s run event entity @s jjka:remove_sukuna_scale
execute as @s[scores={sukunacutscene=699..701},has_property={property:body_transformation=!0}] at @s run event entity @s heian_off

execute as @s[scores={sukunacutscene=700..701}] at @s run execute as @a at @s run playsound music.heian_awakening @s ~~~ 999999 1 999999

execute as @s[scores={sukunacutscene=700..701}] at @s run camera @a[r=50] fade time 0 0.15 0.5 color 0 0 0
execute as @s[scores={sukunacutscene=700..701}] at @s run summon ds:projectile ~~~ facing ^^^10 none heiancamera 


execute as @s[scores={sukunacutscene=700..701}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^^1.4^2 facing ~~1.4~
execute as @s[scores={sukunacutscene=699..699}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 2 in_sine pos ^^1.4^1 facing ~~1.4~

execute as @s[scores={sukunacutscene=670}] at @s run camera @a[r=50] fade time 0.4 0.15 0.25 color 0 0 0
execute as @s[scores={sukunacutscene=659..660}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^-22^1^14 facing ~~16~
execute as @s[scores={sukunacutscene=637..648}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 3.5 in_sine pos ^-20^1^12 facing ~~15~

execute as @s[scores={sukunacutscene=1..},type=player] at @s run tp @e[type=ds:projectile,name=heiancamera,c=1] @s

execute as @s[scores={sukunacutscene=561}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^14^15^22 facing ~~2~
execute as @s[scores={sukunacutscene=559..560}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 3 in_sine pos ^14^15^22 facing ~~25~

execute as @s[scores={sukunacutscene=520}] at @s run camera @a[r=50] fade time 0.5 0.15 0.25 color 0 0 0

execute as @s[scores={sukunacutscene=510}] at @s run execute as @a at @s run playsound music.eye @s ~~~ 99999 1 99999
execute as @s[scores={sukunacutscene=509}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^0.1^1.75^0.8 facing ^0.1^1.75^0.1
execute as @s[scores={sukunacutscene=507..508}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 1.75 in_sine pos ^0.1^1.75^0.68 facing ^0.1^1.75^0.1

execute as @s[scores={sukunacutscene=470}] at @s run camera @a[r=50] fade time 0.45 1 1.5 color 255 70 50

execute as @s[scores={sukunacutscene=454}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^-1.5^1.45^1 facing ^^1.65^0.75


execute as @s[scores={sukunacutscene=450}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run particle ds:heian_text1 ^3^3^2.5
execute as @s[scores={sukunacutscene=420}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run particle ds:heian_text2 ^-0.7^1.25^0.6

execute as @s[scores={sukunacutscene=311}] at @s run camera @a[r=50] fade time 0.45 0.5 1.5 color 0 0 0

execute as @s[scores={sukunacutscene=299..300}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^^1.5^8 facing ^^1^0.75
execute as @s[scores={sukunacutscene=299..310}] at @s run effect @a[r=52] darkness 5 3 true
execute as @s[scores={sukunacutscene=299..300},has_property={property:body_transformation=!2}] at @s run event entity @s heian_red

execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:turbo_intensity3b ~~0.5~
execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:heian_walk1
execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:heian_smoke3 ^^1^1 
execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:cutscene_black2
execute as @s[scores={sukunacutscene=190..295}] at @s run particle ds:cutscene_black4 ~~0.1~
execute as @s[scores={sukunacutscene=200..295}] at @s run scriptevent ds:knockback 0.05
execute as @s[scores={sukunacutscene=290}] at @s run summon gg:impact_frame
execute as @s[scores={sukunacutscene=289}] at @s run particle ds:red_tint ^^1^5

execute as @s[scores={sukunacutscene=285}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=284}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=279..283}] at @s run title @a[tag=!impactframesoff,r=52] title .


execute as @s[scores={sukunacutscene=195..200}] at @s run tp @s @s
execute as @s[scores={sukunacutscene=195..200}] at @s run tp @e[type=ds:projectile,name=heiancamera,c=1] @s

execute as @s[scores={sukunacutscene=185..190},has_property={property:body_transformation=!1}] at @s run event entity @s heian_on
execute as @s[scores={sukunacutscene=185..190}] at @s run function sukuna/grant_skills

execute as @s[scores={sukunacutscene=205}] at @s run camera @a[r=50] fade time 0.6 0.15 0.25 color 0 0 0
execute as @s[scores={sukunacutscene=189..190}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^-1^0.33^0.25 facing ^^0.2^0.25

execute as @s[scores={sukunacutscene=160..161}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^0.1^1.75^0.45 facing ^0.1^1.75^0.1
execute as @s[scores={sukunacutscene=160..161}] at @s run playsound mob.wither.spawn @a ~~~ 9999 1.5 9999

execute as @s[scores={sukunacutscene=149..150}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^^1.4^1.1 facing ^^1.4^0.25

execute as @s[scores={sukunacutscene=131..132}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^0.5^1.4^0.65 facing ^0.1^1^0.75
execute as @s[scores={sukunacutscene=129..130}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 0.75 in_out_circ pos ^0.5^1.4^0.75 facing ^1^1.2^0.4

execute as @s[scores={sukunacutscene=100..101}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free  pos ^-0.15^1.5^1.15 facing ^-1^1.2^0



execute as @s[scores={sukunacutscene=60..61}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free pos ^-2^0.25^1.5 facing ~~1.7~
execute as @s[scores={sukunacutscene=58..59}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run camera @a[r=52] set minecraft:free ease 4.5 in_out_circ pos ^-3^0.25^3 facing ~~1.7~

execute as @s[scores={sukunacutscene=103}] at @s run execute as @a at @s run playsound music.spinning @s ~~~ 99999 1.5 99999


execute as @s[scores={sukunacutscene=1..7}] at @s run camera @a clear

execute as @s[scores={sukunacutscene=143}] at @s run execute as @a at @s run playsound music.claphands @s ~~~ 99999 1 99999
execute as @s[scores={sukunacutscene=140}] at @s run particle ds:red_impact1 ^^1.2^0.55
execute as @s[scores={sukunacutscene=140}] at @s run particle ds:red_impact2 ^^1.2^0.55
execute as @s[scores={sukunacutscene=140}] at @s run particle ds:red_impact3 ^^1.2^0.55
execute as @s[scores={sukunacutscene=140}] at @s run particle ds:air_gust2 ~~~

execute as @s[scores={sukunacutscene=142}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=141}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=140}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=135..139}] at @s run title @a[tag=!impactframesoff,r=52] title .


execute as @s[scores={sukunacutscene=300..620}] at @s run particle ds:heian_smoke1 ~~1~

execute as @s[scores={sukunacutscene=500}] at @s run particle ds:heian_smoke4 ~~1~


execute as @s[scores={sukunacutscene=50..620}] at @s run particle ds:heian_smoke2 ~~1~

execute as @s[scores={sukunacutscene=624..625}] at @s run fog @a push minecraft:fog_hell heian_era

execute as @s[scores={sukunacutscene=500..624}] at @s run particle ds:heian_awaken1
execute as @s[scores={sukunacutscene=617}] at @s run particle ds:heian_beam_start2 ~~15~
execute as @s[scores={sukunacutscene=615}] at @s run particle ds:heian_beam_start3 ~~15~
execute as @s[scores={sukunacutscene=610..612}] at @s run event entity @s jjka:give_sukuna_scale
execute as @s[scores={sukunacutscene=610..612},has_property={property:body_transformation=!1}] at @s run event entity @s heian_on
replaceitem entity @s[scores={sukunacutscene=610..612}] slot.armor.chest 1 air
replaceitem entity @s[scores={sukunacutscene=610..612}] slot.armor.feet 1 air
replaceitem entity @s[scores={sukunacutscene=610..612}] slot.armor.legs 1 air
execute as @s[scores={sukunacutscene=627}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=626}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=625}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=624}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=623}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=622}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=620}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=619}] at @s run title @a[tag=!impactframesoff,r=52] title 
execute as @s[scores={sukunacutscene=615..618}] at @s run title @a[tag=!impactframesoff,r=52] title .
execute as @s[scores={sukunacutscene=619}] at @s run summon gg:impact_frame
execute as @s[scores={sukunacutscene=618}] at @s run particle ds:red_tint ^-22^0.5^13
execute as @s[scores={sukunacutscene=617}] at @s run particle ds:invert ^-22^0.5^13

execute as @s[scores={sukunacutscene=1..6}] at @s run execute as @a at @s run particle ds:heian_pressure

scoreboard players set @s[scores={sukunacutscene=16..20}] sukunacutscene 10000
execute as @s[scores={sukunacutscene=9940..9941}] at @s run camera @a[r=50] fade time 0.5 4 1 color 0 0 0

tag @s[scores={sukunacutscene=9900..}] add heian_era

execute as @s[scores={sukunacutscene=9999}] at @s run particle ds:air_gust1
execute as @s[scores={sukunacutscene=9980}] at @s run particle ds:air_gust1
execute as @s[scores={sukunacutscene=9965}] at @s run particle ds:air_gust1
execute as @s[scores={sukunacutscene=9950}] at @s run particle ds:air_gust1
execute as @s[scores={sukunacutscene=9940}] at @s run particle ds:air_gust1

execute as @s[scores={sukunacutscene=52..53}] at @s run particle ds:red_tint ^-2.5^^2.5
execute as @s[scores={sukunacutscene=52..53}] at @s run playsound mob.fuga_shoot @a ~~~ 99999 0.7 99999

execute as @s[scores={sukunacutscene=52..53}] at @s run particle ds:red_impact1 ~~1~
execute as @s[scores={sukunacutscene=52..53}] at @s run particle ds:red_impact2 ~~1~

execute as @s[scores={sukunacutscene=9930..}] at @s run particle ds:energy_refill1_red ~~1~
execute as @s[scores={sukunacutscene=9930..}] at @s run particle ds:energy_refill3_red
execute as @s[scores={sukunacutscene=9930..}] at @s run particle ds:heian_energy2 ~~~
execute as @s[scores={sukunacutscene=15..51}] at @s run particle ds:energy_refill1_red ~~1~
execute as @s[scores={sukunacutscene=15..51}] at @s run particle ds:energy_refill3_red
execute as @s[scores={sukunacutscene=15..51}] at @s run particle ds:heian_energy2 ~~~


execute as @s[scores={sukunacutscene=9990}] at @s run playsound mob.impact @a ~~~ 99999 0.7 999999
execute as @s[scores={sukunacutscene=9990}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run particle ds:heianera1 ^-2.25^2^-1


execute as @s[scores={sukunacutscene=9969}] at @s run playsound mob.impact @a ~~~ 99999 0.7 999999
execute as @s[scores={sukunacutscene=9969}] at @s run execute as @e[type=ds:projectile,name=heiancamera,c=1] at @s run particle ds:heianera2 ^1^1^2.15

execute as @s[scores={sukunacutscene=9900..9917}] at @s run title @a[tag=!impactframesoff,r=52] title .

scoreboard players set @s[scores={sukunacutscene=9900..9945}] endurance 666

scoreboard players set @s[scores={sukunacutscene=9900..9915}] sukunacutscene 14

execute as @s[scores={sukunacutscene=1..15}] at @s run effect @s instant_health 1 10 true
effect @a[scores={sukunacutscene=1..15,endurance=666..},tag=!120percent] health_boost 99999999 184 true
effect @a[scores={sukunacutscene=1..15,endurance=666..},tag=120percent] health_boost 99999999 194 true

execute as @s[scores={sukunacutscene=1..15},has_property={property:body_transformation=!1}] at @s run event entity @s heian_on
execute as @s[scores={sukunacutscene=1..15}] at @s run fog @a remove heian_era
execute as @s[scores={sukunacutscene=1..5}] at @s run function end_cutscene


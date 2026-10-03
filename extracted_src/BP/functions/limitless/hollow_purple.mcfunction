execute as @s[name=HollowP,scores={Deleter=0..262},tag=!Stopped] at @s run tp @s ^^^3
execute as @s[name=HollowP,scores={Deleter=0..262},tag=!Stopped] at @s run tp @s ~~~ facing @e[name=HollowPTRG,c=1]


scoreboard players random @s[name=HollowP,scores={Deleter=0..262}] chance 1 5
execute as @s[name=HollowP,scores={Deleter=0..250,chance=1}] at @s run particle ds:hollow_purple7 ~~~

execute as @s[name=HollowPTRG] at @s run tp @s ~~~

tag @s[name=HollowP] add Frames
tag @s[name=HollowPTRG] add Frames

execute as @s if entity @e[name=fuga_arrow1,r=20] at @s run function hollow_nuked


execute as @s[name=HollowP,scores={Deleter=4..}] at @s if entity @e[name=HollowPTRG,c=1,r=5] run scoreboard players set @s Deleter 3


execute as @s[name=HollowP,scores={Deleter=0..}] at @s run kill @e[type=falling_block,r=20]
execute as @s[name=HollowP,scores={Deleter=0..}] at @s run tickingarea add ~20~~20~-20~~-20 HollowOrb1
tickingarea remove HollowOrb2
execute as @s[name=HollowP,scores={Deleter=0..}] at @s run tickingarea add ~20~~20~-20~~-20 HollowOrb2
tickingarea remove HollowOrb1

execute as @s[name=HollowP] at @s run playsound mob.stormwraith.attack @a ~~~ 0.15 1.75
execute as @s[name=HollowP] at @s run playsound mob.stormwraith.attack @a ~~~ 0.15 1.5
execute as @s[name=HollowP] at @s run playsound mob.stormwraith.attack @a ~~~ 0.15 0.4

playanimation @s[name=HollowP] animation.hollowp

execute as @s[name=HollowP,scores={Deleter=0..250}] at @s if entity @e[tag=griefable]  positioned ~~2 ~ run function 4x4sphere
execute as @s[name=HollowP,scores={Deleter=0..200}] at @s unless block ~~~ air run camerashake add @a[r=50] 4 0.1
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless block ~~~ air run particle ds:hollow_impact ~~2.8~

execute as @s[name=HollowP,scores={Deleter=0..}] at @s  run execute as @e[c=1,scores={ab=1..},tag=limitless] at @s run function damages/deletion_damage

execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless block ~~-0.3~ air run particle ds:rubble3
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless block ~~-0.3~ air run particle ds:rubble3
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s run particle mcdp_v:knockback_roar_particle_2 ~~2.8~

execute as @s[name=HollowP,scores={Deleter=0..240}] at @s run summon ds:lapse_explode ^ ^ ^-7

execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple1 ~~~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple2 ~~~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple3 ~~~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple4 ~~~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple5 ~~~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:hollow_purple6 ~~~

execute as @s[name=HollowP,scores={Deleter=0..250}] at @s run particle ds:hollow_purple_air2 ~~3~
execute as @s[name=HollowP,scores={Deleter=0..250}] at @s run particle ds:hollow_purple_air ~~3~
execute as @s[name=HollowP,scores={Deleter=0..200}] at @s run camerashake add @a[r=50] 2.5 0.1

execute as @s[name=HollowP,scores={Deleter=0..262}] at @s run effect @e[tag=!Frames,r=20,scores={domainamp=1..},tag=!infinity,tag=!form5b] resistance 1 5 true
execute as @s[name=HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=20,scores={domainamp=1..},tag=!infinity,tag=!form5b] 15

execute as @s[name=HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=7,tag=!deletion_adapted,tag=!infinity,tag=!form5b] 40 override
execute as @s[name=HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=7,tag=deletion_adapted,tag=!infinity,tag=!form5b] 10 override
execute as @s[name=HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=15,rm=5,tag=!infinity,tag=!form5b] 5 override



scoreboard players set @s[name=HollowP,scores={Deleter=4..157}] Deleter 3

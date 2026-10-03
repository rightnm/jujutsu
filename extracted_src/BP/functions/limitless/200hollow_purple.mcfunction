execute as @s[name=200HollowP,scores={Deleter=243..262},tag=!Stopped] at @s run tp @s ^^^0.55
execute as @s[name=200HollowP,scores={Deleter=243..262},tag=!Stopped] at @s run tp @s ^^^0.55
execute as @s[name=200HollowP,scores={Deleter=243..262},tag=!Stopped] at @s run tp @s ^^^0.55
execute as @s[name=200HollowP,scores={Deleter=0..242},tag=!Stopped] at @s run tp @s ^^^1.25
execute as @s[name=200HollowP,scores={Deleter=0..242},tag=!Stopped] at @s run tp @s ^^^1.25



scoreboard players random @s[name=200HollowP,scores={Deleter=0..262}] chance 1 5
execute as @s[name=200HollowP,scores={Deleter=0..250,chance=1}] at @s run particle ds:hollow_purple7 ~~16~

execute as @s if entity @e[name=fuga_arrow1,r=40] at @s run function hollow_nuked

execute as @s[name=200HollowP,scores={Deleter=260..264}] at @s run  effect @a[r=100] night_vision 4 1 true
execute as @s[name=200HollowP,scores={Deleter=260..264}] at @s run particle ds:200hollow_shoot1 ^^16^-4
execute as @s[name=200HollowP,scores={Deleter=260..264}] at @s run particle ds:200purple_shoot2 ^^16^-4
execute as @s[name=200HollowP,scores={Deleter=260..264}] at @s run particle ds:200hollow_shoot3 ^^16^-4
execute as @s[name=200HollowP,scores={Deleter=260..264}] at @s run particle ds:200hollow_shoot4 ^^16^-4
execute as @s[name=200HollowP,scores={Deleter=1..}] at @s run execute as @e[scores={ab=1..},tag=limitless,c=1] at @s run function damages/deletion_damage

tag @s[name=200HollowP] add Frames
tag @s[name=200HollowPTRG] add Frames

execute as @s[name=200HollowP,scores={Deleter=0..}] at @s run kill @e[type=item,r=50]
execute as @s[name=200HollowP,scores={Deleter=0..}] at @s run kill @e[type=falling_block,r=50]
execute as @s[name=200HollowP,scores={Deleter=0..}] at @s run tickingarea add ~30~~30~-30~~-30 200HollowOrb1
tickingarea remove 200HollowOrb2
execute as @s[name=200HollowP,scores={Deleter=0..}] at @s run tickingarea add ~30~~30~-30~~-30 200HollowOrb2
tickingarea remove 200HollowOrb1


playanimation @s[name=200HollowP] animation.200hollowp

execute as @s[name=200HollowP,scores={Deleter=4..250}] at @s if entity @a[tag=griefable]  positioned ~~14 ~ run fill ~6~6~6~-6~-6~-6 air
execute as @s[name=200HollowP,scores={Deleter=0..200}] at @s unless block ~~~ air run camerashake add @a[r=50] 4 0.1
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless block ~~~ air run particle ds:hollow_impact ~~12.8~

execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless block ~~-0.3~ air run particle ds:rubble_rain
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless block ~~-0.3~ air run particle ds:rubble3

execute as @s[name=200HollowP,scores={Deleter=0..245}] at @s run summon ds:red_reversal ^ ^ ^-12
execute as @s[name=200HollowP,scores={Deleter=0..245}] at @s run summon ds:red_reversal ^ ^12 ^-12

execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple1 ~~~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple2 ~~~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple3 ~~~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple4 ~~~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple5 ~~~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s unless entity @a[r=70] run particle ds:200hollow_purple6 ~~~

execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s run particle ds:200hollow_purple_air2 ~~3~
execute as @s[name=200HollowP,scores={Deleter=0..250}] at @s run particle ds:200hollow_purple_air ~~3~
execute as @s[name=200HollowP,scores={Deleter=0..200}] at @s run camerashake add @a[r=150] 1.5 0.1
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run effect @e[tag=!Frames,r=30,scores={domainamp=1..}] resistance 1 5 true
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=30,scores={domainamp=1..}] 15
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=17,type=!ds:red_reversal,tag=!deletion_adapted] 300
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=17,type=!ds:red_reversal,tag=!deletion_adapted] 10 override
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=17,tag=deletion_adapted] 50
execute as @s[name=200HollowP,scores={Deleter=0..262}] at @s run damage @e[tag=!Frames,r=65,rm=5] 2

scoreboard players set @s[name=200HollowP,scores={Deleter=4..197}] Deleter 3


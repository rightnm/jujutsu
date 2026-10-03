
execute as @s[name=Lapse2,scores={Deleter=40..}] at @s run tp @s ~~1~
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run particle ds:lapseblue3 ~~~
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run particle ds:lapseblue5 ~~~
execute as @s[name=Lapse2,scores={Deleter=1..30}] at @s run particle ds:lapseblue2 ~~~
execute as @s[name=Lapse2,scores={Deleter=1..22}] at @s run particle ds:lapseblue1 ~~~


execute as @s[name=Lapse2,scores={Deleter=30}] at @s run particle ds:lapseblue1 ~~~
execute as @s[name=Lapse2,scores={Deleter=28}] at @s run particle ds:lapseblue1 ~~~
execute as @s[name=Lapse2,scores={Deleter=27}] at @s run particle ds:lapseblue1 ~~~
execute as @s[name=Lapse2,scores={Deleter=25}] at @s run particle ds:lapseblue1 ~~~

execute as @s[name=Lapse2,scores={Deleter=21..}] at @s run particle ds:blue_gas

execute as @s[name=Lapse2,scores={Deleter=1..20}] at @s run execute as @e[family=special_grade,r=12,scores={Stun=7..}] at @s run tp @s ^^4^-5
execute as @s[name=Lapse2,scores={Deleter=1..20}] at @s run execute as @e[family=heavenly_restriction,r=12,scores={Stun=7..}] at @s run tp @s ^^4^-5

execute as @s[name=Lapse2,scores={Deleter=1..}] at @s if entity @e[name=phasered,r=8] run function limitless/improvised_purple_small

execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run function damages/pull_damage

execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run tp @s ~~~
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run camerashake add @a[r=15] 0.5 0.15



execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[r=22,tag=!Frames,tag=!limitless,name=!Lapse2,tag=Big] at @s run tp @s ^^^0.25 facing @e[name=Lapse2,c=1]
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[r=13,tag=!Frames,tag=!limitless,name=!Lapse2] at @s run tp @s ^^^0.131 facing @e[name=Lapse2,c=1]
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[r=13,tag=!Frames,tag=!limitless,name=!Lapse2] at @s run tp @s ^^^0.131 facing @e[name=Lapse2,c=1]
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[r=3,tag=!Frames,tag=!limitless,name=!Lapse2] at @s run tp @s ~~0.5~

execute as @s[name=Lapse2,scores={Deleter=37}] at @s run effect @e[r=8] resistance 1 20 true
execute as @s[name=Lapse2,scores={Deleter=35}] at @s run effect @e[r=8] resistance 0 40 true
execute as @s[name=Lapse2,scores={Deleter=36}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=36}] at @s run summon ds:lapse_explode

execute as @s[name=Lapse2,scores={Deleter=3..45}] at @s run damage @e[family=q_clan,r=10] 2 override

execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=3..5}] at @s run summon ds:lapse_explode
execute as @s[name=Lapse2,scores={Deleter=6}] at @s run effect @e[r=8] resistance 1 20 true
execute as @s[name=Lapse2,scores={Deleter=2}] at @s run effect @e[r=8] resistance 0 40 true
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run kill @e[type=item,r=7]

execute as @s[name=Lapse2,scores={Deleter=1..35}] at @s if entity @a[tag=griefable] run function 4x4sphere

execute as @s[name=Lapse2,scores={Deleter=40..}] at @s run  playsound portal.trigger @a ~~~  600 2.5 600
execute as @s[name=Lapse2,scores={Deleter=40..}] at @s run  playsound portal.trigger @a ~~~  600 2.85 600
execute as @s[name=Lapse2,scores={Deleter=40..}] at @s run  playsound portal.trigger @a ~~~  600 2 600

execute as @s[name=Lapse2,scores={Deleter=11..}] at @s run  playsound beacon.deactivate @a ~~~  600 0.3 600
execute as @s[name=Lapse2,scores={Deleter=11..}] at @s run  playsound beacon.deactivate @a ~~~ 600 0.45 600

execute as @s[name=Lapse2,scores={Deleter=1..35}] at @s unless block ~~-1~ air run particle ds:rubble_sucked1
execute as @s[name=Lapse2,scores={Deleter=1..35}] at @s unless block ~~-1~ air run particle ds:rubble_sucked2


execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[scores={detect_health=0..5},r=5,type=!ds:no_knockback_dummy,type=!ds:knockback_dummy] at @s run particle ds:blood_mist ~~1~
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[scores={detect_health=0..5},r=5,type=!ds:no_knockback_dummy,type=!ds:knockback_dummy] at @s run particle ds:blood_explode ~~1~
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run execute as @e[scores={detect_health=0..5},r=5,type=!ds:no_knockback_dummy,type=!ds:knockback_dummy] at @s run playsound mob.blood @a[r=100] ~~~ 99999 0.8 99999
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run damage @e[r=3.85,tag=!Frames,tag=!limitless] 6
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s if entity @e[family=gojo,r=50] run damage @e[r=3.85,tag=!Frames,tag=!limitless,family=purecurse] 2 override
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run scoreboard players add @e[r=3.85,tag=!Frames,tag=!limitless] Evade 2
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run scoreboard players set @e[r=3.85,tag=!Frames,tag=!limitless] Stun 15
execute as @s[name=Lapse2,scores={Deleter=1..}] at @s run scoreboard players add @e[r=3.85,tag=!Frames,tag=!limitless] Hit 1

execute as @s[name=Lapse2,scores={Deleter=31..35}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace water
execute as @s[name=Lapse2,scores={Deleter=21..30}] at @s run fill ~4~4~4~-4~-4~-4 air [] replace water
execute as @s[name=Lapse2,scores={Deleter=11..20}] at @s run fill ~5~5~5~-5~-5~-5 air [] replace water
execute as @s[name=Lapse2,scores={Deleter=1..10}] at @s run fill ~6~6~6~-6~-6~-6 air [] replace water



execute as @s[name=Lapse2,scores={Deleter=31..35}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace lava
execute as @s[name=Lapse2,scores={Deleter=21..30}] at @s run fill ~4~4~4~-4~-4~-4 air [] replace lava
execute as @s[name=Lapse2,scores={Deleter=11..20}] at @s run fill ~5~5~5~-5~-5~-5 air [] replace lava
execute as @s[name=Lapse2,scores={Deleter=1..10}] at @s run fill ~6~6~6~-6~-6~-6 air [] replace lava


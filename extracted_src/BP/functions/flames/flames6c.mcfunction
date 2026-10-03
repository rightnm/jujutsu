playanimation @s[scores={move=320}] animation.maximum_meteor
tag @s[scores={move=1..2},tag=form6c] remove form6c
tag @s[scores={move=1..4},tag=dodged] remove dodged

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Frames 40
scoreboard players set @s[scores={move=1..}] Camera 4

execute as @s[scores={move=320}] at @s run tp @s @s
camera @s[scores={move=310..319},type=player] set minecraft:free pos ^^1.25^3 facing ^^1.25^
camera @s[scores={move=309},type=player] set minecraft:free ease 0.5 in_sine pos ^^1.25^2 facing ^^1.25^

execute as @s[scores={move=1..}] at @s run tickingarea add ~30~~30~-30~~-30 meteor

execute as @s[scores={move=1..4}] at @s run function cancel_attack

execute as @s[scores={move=300}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=300}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=300}] at @s run particle ds:crater1 
execute as @s[scores={move=300}] at @s run particle ds:leap
execute as @s[scores={move=299}] at @s run tp @s ~~65~
execute as @s[scores={move=296..299}] at @s run tp @s ~~~
execute as @s[scores={move=298}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=298}] at @s run particle ds:flashstep2 ~~~




effect @s[scores={move=1..20}] resistance 7 20 true
effect @s[scores={move=1..20}] slow_falling 7 10 true


execute as @s[scores={move=295..297}] at @s run fill ~3~3~3~-3~-3~-3 barrier [] replace air
execute as @s[scores={move=5..297}] at @s run fill ~1 ~1 ~1 ~-1 ~ ~-1 air [] replace barrier

execute as @s[scores={move=295}] at @s run execute as @a[r=200] at @s run playsound music.maximum1 @s ~~~ 99999 1 99999
execute as @s[scores={move=272}] at @s run execute as @a[r=200] at @s run playsound music.maximumtheme @s ~~~ 999999 1 999999
execute as @s[scores={move=255}] at @s run execute as @a[r=200] at @s run playsound music.maximum2 @s ~~~ 99999 1 99999
execute as @s[scores={move=298}] at @s run camera @s fade time 0.15 0.15 0.15 color 0 0 0
camera @s[scores={move=292..295},type=player] set minecraft:free pos ^^-15^15 facing ^-1^1^
camera @s[scores={move=290..291},type=player] set minecraft:free ease 5 in_out_circ pos ^^-5^5 facing ^-0.5 ^6^


execute as @s[scores={move=100..294}] at @s run tp @e[type=ds:meteor,c=1,tag=!MeteorShoot,r=50] ^^35^-15 facing ^^^40
execute as @s[scores={move=100..294}] at @s run effect @e[type=ds:meteor,c=1,r=50] resistance 1 5 true
execute as @s[scores={move=100..294}] at @s run effect @e[type=ds:meteor,c=1,r=50] instant_health 1 5 true
execute as @s[scores={move=292..294}] at @s run playanimation @e[type=ds:meteor,c=1,r=50] animation.meteor

execute as @s[scores={move=101..294}] at @s unless entity @e[type=ds:meteor,r=50] run summon ds:meteor ^^35^-15 facing ^^^40 none "Maximum Meteor"

execute as @s[scores={move=160..234}] at @s run execute as @e[type=ds:meteor,c=1,r=50] at @s run particle ds:meteor_charge1
execute as @s[scores={move=160..234}] at @s run execute as @e[type=ds:meteor,c=1,r=50] at @s run particle ds:meteor_charge2
execute as @s[scores={move=160..294}] at @s run execute as @e[type=ds:meteor,c=1,r=50] at @s run particle ds:meteor_charge3
execute as @s[scores={move=160..294}] at @s run execute as @e[type=ds:meteor,c=1,r=50] at @s run particle ds:meteor_charge4

execute as @s[scores={move=201..294}] at @s run particle ds:meteor_charge5
execute as @s[scores={move=1..294}] at @s run camerashake add @a[r=100] 0.2 0.095
execute as @s[scores={move=1..294}] at @s run execute as @e[type=ds:meteor,c=1] at @s run particle ds:meteor_aura1
execute as @s[scores={move=1..194}] at @s run execute as @e[type=ds:meteor,c=1] at @s run particle ds:meteor_aura2
execute as @s[scores={move=1..174}] at @s run execute as @e[type=ds:meteor,c=1] at @s run particle ds:meteor_aura3
execute as @s[scores={move=1..174}] at @s run execute as @e[type=ds:meteor,c=1] at @s run particle ds:meteor_aura4
execute as @s[scores={move=1..294}] at @s run scoreboard players set @e[type=ds:meteor,c=1] Deleter 10

camera @s[scores={move=180..200},type=player] set minecraft:free ease 3 in_out_circ pos ^35^45^-25 facing ^^-30^40

execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=5..}] at @s if entity @e[tag=griefable,c=1] run fill ~15 ~18 ~15 ~-15 ~30 ~-15 air
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=5..}] at @s if entity @e[tag=griefable,c=1] run summon ds:energy_explosion ~~-5~
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=4..}] at @s if entity @e[tag=griefable,c=1] run spreadplayers ~~ 25 50 @e[type=ds:energy_explosion,c=1]

execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1] at @s run tp @s ~~~
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=5..}] at @s if entity @e[tag=griefable,c=1] run tickingarea add ~40~~40~-40~~-40 meteorarea
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=1..4}] at @s if entity @e[tag=griefable,c=1] run tickingarea remove meteorarea
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=1..10}] at @s if entity @e[tag=griefable,c=1] run structure load meteor ~-17~-17~-17
execute if entity @s[scores={move=1..99}] as @e[name=summonmeteor,c=1,scores={Deleter=1..10}] at @s if entity @e[tag=griefable,c=1] run kill @e[type=item,r=50]

playanimation @e[tag=MeteorShoot,type=ds:meteor,c=1] animation.meteor2

tag @s[scores={move=99..100},tag=!dodged] add dodged
execute as @s[scores={move=99..100}] at @s run tag @e[type=ds:meteor,c=1] add MeteorShoot
execute as @s[scores={move=100}] at @s run execute as @a[r=200] at @s run playsound mob.red2 @s ~~~ 9999 2 9999

execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tp @s ^^-1^0.715
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s unless block ~~~ air unless block ~~~ barrier run function flames/meteor_land

execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s run tickingarea add ~38 ~ ~38 ~-38 ~ ~-38 meteor
execute as @s[scores={move=1..100}] at @s run execute as @e[type=ds:meteor,c=1,tag=MeteorShoot] at @s if block ~~~ air unless block ~~~ barrier run tickingarea remove meteor

execute as @s[scores={move=0..5}] at @s run fill ~10~10~10~-10~-10~-10 air [] replace barrier

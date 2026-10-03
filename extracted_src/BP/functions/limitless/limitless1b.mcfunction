playanimation @s[scores={move=80}] animation.infinite_pressure

effect @s[scores={move=3..}] slowness 1 3 true

tag @s[scores={move=1..2}] remove form1b

tag @s[scores={move=76..,Stun=1..}] remove form1b
scoreboard players set @s[scores={move=76..,Stun=1..}] move 0

execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.75,rm=0.55,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s run tp @s @s
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.15,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^1.1^-0.11 air run tp @s ^^^-0.11 facing @s[scores={move=24..74},c=1,rm=0.15]
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.15,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^1.1^-0.11 air run tp @s ^^^-0.11
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.15,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^1.1^-0.11 air run tp @s ^^^-0.11
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.15,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^1.1^-0.11 air run tp @s ^^^-0.11
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.15,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^1.1^-0.11 air run tp @s ^^^-0.11
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.25,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^^-0.02 air run tp @s ^^^-0.02 facing @s[scores={move=24..74},c=1,rm=0.15]
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.25,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s if block ^^^-0.02 air run tp @s ^^^-0.02
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=4.75,rm=0.15,type=!ds:knockback,type=!ds:running,tag=!GojoProj2,type=!ds:running,tag=!GojoProj] at @s run tp @s @s

execute as @s[scores={move=24..74}] at @s run function damages/pull_damage

execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s run tp @s @s
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s run tp @s ~~~ facing @p[tag=form1b,tag=limitless] 
execute as @s[scores={move=24..74}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s run playanimation @s animation.infinite_pressure2
execute as @s[scores={move=24..74}] at @s run damage @e[tag=!infinity,r=5,rm=0.15] 1
execute as @s[scores={move=24..74}] at @s run scoreboard players set @e[tag=!infinity,r=5,rm=0.15] Stun 40

execute as @s[scores={move=25..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:blood_explode
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run playsound random.explode @a ~~~ 644 0.5 644
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run playsound mob.wither.break @a ~~~ 644 0.45 644
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run camerashake add @a[r=40] 4 0.25
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:rubble3 ~~~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:dirt3 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run particle ds:ground_slam3 ~~1~
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run summon ds:pressure ~~2~
execute as @s[scores={move=21..75}] at @s run damage @e[tag=!infinity,r=5,rm=0.15] 1 override
execute as @s[scores={move=21..26}] at @s run execute as @e[tag=!infinity,r=5,rm=0.15] at @s unless block ^^^-0.15 air run damage @s 100


execute as @s[scores={move=18..21}] at @s run  tp @s ~~~

execute as @s[scores={move=75}] at @s run particle ds:infinity_1 ~~1~
execute as @s[scores={move=75}] at @s run particle ds:infinity_2 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure1 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure2 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure3 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure4 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure5 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure6 ~~1~
execute as @s[scores={move=23..75}] at @s run particle ds:infinite_pressure7 ~~1~
execute as @s[scores={move=22}] at @s run particle ds:infinite_pressure_ex1 ~~1~
execute as @s[scores={move=22}] at @s run particle ds:infinite_pressure_ex2 ~~1~
execute as @s[scores={move=22}] at @s run particle ds:infinite_pressure_ex3 ~~1~
execute as @s[scores={move=22}] at @s run particle ds:infinite_pressure_ex4 ~~1~
execute as @s[scores={move=29..75}] at @s run scoreboard players set @s infinity 5
execute as @s[scores={move=75}] at @s run playsound mob.infinity @a ~~~ 100000 1 100000
execute as @s[scores={move=23..75}] at @s run camerashake add @a[r=10] 0.2 0.15

tp @s ~~~
execute as @s[scores={Energy=4..}] at @s run tp @s ~~~ facing @p[r=100]

execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 6

execute as @s if entity @p[r=100] run scoreboard players remove @s[scores={Energy=1..}] Energy 1

execute as @s[scores={detect_health=5..30}] at @s unless entity @s[scores={Mode=0..}] run scoreboard players set @s Mode 1

scoreboard players set @s[scores={Energy=0,detect_health=0..29}] Energy 4

execute as @s[scores={Energy=2}] at @s run playsound mob.eye @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={Energy=2..3}] at @s if entity @p[r=100] run tp @s ^^^25
execute as @s[scores={Energy=1..3}] at @s if entity @p[r=100] run damage @e[tag=!Frames,type=!ds:void_eye,r=10] 2 suicide entity @s
scoreboard players set @s[scores={Energy=0,detect_health=300..}] Energy 7
scoreboard players set @s[scores={Energy=0,detect_health=100..299}] Energy 6
scoreboard players set @s[scores={Energy=0,detect_health=30..99}] Energy 5
execute as @a[scores={punch=1},r=33] run damage @e[type=ds:void_eye] 1 suicide entity @s

execute unless entity @e[type=ds:void_reactor,r=200] run particle ds:voideye_vanish
execute unless entity @e[type=ds:void_reactor,r=200] run playsound music.distort2 @a[r=150] ~~~ 99999 2 99999 
execute unless entity @e[type=ds:void_reactor,r=200] run tp @s @e[type=ds:void_reactor,c=1]
execute unless entity @e[type=ds:void_reactor,r=200] unless entity @e[type=ds:void_reactor] run event entity @s ds:disappear

execute as @s[scores={detect_health=0..1}] run function voideye_death

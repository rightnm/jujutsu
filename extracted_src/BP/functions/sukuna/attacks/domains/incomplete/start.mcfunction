
playanimation @s[scores={domainstart=120}] animation.incomplete_shrine
execute as @s[scores={domainstart=118}] at @s run playsound mob.malevolentkitchen @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=120}] at @s run camerashake add @a[r=48] 2 0.25
execute as @s[scores={domainstart=120}] at @s run playsound mob.bass @a ~~~ 100000 1 100000
execute as @s[scores={domainstart=120}] at @s run particle ds:domain_area0 ~~~
execute as @s[scores={domainstart=120}] at @s run particle ds:domainarea0 ~~~
execute as @s[scores={domainstart=120}] at @s run particle ds:domainarea1 ~~~
execute as @s[scores={domainstart=1..100}] at @s run particle ds:domainarea ~~~

execute as @s[scores={domainstart=60..}] at @s run particle ds:malevolent1 ^^1.5^-1
execute as @s[scores={domainstart=60..100}] at @s run particle ds:malevolent2 ^^1.5^-1.2
execute as @s[scores={domainstart=50..60}] at @s run particle ds:malevolent3 ^^1^
execute as @s[scores={domainstart=50..60}] at @s run particle ds:evade3 ~~~

tag @e[type=!item,scores={domainstart=1..2}] remove sukunadomain2

scoreboard players add @s[scores={domainstart=100..}] infinity 15
scoreboard players add @s[scores={domainstart=1..}] infinity 1

execute as @s[scores={domainstart=1..}] at @s unless block ~~-0.25~ air run execute as @e[r=48] at @s run tp @s ~~~
scoreboard players set @s[scores={domainstart=1..}] Camera 4

tag @s[scores={domainstart=1..}] add domainlayout

execute as @s[scores={domainstart=70..}] at @s if block ~~-1~ air run scriptevent ds:downfall

execute as @s[scores={domainstart=48..50}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domainstart 47

execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.spawn @a[r=1000] ~~~ 99999 0.5 99999
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domainstart 49
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run camerashake add @s 1.5 0.1 positional
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.blaze.shoot @a[r=50]  ~~~ 0.44 0.2 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.22 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playsound mob.wither.shoot @a[r=50]  ~~~ 0.44 0.62 100000
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash ~~~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash1 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run particle ds:domainclash2 ~~1~
execute as @s[scores={domainstart=1..50}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run playanimation @s animation.incomplete_shrine_hold

execute as @s[scores={domainstart=1..49,Energy=2..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 1
execute as @s[scores={domainstart=1..49,Energy=10..}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players remove @s Energy 5

execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s Stun 30
execute as @s[scores={domainstart=1..50,Energy=0..1}] at @s if entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run function domainloser

execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run camera @s fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @s domain 281
execute as @s[scores={domainstart=46}] at @s unless entity @e[type=!item,tag=domainlayout,r=48,rm=0.5] run scoreboard players set @e[r=48] domainstart 1


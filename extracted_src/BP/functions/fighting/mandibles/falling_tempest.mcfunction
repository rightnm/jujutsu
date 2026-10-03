playanimation @s[scores={move=40..41}] animation.beru_daggers.ab5

tag @s[scores={move=1..2}] remove wep5

scoreboard players set @s[scores={move=20..,Move=0..11}] Move 20
scoreboard players set @s[scores={move=42..,Camera=0..11}] Camera 20
scoreboard players set @s[scores={move=1..,Frames=0..11}] Frames 20

scoreboard players set @e[tag=fallingtempest,c=1] Stun 30
scoreboard players set @e[tag=fallingtempest,c=1] Move 20
scoreboard players set @e[tag=fallingtempest,c=1] Disabled 30
scoreboard players set @e[tag=fallingtempest,c=1] Camera 20

execute as @s[scores={move=39}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 99999 1.25 99999
execute as @s[scores={move=35..37}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=28..34}] at @s unless entity @e[tag=!Frames,r=3,type=!item,type=!xp_orb] run scriptevent ds:knockback 3

execute as @s[scores={move=20..21}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=20}] at @s positioned ^^^ run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:dirt03 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:dirt2 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:ground_impact_small ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:ground_slam1 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:divergentslam1 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:divergentslam1b ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:falling_tempest_down2 ~~3~
execute as @s[scores={move=20}] at @s positioned ^^^ run particle ds:blue_tint ~~1~
execute as @s[scores={move=22}] at @s positioned ^^^ run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 0.15 99999
execute as @s[scores={move=22}] at @s positioned ^^^ run playsound mob.bullet @a[r=50] ~~1~ 99999 1.75 99999
execute as @s[scores={move=22}] at @s positioned ^^^ run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 0.5 99999
execute as @s[scores={move=20}] at @s positioned ^^^1.5 if entity  @e[tag=!Frames,r=3,c=1] run playsound mob.shock1 @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=20}] at @s positioned ^^^1.5 if entity  @e[tag=!Frames,r=3,c=1] run particle ds:pushed_up1

execute as @s[scores={move=20}] at @s positioned ^^^1.5 unless entity @e[tag=fallingtempest,r=80] run tag @e[tag=!Frames,r=3,c=1] add fallingtempest


execute as @s[scores={move=14..15}] at @s if entity @e[tag=fallingtempest,r=80] run scoreboard players set @s move 1001
execute as @s[scores={move=14..15}] at @s unless entity @e[tag=fallingtempest,r=80] run scoreboard players set @s move 3


playanimation @s[scores={move=1000..}] animation.beru_daggers.ab5b

execute as @s[scores={move=1..}] at @s run execute as @e[tag=fallingtempest,r=80,c=1] at @s run tp @s ~~~~ 0

execute as @s[scores={move=1000}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=1000}] at @s run camera @s set minecraft:free pos ^^0.5^2 facing ~~1.33~
execute as @s[scores={move=1000}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free pos ^^0.5^2 facing ~~1.33~
execute as @s[scores={move=1000}] at @s run playsound mob.witch.throw @a[r=100] ^^1^1 99999 1.25 99999

execute as @s[scores={move=982}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^^0.5^2 facing ~~40~
execute as @s[scores={move=982}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free ease 0.25 in_sine pos ^^0.5^2 facing ~~40~

execute as @s[scores={move=998}] at @s run tp @e[tag=fallingtempest,r=80] ~~40~ facing @s
execute as @s[scores={move=999..}] at @s run playanimation @e[tag=fallingtempest] animation.beru_daggers.ab5c

execute as @s[scores={move=900..978}] at @s run execute as @e[tag=fallingtempest,r=80,c=1] at @s run tp @e[scores={move=900..978},c=1] ~~0.5~0.1~ 0
execute as @s[scores={move=970..977}] at @s run execute as @e[tag=fallingtempest,r=80,c=1] at @s run camera @a[scores={move=900..978},c=1] set minecraft:free pos ^^5^0.25 facing ^^-10^
execute as @s[scores={move=970..977}] at @s run execute as @e[tag=fallingtempest,r=80,c=1] at @s run camera @s set minecraft:free pos ^^5^0.25 facing ^^-10^

execute as @s[scores={move=955}] at @s run camera @s set minecraft:free pos ^^0.15^0.2 facing ~~12~
execute as @s[scores={move=955}] at @s run camera @p[tag=fallingtempest] set minecraft:free pos ^^0.15^0.2 facing ~~12~


execute as @s[scores={move=959}] at @s run playsound music.bass3 @a[r=200] ~~~ 999999 1 9999999
execute as @s[scores={move=950}] at @s run playsound mob.blitz @a[r=200] ~~~ 999999 1.6 9999999
execute as @s[scores={move=952..959}] at @s run particle ds:simple_domain1 ~~10~
execute as @s[scores={move=952..959}] at @s run particle ds:simple_domain2 ~~10~
execute as @s[scores={move=952..959}] at @s run particle ds:simple_domain3 ~~10~
execute as @s[scores={move=952..959}] at @s run particle ds:simple_domain4 ~~10~
execute as @s[scores={move=955}] at @s run particle ds:mutlation_s1 ~~10~
execute as @s[scores={move=955}] at @s run particle ds:mutlation_s2 ~~10~
execute as @s[scores={move=955}] at @s run particle ds:mutlation_s3 ~~10~
execute as @s[scores={move=952..959}] at @s run particle ds:mutlation_s4 ~~10~

execute as @s[scores={move=977}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 1.5 999999
execute as @s[scores={move=977}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 0.25 999999
execute as @s[scores={move=977}] at @s run particle ds:falling_tempest_up1 ~~-40~
execute as @s[scores={move=974}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 1.5 999999
execute as @s[scores={move=974}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 0.25 999999
execute as @s[scores={move=974}] at @s run particle ds:falling_tempest_up1 ~~-40~
execute as @s[scores={move=971}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 1.5 999999
execute as @s[scores={move=971}] at @s run playsound mob.wither.shoot @a[r=100] ~~-40~ 99999 0.25 999999
execute as @s[scores={move=971}] at @s run particle ds:falling_tempest_up1 ~~-40~

execute as @s[scores={move=940..945}] at @s run camera @s set minecraft:free pos ^1.5^0.75^2.5 facing ~~~
execute as @s[scores={move=940..945}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free pos ^1.5^0.75^2.5 facing ~~~

execute as @s[scores={move=920..925}] at @s run particle ds:judgement_cuts2 ~~~
execute as @s[scores={move=920}] at @s run playsound mob.slash1 @a[r=50] ~~5~ 99999 1.8 99999
execute as @s[scores={move=920..940}] at @s run playsound mob.slice @a[r=50] ~~5~ 99999 1.8 99999
execute as @s[scores={move=920..940}] at @s run camerashake add @a[r=15] 0.15 0.15


execute as @s[scores={move=870..920}] at @s run particle ds:falling_tempest_slashes1 ~~~
execute as @s[scores={move=870..920}] at @s run particle ds:falling_tempest_slashes2 ~~~
execute as @s[scores={move=870..920}] at @s run particle ds:falling_tempest_slashes3 ~~~
execute as @s[scores={move=870..920}] at @s run particle ds:blood_splat ~~-1~

execute as @s[scores={move=870}] at @s run playsound mob.slash1 @a[r=50] ~~5~ 99999 2.44 99999
execute as @s[scores={move=870..920}] at @s run playsound mob.slice @a[r=50] ~~5~ 99999 2.44 99999
execute as @s[scores={move=870..920}] at @s run playsound mob.swordslash @a[r=50] ~~5~ 99999 2.5 99999

execute as @s[scores={move=870..885}] at @s run particle ds:mandible_intensity1 ~~~
execute as @s[scores={move=920}] at @s run particle ds:blue_tint ^^^2
execute as @s[scores={move=900}] at @s run particle ds:blue_tint ^^^2
execute as @s[scores={move=880}] at @s run particle ds:blue_tint ^^^2
execute as @s[scores={move=870}] at @s run particle ds:blue_tint ^^^2
execute as @s[scores={move=870..920}] at @s run camerashake add @a[r=40] 0.25 0.15

execute as @s[scores={move=895..920}] at @s run camera @s set minecraft:free ease 0.08 in_sine pos ^1^3^2 facing ~~~
execute as @s[scores={move=895..920}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free ease 0.08 in_sine pos ^1^3^2 facing ~~~

execute as @s[scores={move=870..894}] at @s run camera @s set minecraft:free ease 0.08 in_sine pos ^^-1^10 facing ~~~
execute as @s[scores={move=870..894}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free ease 0.08 in_sine pos ^^-1^10 facing ~~~

execute as @s[scores={move=870..920}] at @s run tp @s ~~-0.75~ ~0
execute as @s[scores={move=870..920}] at @s run tp @e[tag=fallingtempest,c=1] ~~~-0.1~



execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=865..870}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=865..870}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=865..870}] at @s run tp @s ^^^-0.5 ~ 0


execute as @s[scores={move=845..860}] at @s run tp @s ^^^-0.85 ~ 0



execute as @s[scores={move=840..870}] at @s run execute as @e[tag=fallingtempest,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=840..870}] at @s run execute as @e[tag=fallingtempest,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=840..870}] at @s run execute as @e[tag=fallingtempest,c=1] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=840..870}] at @s run execute as @e[tag=fallingtempest,c=1] at @s if block ~~-1~ air run tp @s ~~-1~


execute as @s[scores={move=859}] at @s run summon gg:impact_frame
execute as @s[scores={move=859}] at @s run particle ds:invert
execute as @s[scores={move=858}] at @s run particle ds:blue_tint
execute as @s[scores={move=857}] at @s run particle ds:red_tint
execute as @s[scores={move=856}] at @s run particle ds:invert
execute as @s[scores={move=857}] at @s run summon gg:impact_frame

execute as @s[scores={move=863}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run playsound mob.red2 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=863..865}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:falling_tempest_down1 ~~-5~
execute as @s[scores={move=863..865}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:falling_tempest_down2 ~~-5~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:heavenly_wind7 ~~~

execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run camerashake add @a[r=200] 3 0.2 rotational
execute as @s[scores={move=862}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run playsound mob.burst @a ~~~ 99999 0.85 99999
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run playsound mob.shock1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent1 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent2 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent3 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent4 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent5 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent6 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent7 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent8 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent9 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:demons_descent10 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:slam_dust1 ~~1~
execute as @s[scores={move=859}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:slam_dust2 ~~1~
execute as @s[scores={move=861}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:large_slam1 ~~~
execute as @s[scores={move=861}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:large_slam2 ~~~
execute as @s[scores={move=861}] at @s run execute as @e[tag=fallingtempest,c=1] at @s run particle ds:large_slam3 ~~~


execute as @s[scores={move=868}] at @s run particle ds:ground_slam1
execute as @s[scores={move=868}] at @s run particle ds:ground_slam2
execute as @s[scores={move=868}] at @s run particle ds:ground_slam3
execute as @s[scores={move=868}] at @s run particle ds:rubble3
execute as @s[scores={move=868}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=868}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 1.65 9999

execute as @s[scores={move=864}] at @s run particle ds:ground_slam1
execute as @s[scores={move=864}] at @s run particle ds:ground_slam2
execute as @s[scores={move=864}] at @s run particle ds:ground_slam3
execute as @s[scores={move=864}] at @s run particle ds:rubble3
execute as @s[scores={move=864}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=864}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 1.65 9999

execute as @s[scores={move=840}] at @s run particle ds:ground_slam1
execute as @s[scores={move=840}] at @s run particle ds:ground_slam2
execute as @s[scores={move=840}] at @s run particle ds:ground_slam3
execute as @s[scores={move=840}] at @s run particle ds:rubble3
execute as @s[scores={move=840}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=840}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 1.65 9999

execute as @s[scores={move=861}] at @s run damage @e[tag=fallingtempest,c=1] 100 override
execute as @s[scores={move=861}] at @s run scoreboard players set @e[tag=fallingtempest,c=1] Hit 10
execute as @s[scores={move=861}] at @s run scoreboard players set @e[tag=fallingtempest,c=1] knockdown 80
execute as @s[scores={move=861}] at @s run scoreboard players set @e[tag=fallingtempest,c=1] Stun 30
execute as @s[scores={move=861}] at @s run scoreboard players add @e[tag=fallingtempest,c=1] Evade 25
execute as @s[scores={move=861}] at @s run effect @e[tag=fallingtempest,c=1] wither 20 5
execute as @s[scores={move=861}] at @s run scoreboard players operation @e[tag=fallingtempest,c=1] damage += @s damageadd

execute as @s[scores={move=865..870}] at @s run camera @s set minecraft:free pos ^0.5^0.25^-3 facing ^^5^10
execute as @s[scores={move=840..864}] at @s run camera @s set minecraft:free pos ^0.5^0.25^-7 facing ^^5^10
execute as @s[scores={move=865..870}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free pos ^0.5^0.25^-3 facing ^^5^10
execute as @s[scores={move=840..864}] at @s run camera @p[tag=fallingtempest,c=1] set minecraft:free pos ^0.5^0.25^-7 facing ^^5^10


execute as @s[scores={move=800..820}] at @s run tag @e remove fallingtempest
execute as @s[scores={move=800..820}] at @s run camera @a[r=60] clear
execute as @s[scores={move=800..820}] at @s run scoreboard players set @s move 3


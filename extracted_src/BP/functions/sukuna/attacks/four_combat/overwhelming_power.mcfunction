playanimation @s[scores={move=113..114}] animation.heian_sukuna.overwhelming_power

execute as @s[scores={move=112}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 0.6 9999


execute as @s[scores={move=103}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=103}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=103}] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=104..}] at @s run scriptevent ds:downfall

execute as @s[scores={move=103}] at @s run particle ds:ground_slam1
execute as @s[scores={move=103}] at @s run particle ds:ground_slam2
execute as @s[scores={move=103}] at @s run particle ds:ground_slam3


execute as @s[scores={move=103}] at @s run scriptevent ds:leapforwards2
execute as @s[scores={move=103}] at @s run camera @s set minecraft:follow_orbit
execute as @s[scores={move=102..103}] at @s run effect @s clear speed
execute as @s[scores={move=101}] at @s run effect @s speed 1 0 true
execute as @s[scores={move=100}] at @s run effect @s speed 1 1 true
execute as @s[scores={move=99}] at @s run effect @s speed 1 2 true
execute as @s[scores={move=98}] at @s run effect @s speed 1 3 true
execute as @s[scores={move=96}] at @s run effect @s clear speed


scoreboard players set @s[scores={move=98..99}] atk 2
execute as @s[scores={move=97}] at @s run summon gg:impact_frame
execute as @s[scores={move=97}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=97}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=97}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.76 9999
execute as @s[scores={move=97}] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=97}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=97}] at @s positioned ^^^6 run function damages/cleave_damage
execute as @s[scores={move=97..100}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run tp @s ~~~ facing @e[tag=sukuna,scores={move=97..100},c=1]
execute as @s[scores={move=97}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Stun 25
execute as @s[scores={move=97}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Hit 4
execute as @s[scores={move=97}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.9,tag=!wep4s3] Evade 8
execute as @s[scores={move=97}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.9,tag=!wep4s3] damage += @s damagehalf
execute as @s[scores={move=97}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Flourish 2
execute as @s[scores={move=97}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run particle ds:blood_splat
execute as @s[scores={move=97}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run playsound mob.sword @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=97}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.9,tag=!wep4s3] 12 override

scoreboard players set @s[scores={move=92..93}] atk 2
execute as @s[scores={move=91}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=91}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=91}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1.15 9999
execute as @s[scores={move=91}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.86 9999
execute as @s[scores={move=91}] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.84 9999
execute as @s[scores={move=91}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 1.1 9999
execute as @s[scores={move=91}] at @s positioned ^^^6 run function damages/cleave_damage
execute as @s[scores={move=87..93}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run tp @s ~~~ facing @e[tag=sukuna,scores={move=87..93},c=1]
execute as @s[scores={move=91}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Stun 25
execute as @s[scores={move=91}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Hit 4
execute as @s[scores={move=91}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.9,tag=!wep4s3] Evade 8
execute as @s[scores={move=91}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.9,tag=!wep4s3] damage += @s damagehalf
execute as @s[scores={move=91}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Flourish 1
execute as @s[scores={move=91}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run particle ds:blood_splat
execute as @s[scores={move=91}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run playsound mob.sword @a[r=100] ~~~ 9999 1.65 9999
execute as @s[scores={move=91}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.9,tag=!wep4s3] 7 override


scoreboard players set @s[scores={move=88..89}] atk 2
execute as @s[scores={move=87}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=87}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=87}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1.15 9999
execute as @s[scores={move=87}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.86 9999
execute as @s[scores={move=87}] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.84 9999
execute as @s[scores={move=87}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 1.1 9999
execute as @s[scores={move=87}] at @s positioned ^^^6 run function damages/cleave_damage
execute as @s[scores={move=87}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Stun 25
execute as @s[scores={move=87}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Hit 4
execute as @s[scores={move=87}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.9,tag=!wep4s3] Evade 8
execute as @s[scores={move=87}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.9,tag=!wep4s3] damage += @s damagehalf
execute as @s[scores={move=87}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Flourish 1
execute as @s[scores={move=87}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run particle ds:blood_splat
execute as @s[scores={move=87}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run playsound mob.sword @a[r=100] ~~~ 9999 1.6 9999
execute as @s[scores={move=87}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.9,tag=!wep4s3] 7 override

scoreboard players set @s[scores={move=80..81}] atk 2
execute as @s[scores={move=79}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=79}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=79}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.76 9999
execute as @s[scores={move=79}] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=79}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=79}] at @s positioned ^^^6 run function damages/cleave_damage
execute as @s[scores={move=79..81}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run tp @s ~~~ facing @e[tag=sukuna,scores={move=79..81},c=1]
execute as @s[scores={move=79}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Stun 25
execute as @s[scores={move=79}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Hit 4
execute as @s[scores={move=79}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.9,tag=!wep4s3] Evade 8
execute as @s[scores={move=79}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.9,tag=!wep4s3] damage += @s damagehalf
execute as @s[scores={move=79}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.9,tag=!wep4s3] Flourish 3
execute as @s[scores={move=79}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run particle ds:blood_splat
execute as @s[scores={move=79}] at @s positioned ^^^6 run execute as @e[tag=!Frames,r=5.9,tag=!wep4s3] at @s run playsound mob.sword @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=79}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.9,tag=!wep4s3] 12 override
execute as @s[scores={move=79}] at @s positioned ^^^-3 run particle ds:red_tint

execute as @s[scores={move=70}] at @s run playsound mob.enderdragon.flap @a ~~~

scoreboard players set @s[scores={move=60..66}] Frames 32
execute as @s[scores={move=46..63}] at @s run scriptevent ds:knockback 3
effect @s[scores={move=46..63}] invisibility 2 1 true
effect @s[scores={move=40..46}] clear invisibility

execute as @s[scores={move=63}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=63}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=63}] at @s run camerashake add @a[r=20] 4 0.1 rotational

effect @s[scores={move=63..65}] speed 1 5 true
effect @s[scores={move=44..46}] clear speed
execute as @s[scores={move=46..63}] at @s positioned ^^^4 if entity @e[tag=!Frames,r=6] run scoreboard players add @s fuga 2
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run effect @a[r=25] night_vision 2 1 true
execute as @s[scores={move=46..65}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~  facing @e[tag=sukuna,scores={move=1..},c=1]
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run damage @e[tag=!Frames,r=6] 1 override
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=6] Hit 4
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo4b
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo6
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo8
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo9
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo10
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run particle ds:carving_combo_edges
execute as @s[scores={move=46..63}] at @s run playsound mob.cleave @a ~~~ 0.2 1 
execute as @s[scores={move=46..63}] at @s run playsound mob.slash @a ~~~ 0.2 1.5
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:large_impact1 ~~~
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:large_impact2 ~~~
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:ground_slam2
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=46}] at @s positioned ^^1^ run particle ds:heavy_impact2
execute as @s[scores={move=46..63}] at @s if entity @e[tag=griefable] run fill ~2~2~2~-2~~-2 air [] destroy
execute as @s[scores={move=46..63}] at @s if entity @e[tag=griefable] run fill ~1~3~1~-1~~-1 air [] destroy
execute as @s[scores={move=46..63}] at @s run camerashake add @a[r=60] 0.05 0.08 rotational
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.02 1.8  
execute as @s[scores={move=46..63}] at @s positioned ^^1^ run tp @e[tag=!Frames,r=6] ~~~
execute as @s[scores={move=46}] at @s positioned ^^0.3^2 run particle ds:carving_aureole


execute as @s[scores={move=43}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=38..43}] at @s run camera @s set minecraft:free ease 0.15 in_sine pos ^^11^-6 facing ^^^2 

scoreboard players set @s[scores={move=34..36}] Camera 25
scoreboard players set @s[scores={move=34..}] Move 25
execute as @s[scores={move=5..35}] at @s unless block ~~-0.15~ air run tp @s ~~~

execute as @s[scores={move=43}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=43}] at @s run execute as @a[r=20] at @s run playsound music.bass3 @s ~~~ 9999 1.2 9999




execute as @s[scores={move=40}] at @s run effect @s speed 1 0 true
execute as @s[scores={move=39}] at @s run effect @s speed 1 1 true
execute as @s[scores={move=38}] at @s run effect @s speed 1 2 true
execute as @s[scores={move=37}] at @s run effect @s speed 1 3 true
execute as @s[scores={move=36}] at @s run effect @s speed 1 4 true
execute as @s[scores={move=35}] at @s run effect @s speed 1 5 true
execute as @s[scores={move=34}] at @s run effect @s speed 1 6 true
execute as @s[scores={move=33}] at @s run effect @s speed 1 7 true
execute as @s[scores={move=32}] at @s run effect @s speed 1 8 true
execute as @s[scores={move=31}] at @s run effect @s speed 1 9 true
execute as @s[scores={move=20..23}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=27..30}] Frames 25
execute as @s[scores={move=23..43}] at @s run scriptevent ds:downfall
execute as @s[scores={move=23}] at @s run particle ds:demons_descent1
execute as @s[scores={move=23}] at @s run particle ds:demons_descent4
execute as @s[scores={move=23}] at @s run particle ds:demons_descent5
execute as @s[scores={move=23}] at @s run particle ds:demons_descent6
execute as @s[scores={move=23}] at @s run particle ds:ground_slam1
execute as @s[scores={move=23}] at @s run particle ds:ground_slam2
execute as @s[scores={move=23}] at @s run particle ds:ground_slam3
execute as @s[scores={move=23}] at @s run particle ds:fissure1
execute as @s[scores={move=23}] at @s run particle ds:fissure2
execute as @s[scores={move=23}] at @s run particle ds:large_slam1
execute as @s[scores={move=23}] at @s run particle ds:large_slam2
execute as @s[scores={move=23}] at @s run particle ds:large_slam3
execute as @s[scores={move=23}] at @s run summon gg:impact_frame
execute as @s[scores={move=22}] at @s run particle ds:invert ^^10^-6
execute as @s[scores={move=23}] at @s run camerashake add @a[r=40] 4 0.25
execute as @s[scores={move=26}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=23}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=23}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=23}] at @s run scoreboard players set @e[tag=!Frames,r=8,tag=!wep4s3] Stun 25
execute as @s[scores={move=23}] at @s run scoreboard players set @e[tag=!Frames,r=8,tag=!wep4s3] Hit 4
execute as @s[scores={move=23}] at @s run scoreboard players add @e[tag=!Frames,r=8,tag=!wep4s3] Evade 8
execute as @s[scores={move=23}] at @s run scoreboard players operation @e[tag=!Frames,r=8,tag=!wep4s3] damage += @s damage
execute as @s[scores={move=23}] at @s run scoreboard players set @e[tag=!Frames,r=8,tag=!wep4s3] knockdown 25
execute as @s[scores={move=23}] at @s run execute as @e[tag=!Frames,r=8,tag=!wep4s3] at @s run particle ds:blood_splat
execute as @s[scores={move=23}] at @s run damage @e[tag=!Frames,r=8,tag=!wep4s3] 16 override

execute as @s[scores={move=20..23}] at @s run camera @s clear

camera @s[scores={move=1..5}] clear
tag @s[scores={move=1..2}] remove wep4s3
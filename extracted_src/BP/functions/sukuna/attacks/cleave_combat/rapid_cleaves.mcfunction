playanimation @s[scores={move=55}] animation.rapid_cleave
tag @s[scores={move=1..2}] remove wep4s2

scoreboard players set @s[scores={move=50..,Stun=1..}] move 2

scoreboard players set @s[scores={move=15..38}] Move 6
scoreboard players set @s[scores={move=15..38}] Camera 6
scoreboard players set @a[scores={move=15..38}] atk 2

effect @s[scores={move=12..}] speed 0 20 true

execute as @s[scores={move=39..44}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=45}] at @s positioned ^^^2.25 run playanimation @e[tag=!Frames,r=2.249] animation.rapid_cleave2
execute as @s[scores={move=15..45}] at @s positioned ^^^2.25 run tp @e[tag=!Frames,r=2.249] ^^1.5^-1.5 facing ^2^^-1.5
execute as @s[scores={move=15..45}] at @s positioned ^^^2.25 run tp @s @s
execute as @s[scores={move=15..44}] at @s positioned ^^^2.25 unless entity @e[tag=!Frames,r=2.249] run stopsound @a[r=50] mob.rapidcleave
execute as @s[scores={move=15..44}] at @s positioned ^^^2.25 unless entity @e[tag=!Frames,r=2.249] run scoreboard players set @s move 2

execute as @s[scores={move=45}] at @s  run playsound mob.witch.throw @a[r=50] ~~~ 99999 1.15 99999
execute as @s[scores={move=38}] at @s run playsound mob.rapidcleave @a[r=100] ~~1~ 999999 1 999999
execute as @s[scores={move=38}] at @s positioned ^^^2.25  run playsound mob.shock1 @a[r=100] ~~~ 999999 3.5 999999
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run playsound mob.slash1 @a[r=100] ~~~ 0.1 2.75 999999
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run playsound mob.slice @a[r=100] ~~~ 0.1 0.95

execute as @s[scores={move=15..38}] at @s run tp @s @s

execute as @s[scores={move=45}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.3 0.08 rotational
execute as @s[scores={move=49}] at @s positioned ^^^2.25  run playsound mob.punch1 @a[r=25] ~~~ 99999 1.2 99999
execute as @s[scores={move=45}] at @s positioned ^^^1.25  run particle ds:large_impact2 ~~1~


scoreboard players add @s[scores={move=15..38}] fuga 2
execute as @s[scores={move=38}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.25 0.08 rotational
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run camerashake add @a[r=10] 0.15 0.08 rotational
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve_impact1 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve1 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve2 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve3 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:carve5 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:blood ~~0.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:heavy_impact2 ~~1.33~
execute as @s[scores={move=15..38}] at @s positioned ^^^1.25  run particle ds:heavy_impact3 ~~1.33~
execute as @s[scores={move=38}] at @s positioned ^^^1.25  run particle ds:red_tint ^^1^0.25 
execute as @s[scores={move=38}] at @s positioned ^^^1.25  run particle ds:red_tint ^^1^-5

execute as @s[scores={move=17}] at @s positioned ^^^1.25  run particle ds:red_tint ^^1^0.25 
execute as @s[scores={move=17}] at @s positioned ^^^1.25  run particle ds:red_tint ^^1^-5
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Stun 25
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run scoreboard players set @e[tag=!Frames,r=2.249] Hit 15
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] Evade 15
execute as @s[scores={move=14}] at @s positioned ^^^2.25  run scoreboard players add @e[tag=!Frames,r=2.249] knockdown 30
execute as @s[scores={move=15..38}] at @s positioned ^^^2.25  run damage @e[tag=!Frames,r=2.249] 2 override

execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run particle ds:bloodbath ~~0.33~
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run particle ds:carve_finisher ~~0.33~
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run playsound mob.blood @a[r=100] ~~1~ 9999 0.7 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run playsound mob.blood3 @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run playsound mob.slice @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.25  run execute as @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] at @s run playsound mob.slash1 @a[r=100] ~~1~ 9999 1.25 9999


execute as @s[scores={move=15}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damage += @s damageadd

execute as @s[scores={move=16}] at @s positioned ^^^2.25  run damage  @e[tag=!Frames,r=2.249,scores={detect_health=0..15}] 50 override

execute as @s[scores={move=16}] at @s positioned ^^^2.25  run scoreboard players operation @e[tag=!Frames,r=2.249] damagehalf += @e[tag=!Frames,r=2.249,c=1] strength
execute as @s[scores={move=15}] at @s positioned ^^^2.25 run function damages/cleave_damage
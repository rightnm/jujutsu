playanimation @s[scores={move=37..38}] animation.mahito.heavy_ab3

tag @s[scores={move=1..2},tag=wep3m] remove wep3m

execute as @s[scores={move=28}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=24}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.75 99999

execute as @s[scores={move=7}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999

scoreboard players random @s[scores={move=22}] blackflashchance 1 269
scoreboard players set @s[scores={move=22},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=18..19}] atk 2


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10
scoreboard players set @s[scores={move=13..19,Camera=0..4}] Camera 10

execute as @s[scores={move=35..}] at @s if block ~~-0.5~ air run scriptevent ds:downfall

execute as @s[scores={move=25..30}] at @s run scriptevent ds:knockback 2.5
execute as @s[scores={move=22..24}] at @s if block ~~-0.5~ air run scriptevent ds:downfall
execute as @s[scores={move=25}] at @s run playsound mob.heavy_swing @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=18..20}] at @s run camerashake add @a[r=5] 0.75 0.3

tag @s[scores={move=17..19}] add Frames
tag @s[scores={move=12..16},tag=Frames] remove Frames
scoreboard players set @s[scores={move=17..19}] Frames 5
scoreboard players set @s[scores={move=17..19}] Camera 10

execute as @s[scores={move=19}] at @s run particle ds:ground_slam1
execute as @s[scores={move=19}] at @s run particle ds:instant_star ^^1^

effect @s[scores={move=30}] speed 1 20 true
effect @s[scores={move=16..17}] clear speed

execute as @s[scores={move=17..30}] at @s positioned ~~4~ run camera @s set minecraft:free ease 0.08 in_sine pos ^3^2^-4 facing ^^1^7
execute as @s[scores={move=15..16}] at @s positioned ~~4~ run camera @s clear

execute as @s[scores={move=30}] at @s run particle ds:leap
execute as @s[scores={move=30}] at @s run particle ds:rubble
execute as @s[scores={move=30}] at @s run particle ds:dirt2
execute as @s[scores={move=30}] at @s run particle ds:double_jump
execute as @s[scores={move=30}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=30}] at @s run playsound mob.wither.shoot @a[r=20] ~~1~ 99999 2 99999
execute as @s[scores={move=30}] at @s run playsound mob.wither.break_block @a[r=20] ~~1~ 99999 2 99999
execute as @s[scores={move=30}] at @s run playsound random.explode @a[r=20] ~~1~ 99999 2 99999

execute as @s[scores={move=18..19}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=18..19}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:heavy_downslam1
execute as @s[scores={move=18..19}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:heavy_downslam2
execute as @s[scores={move=18..19}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:heavy_downslam3

execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run scoreboard players add @s Evade 10
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run scoreboard players set @s knockdown 25
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run scoreboard players operation @s damage += @e[scores={move=18},c=1] damageadd 
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run particle ds:instant_star ~~1~
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run playsound mob.blood3 @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run damage @s 20 override
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=5] run scoreboard players set @s Hit 7
execute as @s[scores={move=18}] at @s positioned ^^^5 run camerashake add @a[r=25] 4 0.25
execute as @s[scores={move=18}] at @s positioned ^^^5 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=17}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:curses_energy_hit1_big
execute as @s[scores={move=17}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:curses_energy_hit2_big
execute as @s[scores={move=17}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:curses_energy_hit3_big
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:dirt03
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:rubble3
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:ground_pound1b
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:ground_pound2
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:ground_pound3
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:ground_pound4
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:ground_pound5
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:demons_descent1
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:demons_descent3
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:demons_descent4
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:demons_descent5
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run particle ds:demons_descent9
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run playsound mob.shock1 @a[r=50] ~~~ 99999 1.33 99999
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.8 99999
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.8 99999
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run playsound mob.metal1 @a[r=50] ~~~ 99999 0.8 99999
execute as @s[scores={move=18}] at @s positioned ^^^5 unless block ~~-0.25~ air  run playsound random.anvil_land @a[r=50] ~~~ 99999 0.25 99999


execute as @s[scores={move=18}] at @s run function damages/blunt_damage
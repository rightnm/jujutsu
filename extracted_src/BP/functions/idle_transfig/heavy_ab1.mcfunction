playanimation @s[scores={move=30..31}] animation.mahito.heavy_ab1

tag @s[scores={move=1..2},tag=wep1m] remove wep1m

tag @s[scores={move=25..,Stun=1..},tag=wep1m] remove wep1m
playanimation @s[scores={move=25..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=25..,Stun=1..}] move 0




execute as @s[scores={move=28}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=24}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.75 99999

scoreboard players random @s[scores={move=22}] blackflashchance 1 269
scoreboard players set @s[scores={move=22},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=18..19}] atk 2


scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10
scoreboard players set @s[scores={move=13..19,Camera=0..4}] Camera 10

execute as @s[scores={move=20}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=25}] at @s run playsound mob.heavy_swing @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=18..20}] at @s run camerashake add @a[r=5] 0.75 0.3

tag @s[scores={move=17..19}] add Frames
tag @s[scores={move=12..16},tag=Frames] remove Frames
scoreboard players set @s[scores={move=17..19}] Frames 5

execute as @s[scores={move=19}] at @s run particle ds:ground_slam1
execute as @s[scores={move=19}] at @s run particle ds:instant_star ^^1^


execute as @s[scores={move=18}] at @s run function damages/blunt_damage

execute as @s[scores={move=18}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run scoreboard players add @s Evade 10
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run scoreboard players set @s knockdown 25
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run scoreboard players operation @s damage += @e[scores={move=18},c=1] damageadd 
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run particle ds:instant_star ~~1~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run playsound mob.blood3 @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run damage @s 14 override
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] run scoreboard players set @s Hit 7
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run camerashake add @a[r=25] 2.5 0.25
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound1 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound2 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound3 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound4 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run particle ds:ground_pound5 ~~~
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run playsound mob.metal1 @a[r=50] ~~~ 99999 1 99999
execute as @s[scores={move=18}] at @s positioned ^^^2.5 unless block ~~-0.25~ air  run playsound random.anvil_land @a[r=50] ~~~ 99999 0.33 99999
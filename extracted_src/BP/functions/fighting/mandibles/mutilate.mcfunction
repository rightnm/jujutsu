playanimation @s[scores={move=25..}] animation.beru_daggers.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=21..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=21..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..20}] Camera 5


execute as @s[scores={move=15..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=15..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=15..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=15..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=15..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=15..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=20..23}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=19..20}] at @s run tp @s ~~~

execute as @s[scores={move=5..20}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=21..22}] Frames 25
scoreboard players set @e[scores={move=21}] atk 2
execute as @s[scores={atk=1..}] at @s positioned ^^^3 run effect @e[tag=!Frames,r=7] wither 5 2 true
execute as @s[scores={move=5..21}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=7] at @s run tp @s ~~~ facing @e[scores={move=5..21},c=1]

scoreboard players random @s[scores={move=11}] blackflashchance 1 269
scoreboard players set @s[scores={move=11},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=21..}] at @s run playsound mob.blaze.shoot @a[r=10] ~~~ 0.25 2
execute as @s[scores={move=21..}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 0.25 1.75
execute as @s[scores={move=21..}] at @s run particle ds:turbo_intensity3 ~~1~
execute as @s[scores={move=21..}] at @s run particle ds:turbo_intensity3b ~~1~
execute as @s[scores={move=21..}] at @s run particle ds:turbo_intensity3c ~~1~
execute as @s[scores={move=21..}] at @s run particle ds:turbo_intensity3d ~~1~
execute as @s[scores={move=21..}] at @s run particle ds:mandible_intensity1 ~~1~

execute as @s[scores={move=22}] at @s run playsound mob.blitz1 @a[r=100] ~~~ 99999 3 999999
execute as @s[scores={move=19..22}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 0.7 999999
execute as @s[scores={move=21}] at @s run camerashake add @a[r=10] 0.5 0.15 rotational
execute as @s[scores={move=21}] at @s run particle ds:mutlation_s1 ~~1~
execute as @s[scores={move=21}] at @s run particle ds:mutlation_s2 ~~1~
execute as @s[scores={move=21}] at @s run particle ds:mutlation_s3 ~~1~
execute as @s[scores={move=21}] at @s run particle ds:mutlation_s4 ~~1~

execute as @s[scores={move=15..21}] at @s run particle ds:mutilate1 ~~1~
execute as @s[scores={move=15..21}] at @s run particle ds:mutilate2 ~~1~
execute as @s[scores={move=15..21}] at @s run particle ds:mutilate3 ~~1~
execute as @s[scores={move=15..21}] at @s run particle ds:mutilate4 ~~1~
execute as @s[scores={move=15..21}] at @s run particle ds:mutilate5 ~~1~
execute as @s[scores={move=15..21}] at @s run particle ds:mutilate6 ~~1~

execute as @s[scores={move=14..15}] at @s run particle ds:mutlation_s3 ~~1~
execute as @s[scores={move=14..15}] at @s run particle ds:mutilation_slashes1 ~~1~
execute as @s[scores={move=14..15}] at @s run particle ds:mutilation_slashes2 ~~1~

execute as @s[scores={move=5..20}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=15..20}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.8 999999
execute as @s[scores={move=15..20}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 999999 2.5 999999
execute as @s[scores={move=5..20}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=7] Stun 20
execute as @s[scores={move=5..20}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=5..20}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=7] Evade 5
execute as @s[scores={move=5..20}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=7] 2 override entity @s
execute as @s[scores={move=15..20}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=5..20}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=7] run playsound mob.slice2 @a ~~~ 1 1.85
execute as @s[scores={move=5..20}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=7] run scriptevent ds:backward2
execute as @s[scores={move=5..20}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1

execute as @s[scores={move=5}] at @s run particle ds:mutlation_s1 ~~1~
execute as @s[scores={move=5}] at @s run particle ds:mutlation_s2 ~~1~
execute as @s[scores={move=5}] at @s run particle ds:mutlation_s3 ~~1~
execute as @s[scores={move=5}] at @s run particle ds:mutlation_s4 ~~1~
execute as @s[scores={move=4}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=4}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=4}] at @s run particle ds:dirt03 ~~~
execute as @s[scores={move=4}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1.25 999999
execute as @s[scores={move=4}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 999999 0.5 999999
execute as @s[scores={move=4}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=7] Flourish 6
execute as @s[scores={move=4}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=4}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=7] Evade 5
execute as @s[scores={move=4}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=7] 10 override entity @s
execute as @s[scores={move=4}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=7] damage += @s damageadd
execute as @s[scores={move=4}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=4}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=7] run playsound mob.slice2 @a ~~~ 1 0.75
execute as @s[scores={move=4}] at @s positioned ^^^ run camerashake add @a[r=20] 2 0.1






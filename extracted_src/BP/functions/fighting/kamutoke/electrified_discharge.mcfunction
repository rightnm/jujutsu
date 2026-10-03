playanimation @s[scores={move=45..46}] animation.kamutoke_ab3

scoreboard players set @s[scores={move=40..,Stun=1..}] move 3

scoreboard players set @s[scores={move=6..}] Move 6
scoreboard players set @s[scores={move=6..34}] Camera 6

execute as @s[scores={move=43}] at @s run particle ds:leap
execute as @s[scores={move=43}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=43}] at @s run playsound mob.enderdragon.flap @a[r=15] ~~~ 99999 1.5 99999

execute as @s[scores={move=33..42}] at @s unless entity @e[tag=!Frames,rm=0.25,r=3.5] run scriptevent ds:knockback 1.8


execute as @s[scores={move=34..}] at @s if block ~~-0.15~ air run scriptevent ds:downfall

execute as @s[scores={move=6..34}] at @s run tp @s @s

execute as @s[scores={move=33..34}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,c=1] add hltn

execute as @s[scores={move=4..32}] at @s unless entity @e[tag=hltn,r=5] run playanimation @s animation.stunned
execute as @s[scores={move=4..32}] at @s unless entity @e[tag=hltn,r=5] run scoreboard players set @s move 3

execute as @s[scores={move=34}] at @s run execute as @e[tag=hltn,c=1,r=5] at @s run camerashake add @a[r=5] 2 0.15

execute as @s[scores={move=33..34}] at @s run playanimation @e[tag=hltn,c=1,r=5] animation.kamutoke_ab3b

execute as @s[scores={move=34}] at @s run execute as @e[tag=hltn,c=1] at @s run particle ds:blood_splat ~~~
execute as @s[scores={move=34}] at @s run execute as @e[tag=hltn,c=1] at @s run playsound mob.sword @a[r=25] ~~~ 99999 1.5 99999
execute as @s[scores={move=34}] at @s run execute as @e[tag=hltn,c=1] at @s run playsound mob.sword @a[r=25] ~~~ 99999 0.5 99999
execute as @s[scores={move=34}] at @s run execute as @e[tag=hltn,c=1] at @s run playsound mob.blood @a[r=25] ~~~ 99999 1 99999
execute as @s[scores={move=6..34}] at @s run tp @e[tag=hltn,c=1] ^^^1.6 facing @s
execute as @s[scores={move=6..25}] at @s run scoreboard players set @e[tag=hltn,c=1] shocked 35
execute as @s[scores={move=6..34}] at @s run scoreboard players set @e[tag=hltn,c=1] Stun 25
execute as @s[scores={move=6..34}] at @s run scoreboard players set @e[tag=hltn,c=1] Hit 2
execute as @s[scores={move=6..34}] at @s run scoreboard players remove @e[tag=hltn,c=1,scores={Evade=1..}] Evade 1
execute as @s[scores={move=6..34}] at @s run damage @e[tag=hltn,c=1] 1 override


execute as @s[scores={move=6..25}] at @s run camerashake add @a[r=10] 2 0.12
execute as @s[scores={move=6..25}] at @s run execute as @e[tag=hltn,c=1] at @s run particle ds:kamutoke_counter1 ~~1~
execute as @s[scores={move=6..25}] at @s run execute as @e[tag=hltn,c=1] at @s run particle ds:kamutoke_counter2 ~~1~
execute as @s[scores={move=6..25}] at @s run execute as @e[tag=hltn,c=1] at @s run particle ds:kamutoke_counter3 ~~1~
execute as @s[scores={move=6..25}] at @s run execute as @e[tag=hltn,c=1] at @s run particle ds:kamutoke_counter4 ~~1~
execute as @s[scores={move=6..25}] at @s run execute as @e[tag=hltn,c=1] at @s run playsound mob.electricity @a ~~~ 0.15 2.5

execute as @s[scores={move=20}] at @s run playsound mob.turbulence @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={move=7}] at @s run particle ds:electric_discharge ^^1^2
execute as @s[scores={move=6}] at @s run particle ds:electric_discharge ^^1^4
execute as @s[scores={move=5}] at @s run particle ds:electric_discharge ^^1^6
execute as @s[scores={move=4}] at @s run particle ds:electric_discharge ^^1^8
execute as @s[scores={move=3}] at @s run particle ds:electric_discharge ^^1^10
execute as @s[scores={move=2}] at @s run particle ds:electric_discharge ^^1^12

execute as @s[scores={move=4..5}] at @s run camerashake add @a[r=10] 4 0.25 rotational
execute as @s[scores={move=4..5}] at @s run particle ds:large_impact1 ^^1^1
execute as @s[scores={move=4..5}] at @s run particle ds:large_impact2 ^^1^1
execute as @s[scores={move=4..5}] at @s run particle ds:ground_slam2 ^^1^1 
execute as @s[scores={move=4..5}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=4..5}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 3 9999
execute as @s[scores={move=4..5}] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=4..5}] at @s run playsound random.explode @a[r=50] ~~~ 9999 5 9999
execute as @s[scores={move=4..5}] at @s run playsound mob.electricity @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=4..5}] at @s run summon gg:impact_frame
execute as @s[scores={move=4..5}] at @s run scoreboard players set @e[tag=hltn,c=1] Flourish 12

tag @s[scores={move=1..2}] remove wep3

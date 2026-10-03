playanimation @s[scores={move=50..51}] animation.instant_body.ab3



tag @s[scores={move=44..51,Stun=1..},tag=wep3m] remove wep3m
playanimation @s[scores={move=44..51,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=44..51,Stun=1..}] move 0

scoreboard players set @s[scores={Move=0..4}] Move 11

execute as @s[scores={move=45..51}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=45..51}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=45..51}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=45..51}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=45..51}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=45..51}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~

execute as @s[scores={move=50}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.25 99999


execute as @s[scores={move=40}] at @s run playsound mob.whoosh3 @a[r=50] ~~1~ 99999 1.5 99999

execute as @s[scores={move=18..40}] at @s run scriptevent ds:knockback 1.75
execute as @s[scores={move=38..40}] at @s run particle ds:sprint ~~~
execute as @s[scores={move=18..40}] at @s run particle ds:dust ~~~
execute as @s[scores={move=38..40}] at @s run camerashake add @s 0.04 0.08 rotational

scoreboard players set @s[scores={move=100..}] Frames 8
scoreboard players set @s[scores={move=1..44}] Frames 8

execute as @s[scores={move=18..35}] at @s unless entity @e[tag=takedown_slam_trg,r=12] run tag @e[tag=!Frames,r=2.5] add takedown_slam_trg
execute as @s[scores={move=18..35}] at @s if entity @e[tag=takedown_slam_trg,r=12] run event entity @s ds:grab_seat
execute as @s[scores={move=18..35}] at @s if entity @e[tag=takedown_slam_trg,r=12] run ride @e[tag=takedown_slam_trg,c=1] start_riding @s teleport_rider
execute as @s[scores={move=18..35}] at @s if entity @e[tag=takedown_slam_trg,r=12] run scoreboard players set @s move 1001

scoreboard players set @e[tag=takedown_slam_trg] Stun 33
scoreboard players set @e[tag=takedown_slam_trg] Camera 33

execute as @s[scores={move=1001}] at @s run playanimation @s animation.instant_body.ab3b
execute as @s[scores={move=999}] at @s run particle ds:slam_more
execute as @s[scores={move=999}] at @s run particle ds:burst_impact
execute as @s[scores={move=999}] at @s run particle ds:dirt2
execute as @s[scores={move=999}] at @s run particle ds:leap
execute as @s[scores={move=999}] at @s run particle ds:rubble3
execute as @s[scores={move=999}] at @s run camerashake add @a[r=50] 2 0.25
execute as @s[scores={move=999}] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 0.5 99999
execute as @s[scores={move=999}] at @s run playsound mob.shock1 @a[r=50] ~~1~ 99999 1.5 99999
execute as @s[scores={move=999}] at @s run playsound mob.wither.break_block @a[r=50] ~~1~ 99999 0.85 99999
execute as @s[scores={move=998..999}] at @s run scriptevent ds:leapforwards

execute as @s[scores={move=978..980}] at @s run scriptevent ds:downfall
execute as @s[scores={move=978..980}] at @s run scriptevent ds:knockback 3

event entity @s[scores={move=998..}] ds:grab_seat
execute as @s[scores={move=947..997}] at @s run ride @e[tag=takedown_slam_trg,c=1] start_riding @s teleport_rider

execute as @s[scores={move=947..997}] at @s run playanimation @e[tag=takedown_slam_trg,c=1] animation.instant_body.ab3_grabbed
execute as @s[scores={move=947..990}] at @s unless block ~~-0.25~ air run scoreboard players set @s move 101

scoreboard players set @s[scores={move=947..950}] move 951


execute as @s[scores={move=100..101}] at @s run playanimation @s animation.instant_body.ab3b_slam
execute as @s[scores={move=90..100}] at @s run scriptevent ds:downfall
execute as @s[scores={move=99}] at @s run particle ds:burst_impact ~~~
execute as @s[scores={move=99}] at @s run particle ds:curses_energy_hit1_big ~~~
execute as @s[scores={move=99}] at @s run particle ds:curses_energy_hit2_big ~~~
execute as @s[scores={move=99}] at @s run particle ds:curses_energy_hit3_big ~~~
execute as @s[scores={move=99}] at @s run particle ds:heavenly_wind8
execute as @s[scores={move=99}] at @s run particle ds:rubble
execute as @s[scores={move=99}] at @s run particle ds:mahito_takedown_slam1 ~~~
execute as @s[scores={move=99}] at @s run particle ds:mahito_takedown_slam2 ~~~
execute as @s[scores={move=99}] at @s run particle ds:ground_impact1
execute as @s[scores={move=99}] at @s run particle ds:ground_impact2
execute as @s[scores={move=99}] at @s run particle ds:slam1 ~~~
execute as @s[scores={move=99}] at @s run particle ds:slam_dust2


execute as @s[scores={move=99}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=99}] at @s run camerashake add @a[r=100] 2 0.25
execute as @s[scores={move=99}] at @s run damage @e[tag=takedown_slam_trg,c=1] 30
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=takedown_slam_trg,c=1] knockdown 25
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=takedown_slam_trg,c=1] Hit 5
execute as @s[scores={move=99}] at @s run scoreboard players add @e[tag=takedown_slam_trg,c=1] Evade 15
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=takedown_slam_trg,c=1] Stun 40
execute as @s[scores={move=99}] at @s run scoreboard players operation @e[tag=takedown_slam_trg,c=1] damage += @s damageadd

execute as @s[scores={move=99}] at @s run damage @e[tag=!takedown_slam_trg,r=10,tag=!Frames] 10
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=!takedown_slam_trg,r=10,tag=!Frames] knockdown 25
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=!takedown_slam_trg,r=10,tag=!Frames] Hit 5
execute as @s[scores={move=99}] at @s run scoreboard players add @e[tag=!takedown_slam_trg,r=10,tag=!Frames] Evade 15
execute as @s[scores={move=99}] at @s run scoreboard players set @e[tag=!takedown_slam_trg,r=10,tag=!Frames] Stun 20
execute as @s[scores={move=99}] at @s run scoreboard players operation @e[tag=!takedown_slam_trg,r=10,tag=!Frames] damage += @s damageadd

execute as @s[scores={move=99}] at @s run summon ds:red_reverse ~~~

execute as @s[scores={move=99}] at @s run tag @e[tag=takedown_slam_trg,c=1] remove takedown_slam_trg
execute as @s[scores={move=97..99}] at @s run event entity @s ds:release_seat

scoreboard players set @s[scores={move=100..101}] Camera 11
execute as @s[scores={move=88..99}] at @s run tp @s ~~~

execute as @s[scores={move=99}] at @s if entity @e[tag=griefable] run summon ds:limitless_explosion ~~11~
execute as @s[scores={move=99}] at @s if entity @e[tag=griefable] run effect @e[r=20] resistance 1 1 true

scoreboard players set @s[scores={move=88..90}] move 3


event entity @s[scores={move=1..4}] ds:release_seat
tag @s[scores={move=1..2},tag=wep3m] remove wep3m
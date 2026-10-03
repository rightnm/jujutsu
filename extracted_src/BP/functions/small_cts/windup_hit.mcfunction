tag @s[tag=windup] add Frames
scoreboard players set @s[tag=windup] Frames 7
effect @s resistance 1 40 true

execute as @s[tag=windup] at @s run tp @s ~~~

#stage1

execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit1 ^^1^1.5
execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit2 ^^1^1.5
execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit3 ^^1^1.5
execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit4 ^^1^1.5
execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit5 ^^1^1.5
execute as @s[scores={windup=1..50}] at @s run particle ds:windup_hit6 ^^1^1.5


execute as @s[scores={windup=10..50}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=1..50}] at @s run playsound mob.shock2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=10..50}] at @s run camerashake add @a[r=10] 4 0.15 rotational

execute as @s[scores={windup=1..50}] at @s run scoreboard players add @e[tag=!Frames,r=2.5] Flourish 5
execute as @s[scores={windup=1..50}] at @s run scoreboard players add @e[tag=!Frames,r=2.5] Stun 10
execute as @s[scores={windup=1..50}] at @s run scoreboard players add @e[tag=!Frames,r=2.5] Hit 5

#stage2

execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit1b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit2b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit3b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit4b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit5b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:windup_hit6b ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:large_impact1 ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:large_impact2 ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:dirt0
execute as @s[scores={windup=51..150}] at @s run particle ds:rubble3
execute as @s[scores={windup=51..150}] at @s run particle ds:ground_slam2
execute as @s[scores={windup=51..150}] at @s run particle ds:ground_slam2
execute as @s[scores={windup=51..150}] at @s run particle ds:ground_slam3
execute as @s[scores={windup=51..150}] at @s run particle ds:ground_slam3
execute as @s[scores={windup=51..150}] at @s run particle ds:impact1 ^^1^1 
execute as @s[scores={windup=51..150}] at @s run particle ds:impact1 ^^1^1.5
execute as @s[scores={windup=51..150}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={windup=51..150}] at @s run particle ds:impact1 ^^1^2.5


execute as @s[scores={windup=51..150}] at @s run summon ds:lapse_explode ^^1^1
execute as @s[scores={windup=141..150}] at @s run summon ds:lapse_explode ^^1^2

execute as @s[scores={windup=51..150}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=51..150}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.95 99999
execute as @s[scores={windup=51..150}] at @s run playsound mob.shock2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=51..150}] at @s run camerashake add @a[r=10] 4 0.25 rotational

execute as @s[scores={windup=51..150}] at @s positioned ^^^5  run scoreboard players add @e[tag=!Frames,r=5] Flourish 8
execute as @s[scores={windup=51..150}] at @s positioned ^^^5  run scoreboard players add @e[tag=!Frames,r=5] Stun 20
execute as @s[scores={windup=51..150}] at @s positioned ^^^5  run scoreboard players add @e[tag=!Frames,r=5] Hit 15

#stage3

execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit1c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit2c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit3c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit4c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit5c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:windup_hit6c ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:large_impact1 ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:large_impact2 ^^1^1.5
execute as @s[scores={windup=151..499}] at @s run particle ds:dirt0
execute as @s[scores={windup=151..499}] at @s run particle ds:rubble3
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam2 ^^^2
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^^^3
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^^^4
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^2^^4
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^-2^^4
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^^^5
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^3^^5
execute as @s[scores={windup=151..499}] at @s run particle ds:ground_slam3 ^-3^^5
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^1 
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^3
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^4
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^5
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^6
execute as @s[scores={windup=151..499}] at @s run particle ds:impact1 ^^1^7

execute as @s[scores={windup=151..499}] at @s positioned ^^^7.5 run scoreboard players operation @e[tag=!Frames,r=7.5] damage += @s windup

execute as @s[scores={windup=151..499}] at @s run tp @s ~~~

execute as @s[scores={windup=151..499}] at @s run summon ds:red_reversal ^^1^1 
execute as @s[scores={windup=151..499}] at @s run summon ds:red_reverse ^^1^0.75

execute as @s[scores={windup=151..499}] at @s run tp @s ~~~

execute as @s[scores={windup=151..499}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={windup=151..499}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={windup=151..499}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.95 99999
execute as @s[scores={windup=151..499}] at @s run playsound mob.shock2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=151..499}] at @s run camerashake add @a[r=10] 4 0.5 rotational



execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run effect @e[tag=!Frames,r=8] levitation 1 25 true
execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run scoreboard players add @e[tag=!Frames,r=8] Stun 40
execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run scoreboard players add @e[tag=!Frames,r=8] Hit 15

#stage4

execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit1d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit2d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit3d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit4d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit5d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:windup_hit6d ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:large_impact1 ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:large_impact2 ^^1^1.5
execute as @s[scores={windup=500..}] at @s run particle ds:dirt0
execute as @s[scores={windup=500..}] at @s run particle ds:rubble3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam2 ^^^2
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^2^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^-2^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^5
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^3^^5
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^-3^^5
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam2 ^^^2
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^1^^3
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^2^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^-2^^4
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^^^5
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^3^^5
execute as @s[scores={windup=500..}] at @s run particle ds:ground_slam3 ^-3^^5
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^1 
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^3
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^4
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^5
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^6
execute as @s[scores={windup=500..}] at @s run particle ds:impact1 ^^1^7

execute as @s[scores={windup=500..}] at @s positioned ^^^7.5 run scoreboard players operation @e[tag=!Frames,r=15] damage += @s windup

execute as @s[scores={windup=500..}] at @s run tp @s ~~~

execute as @s[scores={windup=500..}] at @s run summon ds:red_reversal ^^1^1 
execute as @s[scores={windup=500..}] at @s run summon ds:red_reversal ^^1^7
execute as @s[scores={windup=500..}] at @s run summon ds:red_reverse ^^1^0.75
execute as @s[scores={windup=500..}] at @s run summon ds:red_reverse ^^1^0.75
execute as @s[scores={windup=500..}] at @s run summon ds:red_reverse ^^1^0.75

execute as @s[scores={windup=500..}] at @s run tp @s ~~~

execute as @s[scores={windup=500..}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={windup=500..}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={windup=500..}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={windup=500..}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={windup=500..}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.25 99999
execute as @s[scores={windup=500..}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.95 99999
execute as @s[scores={windup=500..}] at @s run playsound mob.shock2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={windup=500..}] at @s run camerashake add @a[r=10] 4 1 rotational
execute as @s[scores={windup=500..}] at @s run particle ds:invert ^^5^2



execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run effect @e[tag=!Frames,r=14] levitation 1 25 true
execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run scoreboard players add @e[tag=!Frames,r=14] Stun 40
execute as @s[scores={windup=151..499}] at @s positioned ^^^7  run scoreboard players add @e[tag=!Frames,r=14] Hit 15



execute as @s[scores={windup=1..50}] at @s run scoreboard players operation @e[tag=!Frames,r=2.5] damage += @s windup
execute as @s[scores={windup=51..150}] at @s positioned ^^^5 run scoreboard players operation @e[tag=!Frames,r=5] damage += @s windup

scoreboard players set @s windup 0
effect @s slowness 5 1 true
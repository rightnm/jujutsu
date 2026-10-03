

playanimation @s[scores={move=100..}] animation.kaiju_curse.punch

execute as @s[scores={move=45}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=45}] at @s run playsound mob.heavy_swing @a[r=1500] ~~30~ 9999999 0.7 99999999
effect @s[scores={move=41..}] slowness 2 10 true

execute as @s[scores={move=5..}] at @s run tp @s @s

execute as @s[scores={move=40}] at @s run camerashake add @a[r=500] 3.5 0.15


execute as @s[scores={move=44}] at @s positioned ^^^15 run playsound mob.burst @a[r=250] ~~~ 999999 0.5 999999
execute as @s[scores={move=39}] at @s positioned ^^^15 run playsound random.explode @a[r=250] ~~~ 999999 0.5 999999
execute as @s[scores={move=39}] at @s positioned ^^^15 run playsound mob.wither.break_block @a[r=250] ~~~ 999999 0.75 999999

execute as @s[scores={move=29}] at @s positioned ^^^15 run playsound mob.shock1 @a[r=250] ~~~ 999999 0.35 999999
execute as @s[scores={move=29}] at @s positioned ^^^15 run playsound random.explode @a[r=250] ~~~ 999999 0.5 999999
execute as @s[scores={move=29}] at @s positioned ^^^15 run playsound mob.wither.break_block @a[r=250] ~~~ 999999 0.35 999999
execute as @s[scores={move=29}] at @s run camerashake add @a[r=500] 1.5 0.15 rotational

execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:large_slam1
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:large_slam2
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:large_slam3
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:ground_pound1b
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:ground_pound2
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:ground_pound3
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:ground_pound4
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:demons_descent1
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:demons_descent2
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:demons_descent3
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:demons_descent4
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:slam_dust1
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:slam_dust2
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:large_dust
execute as @s[scores={move=40}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.blood1 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=40}] at @s positioned ^^^15 run execute as @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.15 99999
execute as @s[scores={move=40}] at @s positioned ^^^15 run execute as @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=40}] at @s positioned ^^^15 run execute as @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=40}] at @s positioned ^^^15 run damage @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 100
execute as @s[scores={move=40}] at @s positioned ^^^15 run scoreboard players set @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Stun 25
execute as @s[scores={move=40}] at @s positioned ^^^15 run scoreboard players set @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5
execute as @s[scores={move=40}] at @s positioned ^^^15 run scoreboard players add @e[r=33,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Evade 25

execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:massive_punch1
execute as @s[scores={move=38..40}] at @s positioned ^^^15 run particle ds:massive_punch2

execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:massive_punch1
execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:massive_punch2
execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:demons_descent1
execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:demons_descent2
execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:demons_descent3
execute as @s[scores={move=28..30}] at @s positioned ^^^15 run particle ds:demons_descent4

execute as @s[scores={move=29}] at @s positioned ^^^15 run particle ds:large_shockwave2
execute as @s[scores={move=29}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.blood1 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=29}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.15 99999
execute as @s[scores={move=29}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=29}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=29}] at @s positioned ^^^15 run damage @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 50
execute as @s[scores={move=29}] at @s positioned ^^^15 run scoreboard players set @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Stun 25
execute as @s[scores={move=29}] at @s positioned ^^^15 run scoreboard players set @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5
execute as @s[scores={move=29}] at @s positioned ^^^15 run scoreboard players add @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Evade 25
execute as @s[scores={move=29}] at @s positioned ^^^15 run effect @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] levitation 1 19 true
execute as @s[scores={move=29}] at @s positioned ^^^15 run execute as @e[r=50,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run summon ds:red_reverse ^^^1





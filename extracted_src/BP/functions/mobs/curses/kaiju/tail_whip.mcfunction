

playanimation @s[scores={move=80..}] animation.kaiju_curse.tail_whip


effect @s[scores={move=80..}] slowness 4 10 true

execute as @s[scores={move=5..}] at @s run tp @s @s


execute as @s[scores={move=33}] at @s run playsound mob.heavy_swing @a[r=150] ~~6~ 9999999 0.75 99999999
execute as @s[scores={move=27}] at @s run camerashake add @a[r=500] 1.5 0.15
execute as @s[scores={move=25..29}] at @s run particle ds:large_slam1
execute as @s[scores={move=25..29}] at @s run particle ds:large_slam2
execute as @s[scores={move=25..29}] at @s run particle ds:large_slam3
execute as @s[scores={move=27}] at @s run particle ds:massive_claw3 ~~6~
execute as @s[scores={move=27}] at @s run particle ds:demons_descent2  ~~6~
execute as @s[scores={move=27}] at @s run particle ds:demons_descent3 ~~6~
execute as @s[scores={move=25..29}] at @s run particle ds:large_dust


execute as @s[scores={move=27}] at @s run execute as @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.blood1 @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=27}] at @s run execute as @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1.87 99999
execute as @s[scores={move=27}] at @s run execute as @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=27}] at @s run execute as @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=27}] at @s run damage @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 50
execute as @s[scores={move=27}] at @s run scoreboard players set @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] knockdown 85
execute as @s[scores={move=27}] at @s run scoreboard players set @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5
execute as @s[scores={move=27}] at @s run scoreboard players add @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Evade 25
execute as @s[scores={move=28}] at @s run effect @e[r=35,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] levitation 1 20 true
execute as @s[scores={move=27}] at @s run summon ds:massive_knockback



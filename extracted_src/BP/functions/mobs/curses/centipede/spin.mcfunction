playanimation @s[scores={move=20..}] animation.centipede.spin
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=10}] at @s run function damages/blunt_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~

scoreboard players set @s[scores={move=8..12}] Frames 4
execute as @s[scores={move=10}] at @s  run scoreboard players set @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] Stun 20
execute as @s[scores={move=10}] at @s  run scoreboard players set @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] Hit 7
execute as @s[scores={move=10}] at @s  run scoreboard players add @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] Evade 30
execute as @s[scores={move=10}] at @s  run damage @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] 14 override entity @s

execute as @s[scores={move=11}] at @s  run playsound mob.wither.shoot @a[r=120] ~~~ 9999 0.95 9999
execute as @s[scores={move=11}] at @s  run playsound mob.blaze.shoot @a[r=120] ~~~ 9999 2.5 9999
execute as @s[scores={move=14}] at @s  run playsound mob.punch @a[r=120] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s  run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=10}] at @s run particle ds:large_slam5
execute as @s[scores={move=10}] at @s run particle ds:large_slam2
execute as @s[scores={move=10}] at @s run particle ds:large_slam3
execute as @s[scores={move=10}] at @s run particle ds:large_sweep
execute as @s[scores={move=10}] at @s  run summon ds:mahoraga_knockback1 ~~~
execute as @s[scores={move=10}] at @s  run effect @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] levitation 1 20 true
execute as @s[scores={move=10}] at @s unless block ~~-1~ bedrock run scoreboard players set @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] knockdown 85
execute as @s[scores={move=10}] at @s if block ~~-1~ bedrock run scoreboard players set @e[r=12,tag=!Frames,family=!purecurse,type=!ds:mahoraga_knockback1] Stun 25
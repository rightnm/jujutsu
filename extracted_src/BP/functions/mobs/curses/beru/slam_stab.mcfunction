playanimation @s[scores={move=50..}] animation.beru.slam_stab
effect @s[scores={move=21..}] slowness 1 4 true

execute as @s[scores={move=15}] at @s run function damages/blunt_damage


execute as @s[scores={move=40..}] at @s run playsound mob.phantom.death @a ~~5~ 999999 1.5 99999
execute as @s[scores={move=40..}] at @s run playsound mob.wither.ambient @a ~~5~ 999999 1.5 99999
execute as @s[scores={move=40..}] at @s run playsound mob.phantom.death @a ~~5~ 999999 0.5 99999
execute as @s[scores={move=40..}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=40..}] at @s run particle ds:ant_scream1 ~~4~
execute as @s[scores={move=40..}] at @s run particle ds:ant_scream2 ~~4~
execute as @s[scores={move=50}] at @s run particle ds:ant_scream3 ~~4~
execute as @s[scores={move=45}] at @s run particle ds:ant_scream3 ~~4~
execute as @s[scores={move=40}] at @s run particle ds:ant_scream3 ~~4~
execute as @s[scores={move=40..}] at @s run particle ds:turbo_intensity4 ~~1~

execute as @s[scores={move=1..}] at @s run tp @s ~~~~ 0

scoreboard players set @s[scores={move=35..36}] atk 2
execute as @s[scores={move=34..35}] at @s  run summon ds:curse_knockback
execute as @s[scores={move=35}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] knock 50
execute as @s[scores={move=35}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Evade 20
execute as @s[scores={move=35}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Hit 5
execute as @s[scores={move=35}] at @s positioned ^^^5 run damage @e[r=4.99,type=!ds:beru_curse,tag=!Frames] 20 override
execute as @s[scores={move=35}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=20] ~~~ 9999 0.75 9999
execute as @s[scores={move=35}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.shock1 @a[r=20] ~~~ 9999 1.75 9999
execute as @s[scores={move=35}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.wither.break_block @a[r=20] ~~~ 9999 0.75 9999
execute as @s[scores={move=35}] at @s positioned ^^^5 run camerashake add @a[r=50] 3 0.35
execute as @s[scores={move=35}] at @s run playsound mob.blackflash @a ~~~ 99999 1.5 99999
execute as @s[scores={move=35}] at @s run playsound mob.blackflash2 @a ~~~ 99999 0.8 99999
execute as @s[scores={move=35}] at @s run summon gg:impact_frame
execute as @s[scores={move=35}] at @s run particle ds:invert ^^^1 
execute as @s[scores={move=35}] at @s run particle ds:ground_pound1 ^^^1 
execute as @s[scores={move=35}] at @s run particle ds:ground_pound2 ^^^1 
execute as @s[scores={move=35}] at @s run particle ds:ground_pound3 ^^^1 
execute as @s[scores={move=35}] at @s run particle ds:ground_pound4 ^^^1 
execute as @s[scores={move=35}] at @s run particle ds:black_flash3 ^^^1
execute as @s[scores={move=35}] at @s run particle ds:black_flash4 ^^^1


execute as @s[scores={move=20}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] knockdown 50
execute as @s[scores={move=20}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Evade 5
execute as @s[scores={move=20}] at @s positioned ^^^5 run scoreboard players set @e[r=4.99,type=!ds:beru_curse,tag=!Frames] Hit 5
execute as @s[scores={move=20}] at @s positioned ^^^5 run damage @e[r=4.99,type=!ds:beru_curse,tag=!Frames] 50 override
execute as @s[scores={move=20}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=20] ~~~ 9999 0.75 9999
execute as @s[scores={move=20}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slash @a[r=20] ~~~ 9999 1.75 9999
execute as @s[scores={move=20}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.slash1 @a[r=20] ~~~ 9999 1.75 9999
execute as @s[scores={move=20}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.wither.hurt @a[r=20] ~~~ 9999 1.75 9999
execute as @s[scores={move=20}] at @s positioned ^^^5 run execute as @e[r=4.99,type=!ds:beru_curse,tag=!Frames] at @s run playsound mob.wither.break_block @a[r=20] ~~~ 9999 0.75 9999
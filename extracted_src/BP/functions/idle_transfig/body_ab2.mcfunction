playanimation @s[scores={move=40..41}] animation.mahito.body_ab2

scoreboard players set @s[scores={move=10..,Move=0..5}] Move 10
scoreboard players set @s[scores={move=10..26,Camera=0..5}] Camera 10

execute as @s[scores={move=12..25}] at @s run tp @s ~~~
execute as @s[scores={move=30}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 0.8 99999
execute as @s[scores={move=27}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 2 99999

execute as @s[scores={move=14}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 0.7 99999
execute as @s[scores={move=40}] at @s run scriptevent ds:leapforwards2
execute as @s[scores={move=40}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~1~ 9999 2 9999
execute as @s[scores={move=40}] at @s run particle ds:bounce
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=40}] at @s run camerashake add @a[r=10] 0.5 0.15

effect @s[scores={move=40}] slow_falling 1 1 true


execute as @s[scores={move=30}] at @s run camera @s set minecraft:free pos ^^10^10 facing ~~1~ 
execute as @s[scores={move=10..12}] at @s run camera @s clear

execute as @s[scores={move=30}] at @s run particle ds:large_impact1 ~~~


execute as @s[scores={move=26}] at @s positioned ^^^4 run execute as @e[scores={strength=51..},type=!player,r=12] at @s run function dashback


execute as @s[scores={move=18..24}] at @s run execute as @e[tag=!Frames,r=10,rm=0.25] at @s run tp @s ~~~ facing @e[scores={move=18..24},c=1]
execute as @s[scores={move=24}] at @s run playsound mob.wither.shoot @a[r=33] ~~1~ 9999 0.75 9999
execute as @s[scores={move=24}] at @s run particle ds:burst_impact ~~1~
execute as @s[scores={move=24}] at @s run  camerashake add @a[r=33] 3 0.25
execute as @s[scores={move=18..24}] at @s run damage @e[tag=!Frames,r=10,rm=0.25] 5 override
execute as @s[scores={move=18..24}] at @s run scoreboard players set @e[tag=!Frames,r=10,rm=0.25] Stun 35
execute as @s[scores={move=18..24}] at @s run scoreboard players add @e[tag=!Frames,r=10,rm=0.25] Evade 2
execute as @s[scores={move=18..24}] at @s run scoreboard players set @e[tag=!Frames,r=10,rm=0.25] Hit 3
execute as @s[scores={move=24}] at @s run execute as @e[tag=!Frames,r=10,rm=0.25] at @s run playsound mob.blood3 @a[r=22] ~~1~ 9999 2 9999
execute as @s[scores={move=23..24}] at @s run execute as @e[tag=!Frames,r=10,rm=0.25] at @s run playsound mob.blood2 @a[r=22] ~~1~ 9999 2 9999
execute as @s[scores={move=24}] at @s run particle ds:curses_energy_hit1_big ~~1~
execute as @s[scores={move=24}] at @s run particle ds:curses_energy_hit2_big ~~1~
execute as @s[scores={move=24}] at @s run particle ds:curses_energy_hit3_big ~~1~
execute as @s[scores={move=24}] at @s run particle ds:curses_energy_hit4_big ~~1~

execute as @s[scores={move=18}] at @s run function damages/slash_damage

execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=!Frames,r=10,rm=0.25] Flourish 3

tag @s[scores={move=0..3}] remove form4

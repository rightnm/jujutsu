playanimation @s[scores={move=36..}] animation.hiten.ab3

tag @s[scores={move=1..2}] remove wep3


scoreboard players set @s[scores={move=1..}] Move 8
scoreboard players set @s[scores={move=25..27}] Frames 8
scoreboard players set @s[scores={move=22..24}] Frames 8

execute as @s[scores={move=27}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=27}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=26}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=26}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=26}] at @s run playsound mob.wind @a[r=25] ~~~ 9999 1.17 9999
execute as @s[scores={move=24..26}] at @s run camerashake add @a[r=10] 1.5 0.17
execute as @s[scores={move=24..26}] at @s run scoreboard players set @e[tag=!Frames,r=7] Stun 20
execute as @s[scores={move=24..26}] at @s run scoreboard players set @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=24..26}] at @s run scoreboard players add @e[tag=!Frames,r=7] Evade 3
execute as @s[scores={move=24..26}] at @s run damage @e[tag=!Frames,r=7] 10 override
execute as @s[scores={move=25}] at @s run particle ds:whirlwind1
execute as @s[scores={move=25}] at @s run particle ds:whirlwind2
execute as @s[scores={move=25}] at @s run particle ds:whirlwind3
execute as @s[scores={move=25}] at @s run particle ds:whirlwind4
execute as @s[scores={move=25}] at @s run particle ds:whirlwind5
execute as @s[scores={move=25}] at @s run particle ds:whirlwind6

execute as @s[scores={move=23..25}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=18..20}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=18}] at @s run particle ds:hiten_stars
execute as @s[scores={move=24}] at @s run particle ds:hiten_stars


execute as @s[scores={move=24..26}] at @s run execute as @e[tag=!Frames,r=7] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=24..26}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.sword @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=26}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.blood @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=26}] at @s run execute as @e[tag=!Frames,r=7] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=25}] at @s run scoreboard players operation @e[tag=!Frames,r=7] damagehalf += @s damage

execute as @s[scores={move=20..24}] at @s run  execute as @e[tag=!Frames,r=7,scores={Hit=1..}] at @s run tp @s ~~~ facing @e[hasitem={item=ds:hiten},scores={move=20..24},c=1]

execute as @s[scores={move=22}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=22}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=19}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=19}] at @s run playsound mob.wind @a[r=25] ~~~ 9999 1.17 9999
execute as @s[scores={move=17..19}] at @s run camerashake add @a[r=10] 1.5 0.17
execute as @s[scores={move=17..19}] at @s run scoreboard players set @e[tag=!Frames,r=7] Stun 20
execute as @s[scores={move=17..19}] at @s run scoreboard players set @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=17..19}] at @s run scoreboard players add @e[tag=!Frames,r=7] Evade 3
execute as @s[scores={move=17..19}] at @s run scoreboard players add @e[tag=!Frames,r=7] Flourish 3
execute as @s[scores={move=17..19}] at @s run damage @e[tag=!Frames,r=7] 14 override
execute as @s[scores={move=18}] at @s run particle ds:whirlwind1
execute as @s[scores={move=18}] at @s run particle ds:whirlwind2
execute as @s[scores={move=18}] at @s run particle ds:whirlwind3
execute as @s[scores={move=18}] at @s run particle ds:whirlwind4
execute as @s[scores={move=18}] at @s run particle ds:whirlwind5
execute as @s[scores={move=18}] at @s run particle ds:whirlwind6
execute as @s[scores={move=17..19}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.sword @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=19}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.blood @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=19}] at @s run execute as @e[tag=!Frames,r=7] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=18}] at @s run scoreboard players operation @e[tag=!Frames,r=7] damagehalf += @s damage

